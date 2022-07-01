//
//  horizontal_Slider.swift
//  Slider
//
//  Created by Stefano Spinelli on 04/05/22.
//

import SwiftUI

struct horizontal_Slider: View {
    
    
    @State var selection : String = "A"
    var body: some View {
        Picker(
            selection: $selection ,
            label: Text("Picker"),
            content: {
                Text("A").tag("A")
                Text("B").tag("B")
                Text("C").tag("C")
                Text("D").tag("D")
                
                
            }) //picker style
            .foregroundColor(.black)
//            .pickerStyle(DefaultPickerStyle())
//            .pickerStyle(InlinePickerStyle())
//            .pickerStyle(MenuPickerStyle())
            .pickerStyle(WheelPickerStyle())
        
        
    }
}

struct horizontal_Slider_Previews: PreviewProvider {
    static var previews: some View {
        horizontal_Slider()
    }
}
