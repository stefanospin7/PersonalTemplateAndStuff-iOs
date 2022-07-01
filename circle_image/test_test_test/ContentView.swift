//
//  ContentView.swift
//  test_test_test
//
//  Created by Stefano Spinelli on 04/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("homer")
            .resizable()
            .aspectRatio(contentMode: ContentMode.fill)
            .frame(width: 200, height: 200)
            .clipped()
            .clipShape(Circle())
            .overlay(
                //Rectangle()
                Circle()
                    .stroke(Color.blue, lineWidth: 7))
            .shadow(radius: 60)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
