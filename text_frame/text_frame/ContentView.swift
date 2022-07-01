//
//  ContentView.swift
//  text_frame
//
//  Created by Stefano Spinelli on 15/04/22.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        

        
        ZStack {
                   Rectangle()
                    .fill(Color.blue)
                    .opacity(0.5)
                       .frame(width: 200, height: 200)
                    .cornerRadius(50)
                    .shadow(color: .black, radius: 2)
                    .padding()
            
      

                   Text("Your desired text")
                    .font(.headline)
                       //.border(Color.pink)
                       .frame(maxWidth: .infinity)
                    .background(LinearGradient(gradient: Gradient(colors: [.red, .white]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .opacity(1)
                    //.border(Color.black)
                    .cornerRadius(20)
                    .shadow(color: .black, radius: 2)
                    .padding()
            
        
            
            
            
               }
        
        
       
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
