//
//  onBoardingScreenView.swift
//  fruitShopp
//
//  Created by user on 06/07/23.
//

import SwiftUI

struct onBoardingScreenView: View {
    var body: some View {
        
        NavigationView{
            
            VStack(spacing: 30){

                Image("img")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    
                VStack(alignment: .leading, spacing: 10){
                    
                    Text("Order Your Favourite Fruits")
                        .font(.system(.largeTitle))
                        .fontWeight(.bold)
                    
                    Text("Eat fresh fruit and try to be healthy")
                        .font(.system(.title3))
                        .foregroundColor(.black).opacity(0.7)
                }
                
                
                NavigationLink {
                    HomeScreen()
                } label: {
                    Rectangle()
                        .frame(width: 220, height: 60, alignment: .center)
                        .foregroundColor(Color("6"))
                        .cornerRadius(10)
                        .overlay(
                            HStack{
                                Text("Next")
                                    .font(.system(size: 25))
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.black)
                            }
                                 
                        )
                }

                    
                
            }
           
        }
        .navigationBarHidden(true)
        .navigationBarTitle("")
        .navigationBarBackButtonHidden(true)
    
        
    }
}

struct onBoardingScreenView_Previews: PreviewProvider {
    static var previews: some View {
        onBoardingScreenView()
    }
}
