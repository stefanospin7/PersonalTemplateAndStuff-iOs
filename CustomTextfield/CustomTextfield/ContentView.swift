//
//  ContentView.swift
//  CustomTextfield
//
//  Created by Stefano  on 01/07/22.
//

import SwiftUI



struct ContentView: View {
    
    @State var userText: String = ""
    @State var userTextEditor: String = ""
    
    
    var body: some View {
        
        VStack{
        TextField("Write here", text: $userText).extensionTextFieldView(roundedCornes: 6, startColor: .gray, endColor: .white)
            .foregroundColor(.black)
            .padding()
        
        TextEditor(text: $userTextEditor)
            .padding()
            .frame(height: 350)
            .border(Color.gray, width: 4)
            .padding()
        
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
