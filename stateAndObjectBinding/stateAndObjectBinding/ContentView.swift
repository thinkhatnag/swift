

import SwiftUI

struct ContentView: View {
    
    //       @State var isAuthenticated: Bool = false       //here if we did not used the @state and binding to make the object or data to be modified in the view.
    //
    //        var body: some View {
    //            Button(action: {
    //                self.isAuthenticated.toggle()})
    //            {
    //                Text("Toggle authentication")
    //            }
    //        }
    //    }
    //
    //            struct ContentView_Previews: PreviewProvider {
    //                static var previews: some View {
    //                    ContentView()
    //                }
    //            }
    //
    //
    //
    
    
    
    
    //     refrsh the state by button click
    // @State var relodeCount = 0 // Here we want to mention that @State allows to update/modify the property in the struct bcz by default struct properties are immutable.
    //    var body: some View {
    //        Button(action: {
    //            self.relodeCount += 1})
    //        {
    //           return Text("Welcome to IOS Learning Program \(relodeCount)")
    //        }
    //    }
    
    
    //}
    
    
    
    
    
    //     refrsh the state by button click
    @State var relodeCount = 0
    @State var relode = 0// Here we want to mention that @State allows to update/modify the property in the struct bcz by default struct properties are immutable.
    var body: some View {
        
        VStack{
            Button(action: {
                self.relodeCount += 1})
            {
                
                return Text("Welcome to IOS Learning Program \(relodeCount)")
            }
            
            Button(action: {
                self.relode -= 2})
            {
                return Text("IOS Learning Program \(relodesB)")
            }
        }
    }
}
    

        
    

    
    
    
    
    
    

