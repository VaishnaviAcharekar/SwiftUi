//
//  HomeScreen.swift
//  fruitShopp
//
//  Created by user on 06/07/23.
//

import SwiftUI

struct HomeScreen: View {
    @State var valueTxt : String = ""
    
    var body: some View {
        
//        NavigationView{
            
        ZStack {
            VStack(alignment: .leading, spacing: 10){
                  
                    HStack{
                        Image(systemName: "line.3.horizontal")
                        
                        Spacer()
                        
                        Image(systemName: "cart.fill.badge.plus")
                        
                    }
                    
                    
                    Text("Hey")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("Find fresh fruit that you want")
                        .font(.body)
                        .fontWeight(.regular)
                    
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 350, height: 60)
                        .foregroundColor(Color.gray.opacity(0.4))
                        .overlay(
                            HStack(spacing : 10){
                                Image(systemName: "magnifyingglass")
                                    
                                TextField(LocalizedStringKey("Search fresh fruit"),  text: $valueTxt )
                                    .foregroundColor(.black)
                                Spacer()
                                    
                            }.padding()
                        ).frame(width: 350, height: 50, alignment: .center)
                    
                    Text("Top Selling")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                    
                    topSellingView()
                    
                    NearYoyView()
                    
                    
                }
                .padding()
                .navigationTitle("")
                .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
//        }
        
        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
