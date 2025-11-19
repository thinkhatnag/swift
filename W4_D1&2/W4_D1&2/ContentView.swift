

import SwiftUI

struct ContentView: View {
        var body: some View {
            // The Card Container
            VStack(spacing: 20) {
                
                // 1. Avatar Section (ZStack for the Online Indicator)
                ZStack(alignment: .bottomTrailing) {
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.gray)
                    
                    // The Green Dot
                    Circle()
                        .strokeBorder(Color.white, lineWidth: 3)
                        .background(Circle().fill(Color.green))
                        .frame(width: 30, height: 30)
                        .offset(x: 5, y: 5)
                }
                
                // 2. Text Info (VStack for vertical alignment)
                VStack(spacing: 5) {
                    Text("Alex Draconis")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    
                    Text("Lead iOS Architect")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
                // 3. Stats Row (HStack for horizontal alignment)
                HStack(spacing: 40) {
                    statView(label: "Projects", value: "42")
                    statView(label: "Followers", value: "12k")
                    statView(label: "Rating", value: "5.0")
                }
                .padding(.top, 10)
                
                // 4. Action Button
                Button(action: {
                    print("Hired")
                }) {
                    Text("Hire Now")
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity) // Takes full width available
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
            }
            .padding(30) // Padding inside the card
            .background(Color("CardBackground")) // Use asset colors for Dark Mode support
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 10)
            .padding() // Padding outside the card (so it doesn't touch screen edges)
        }
        
        // Helper function to keep code DRY (Don't Repeat Yourself)
        // Use @ViewBuilder if you get advanced, but this works for simple subviews.
        func statView(label: String, value: String) -> some View {
            VStack {
                Text(value)
                    .font(.headline)
                    .fontWeight(.bold)
                Text(label)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
    }



#Preview {
    ContentView()
}
