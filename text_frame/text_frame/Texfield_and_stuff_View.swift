//
//  Texfield_and_stuff_View.swift
//  text_frame
//
//  Created by Stefano Spinelli on 04/05/22.
//

import SwiftUI

struct Texfield_and_stuff_View: View {
    
    @State var username: String = ""
    
    @State var password: String = ""
    
    @State var textEditor: String = ""
    
    var body: some View {
        
        VStack{
        
        TextField(
            "User name",
            text: $username
        )
        .disableAutocorrection(true)
        .autocapitalization(.none)
        .padding()
        .border(Color.orange,width: 1)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .textContentType(.username)
        
        .padding()
        
        SecureField("Inserisci la password", text: $password)
            .padding()
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .textContentType(.password)
            
            .padding()
            
            
            
        

        
        TextEditor(text: $textEditor)
            .padding()
            .frame(width: 250, height: 350)
            .border(Color.blue, width: 4)
            
            
            
            
            //*****. if you want to delete the default backround put this under ContentView: ****
            
           //     init() {
       //   UITextView.appearance().backgroundColor = .clear
     // }
            
               TextEditor(text: $textEditor)
                .background(Color.black)
                     .foregroundColor(.green)
                     .padding()
            
            //to have some rounded frame
            .overlay(
                          RoundedRectangle(cornerRadius: 20)
                              .stroke(Color.white, lineWidth: 2)
                      )
            
            
            
            
            
            
            
            
        }
    }
}

struct Texfield_and_stuff_View_Previews: PreviewProvider {
    static var previews: some View {
        Texfield_and_stuff_View()
    }
}
