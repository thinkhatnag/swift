import SwiftUI
import Foundation


struct TodoItem: Identifiable, Hashable, Codable  {
    var id = UUID()
    var title: String
    var detail: String
    init(id: UUID = UUID(), title: String, detail: String) {
           self.id = id
           self.title = title
           self.detail = detail
       }
   }


struct AddItemSheet: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var title = ""
    @State private var detail = ""
    
    var onAdd: (TodoItem) -> Void
    
    var body: some View {
        HStack {
                       Spacer()
                       Button(action: {
                           dismiss()
                       }) {
                           Image(systemName: "xmark")
                               .font(.title3)
                               .padding(6)
                               .clipShape(Circle())
                       }
                   }
        VStack(spacing: 20) {
            Text("Add New Item")
                .font(.title)
            
            TextField("Enter title", text: $title)
                .textFieldStyle(.roundedBorder)
            
            TextField("Enter detail", text: $detail)
                .textFieldStyle(.roundedBorder)
            
            Button("Save") {
                if !title.isEmpty {
                    onAdd(TodoItem(title: title, detail: detail))
                    dismiss()
                }
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(8)
            
            Spacer()
        }
        .padding()
    }
}

struct ItemDetailSheet: View {
    @Environment(\.dismiss) var dismiss
    
    var item: TodoItem
    var onDelete: () -> Void
    
    @State private var showDelete = false
    
    var body: some View {
        HStack {
                       Spacer()
                       Button(action: {
                           dismiss()
                       }) {
                           Image(systemName: "xmark")
                               .font(.title3)
                               .padding(6)
                               .clipShape(Circle())
                       }
                   }
        VStack(spacing: 20) {
            Text(item.title)
                .font(.largeTitle)
            
            Text(item.detail)
                .font(.body)
                .padding()
            
            if !showDelete {
                Button("Done") {
                    showDelete = true
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
            } else {
                Button("Delete") {
                    onDelete()
                    dismiss()
                }
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(8)
            }
            
            Spacer()
        }
        .padding()
    }
}



struct ContentView: View {
    @State private var items: [TodoItem] = UserDefaults.standard.loadItems()
    @State private var showAddSheet = false
    @State private var selectedItem: TodoItem?
    
    
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            
            VStack {
                Color.blue
                    .frame(maxWidth: .infinity)
                    .frame(height: 135)
                    .overlay(
                        VStack(alignment: .leading) {
                            Text("Welcome to")
                                .font(.title)
                                .foregroundColor(.white)
                            
                            Text("TODO app")
                                .font(.title)
                                .foregroundColor(.white)
                        }
                            .padding(.leading, 20),
                    )
                Image("Image")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 300)
                    .padding(.leading, 20)
                
                
                Button(action: {
                    showAddSheet = true
                }) {
                    Text("Add")
                        .font(.title)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                }
                
                
                
                ScrollView(.vertical) {
                    VStack(alignment: .leading, spacing: 12) {
                        ForEach(items, id: \.self) { item in
                            Text(item.title)
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(.black.opacity(0.2))
                                .cornerRadius(10)
                                .onTapGesture {
                                    selectedItem = item // open detail view
                                }
                        }
                        
                    }
                    .padding()
                    
                    
                }
                
            }
        }
        .sheet(isPresented: $showAddSheet) {
            AddItemSheet { newItem in
                items.append(newItem)
                UserDefaults.standard.saveItems(items) // immediate save
                showAddSheet = false
                
            }
        }
        .sheet(item: $selectedItem) { item in
            ItemDetailSheet(item: item) {
                items.removeAll { $0.id == item.id }
                UserDefaults.standard.saveItems(items)
                selectedItem = nil
                
            }
        }
        .onChange(of: items) { newValue in
            UserDefaults.standard.saveItems(newValue)
        }
    }
}
    
    #Preview {
        ContentView()
    }
    
    

