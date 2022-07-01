//
//  ContentView.swift
//  Button_custom
//
//  Created by Stefano Spinelli on 16/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Group{
 
            
            
            Button(action: {
                print("tapped!")
            }, label: {
                Text("Successivo")
                    .foregroundColor(.white)
                    .frame(width: 200, height: 40)
                    .background(Color.green)
                    .cornerRadius(15)
                    .padding()
            })
        }.frame(maxHeight: .infinity, alignment: .bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
