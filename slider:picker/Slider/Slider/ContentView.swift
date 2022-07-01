//
//  ContentView.swift
//  Slider
//
//  Created by Stefano Spinelli on 13/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        SliderView()
    }
}

///IGNORE SAFE AREA

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SliderView:View {
    
    //Altezza dello slider in base a schermo
    @State var maxHeight:CGFloat = UIScreen.main.bounds.height/3
    
    //Proprietà slider
    
    @State var progress:CGFloat = 0
    @State var numberH:CGFloat =  UIScreen.main.bounds.height/3 * 40 / 100
    @State var lastOne:CGFloat = 0
    
    
    var body: some View {
        
        NavigationView{
            VStack {
                
                ZStack(alignment: .bottom, content: {
                    Rectangle()
                        .fill(Color.blue.opacity(0.3))
                    
                    Rectangle()
                        .fill(Color.red.opacity(1))
                        .frame(height: numberH, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                })
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: maxHeight, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)//in caso togliere allineamento
                .cornerRadius(20)
                .gesture(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Gesture@*/LongPressGesture()/*@END_MENU_TOKEN@*/)
                
                
            }//Vstack slider
            .frame(maxWidth: .infinity, maxHeight: .infinity)

        }
    }
    
}
