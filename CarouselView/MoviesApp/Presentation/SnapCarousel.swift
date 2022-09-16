//
//  SnapCarousel.swift
//  MoviesApp
//
//  Created by stefano.spinelli on 15/09/22.
//


import SwiftUI

struct SnapCarousel<Content:View,T: Identifiable >: View {
    
    
    var content: (T) -> Content
    var list: [T]
    
    var spacing: CGFloat
    var trailingSpace: CGFloat
    @Binding var index: Int
    
    init(spacing: CGFloat = 15, trailingSpace: CGFloat = 100, index: Binding<Int>, items:[T],@ViewBuilder content: @escaping (T)-> Content){
        
        self.list = items
        self.spacing = spacing
        self.trailingSpace = trailingSpace
        self._index = index
        self.content = content
        
        
    }
    
    //Offset
    @GestureState var offset: CGFloat = 0
    @State var currentIndex: Int = 0
    
    var body: some View{
        
        GeometryReader{proxy in
            
            // Setting corrent Width for snap Carousel....
            //Questo allinea bene a destra ad ogni scorrimento
            let width = proxy.size.width - (trailingSpace - spacing)
            let adjustmentWidth = (trailingSpace / 2) - spacing
            
   
            
            HStack(spacing:spacing){
                
                ForEach(list){item in
                    
                    content(item)
                        .frame(width: proxy.size.width - trailingSpace)
                    
                }
                
                
            }
            .padding(.horizontal,spacing)
            .offset(x: (CGFloat(currentIndex) * -width) + (currentIndex != 0 ? adjustmentWidth : 0) + offset )
            .gesture(
                     DragGesture()
                .updating($offset, body: {value,out, _ in
                    
                    
                    out = value.translation.width
                    
                })
                .onEnded({value in
                    //update the index
                    
                    let offsetX = value.translation.width
                    //rounding the value of index based on the progress
                    
                    let progress = -offsetX / width
                    
                    let roundIndex = progress.rounded()
                    
                    //setting the min and max   (progress limit)
                    
                    currentIndex = max(min(currentIndex + Int(roundIndex), list.count - 1), 0)
                    
                    //update the index
                    
                    currentIndex = index
                    
                }   )
                .onChanged({value in
                    
                    
                    let offsetX = value.translation.width
                    //rounding the value of index based on the progress
                    
                    let progress = -offsetX / width
                    
                    let roundIndex = progress.rounded()
                    
                    //setting the min and max   (progress limit)
                    
                    index = max(min(currentIndex + Int(roundIndex), list.count - 1), 0)
                    
                
                    
                
                    
                })
            )
        }
        //animazion per lo scorrimento
        .animation(.easeOut, value: offset == 0)
    }
    
}

struct SnapCarousel_Previews: PreviewProvider {
    static var previews: some View {
        //ContentView()
        MovieView()
    }
}
