
import SwiftUI

struct ContentView: View {
    var body: some View {
  
            ZStack {
            
                    Circle()
                        .frame(width: 350, height: 350)
                        .foregroundColor(.gray)
                    Circle()
                        .frame(width: 300, height: 300)
                        .foregroundColor(.white)
                Circle()
                    .frame(width: 270, height: 270)
                    .foregroundColor(Color(red: 143/255, green: 225/255, blue: 215/255))

               
                ForEach(0..<12) { tick in
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: 10, height: 20)
                        .offset(y: 125)
                        .rotationEffect(.degrees(Double(tick) * 30))
                }
                Rectangle()
                    .fill(.black)
                    .frame(width: 15, height: 80)
                    .cornerRadius(10)
                    .offset(y: -35)
                    .rotationEffect(.degrees(00))
                Rectangle()
                    .fill(.black)
                    .frame(width: 10, height: 100)
                    .cornerRadius(5)
                    .offset(y: -50)
                    .rotationEffect(.degrees(310))
                Circle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.gray)


            }
        }
    }


#Preview {
    ContentView()
}
