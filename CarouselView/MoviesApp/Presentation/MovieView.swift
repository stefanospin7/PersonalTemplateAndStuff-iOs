//
//  MovieView.swift
//  MoviesApp
//
//  Created by stefano.spinelli on 15/09/22.
//

import SwiftUI

struct MovieView: View {
    
    @State var currentIndex: Int = 0
    @State var posts:[Post] = []
    
    var body: some View {
        NavigationView{
            VStack{
                HStack {
                    Text("Title")
                    
                    Spacer()
                    Image(systemName: "magnifyingglass")
                }.padding()
                    .font(.title)
                    .fontWeight(.heavy)
                
                Spacer()
                //customization
                //Customizing dimension and spacing
                
                // SnapCarousel(trailingSpace:150,index: $currentIndex, items: posts)
                SnapCarousel(spacing:30,index: $currentIndex, items: posts) { post  in
                    
                    GeometryReader{proxy in
                        let size = proxy.size
                        
                        //customization
                        Image(post.postImage)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: size.width)
                            .cornerRadius(12)
                        
                        
                    }
                }
                //customization
                .padding(.vertical, 40)
                
                
            }.onAppear{
                
                for index in 1...5{
                    
                    posts.append(Post(postImage: "post\(index)"))
                    
                }
                
            }
            
        }
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView()
    }
}
