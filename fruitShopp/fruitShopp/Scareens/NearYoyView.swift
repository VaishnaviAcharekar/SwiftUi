//
//  NearYoyView.swift
//  fruitShopp
//
//  Created by user on 07/07/23.
//

import SwiftUI

struct NearYoyView: View {
    
    let places : [PlacesModel] = [
        .init(id: 0, name: "Food 365 Valley", Time: "9:00 - 10:00", rating: "★ 4.7 |📍 1.5 km", image: "1"),
        .init(id: 1, name: "Super Store", Time: "8:00 - 10:00", rating: "★ 4.5 |📍 1.7 km", image: "2"),
        .init(id: 2, name: "Organic Farm", Time: "6:00 - 11:00", rating: "★ 4.9 |📍 2.0 km", image: "3"),
        .init(id: 3, name: "Big Basket", Time: "9:00 - 10:00", rating: "★ 3.7 |📍 2.2 km", image: "4"),
        .init(id: 4, name: "Easy Mart", Time: "8:00 - 12:00", rating: "★ 4.7 |📍 2.7 km", image: "5"),
        .init(id: 5, name: "Let's Shop", Time: "7:00 - 11:00", rating: "★ 4.0 |📍 3.0 km", image: "6")
    ]
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            Text("Near You")
                .font(.system(size: 30))
                .fontWeight(.bold)
            
            ScrollView(.vertical, showsIndicators: false){
                ForEach(places, id: \.id) { post in
                    HStack(spacing: 20){
                     
                       RoundedRectangle(cornerRadius: 10)
                            .frame(width: 100, height: 100)
                            .foregroundColor(.gray.opacity(0.3))
                            .overlay(
                                Image("\(post.image)")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            
                            )
                        
                        VStack(alignment: .leading, spacing: 5){
                         Text("\(post.name)")
                             .font(.title3)
                             .fontWeight(.bold)
                             .foregroundColor(.black)
                         
                         Text("\(post.Time)")
                                .font(.body)
                             .foregroundColor(.gray)
                         
                         Text("\(post.rating)")
                             .font(.title3)
                             .fontWeight(.regular)
                             .foregroundColor(.black)
                         
                     }
                       
                    }
                    .padding(.vertical)
                    
                }
                
                
                
            }
            
            
            
        }
        
        
        
    }
}

struct NearYoyView_Previews: PreviewProvider {
    static var previews: some View {
        NearYoyView()
    }
}
