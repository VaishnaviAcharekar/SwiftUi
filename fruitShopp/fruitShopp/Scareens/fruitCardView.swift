//
//  fruitCardView.swift
//  fruitShopp
//
//  Created by user on 06/07/23.
//

import SwiftUI

let image : fruitModel = fruitModel(id: 1, title: .apple, image: "apple", price: "3.44$", color: "1")

struct fruitCardView: View {
    let fruits : fruitModel
    
    var body: some View {
    
        ZStack{
            VStack(alignment: .leading, spacing: 5){
                Text(fruits.title.rawValue)
                    .fontWeight(.bold)
                    .font(.system(.title3))
                    .foregroundColor(.black)
                
                Text(fruits.price)
                    .font(.system(.title3))
                    .foregroundColor(.black)
                
                Spacer()
                
            }
            .padding()
            .frame(width: 175, height: 150, alignment: .center)
            .background(Color(fruits.color))
            .cornerRadius(30)
            .padding()
            .shadow(color: .gray,radius: 5, y: 10)
           
            ZStack{
                Image(fruits.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 110)
                
            }
            .offset(y: 70)
            
        }
        .frame(width: 175, height: 250, alignment: .center)
        
    }
}

struct fruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        fruitCardView(fruits : image)
    }
}
