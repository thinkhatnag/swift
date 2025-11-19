import SwiftUI

struct ContentView: View {
    @State private var likes = 0
    
    var body: some View {
        ZStack {
            Color.blue
                
            VStack(spacing: 30) {
                // Title Text
                Text("No Tomorrow !?@")
                    .font(.largeTitle)
                    .bold()
                // Image
                Image("myPic")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .shadow(radius: 10)
                Text("Likes: \(likes)")
                    .font(.title2)
                    .foregroundColor(.blue)
                
                Button(action: {
                    likes += 1
                }) {
                    Text("Like")
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                        .padding(.horizontal)
                }
                Button(action: {
                    likes -= 1
                }) {
                    Text("Dislike")
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                        .padding(.horizontal)
                }
            }
            .padding()
        }
    }
}

