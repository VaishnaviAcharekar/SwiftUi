//
//  detailView.swift
//  fruitShopp
//
//  Created by user on 06/07/23.
//

import SwiftUI


struct roundedrectangle : Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
    
    let corners: UIRectCorner
    let radius : CGFloat
}

struct counter : View {
   
     @State var count = 0
    
    var body: some View {
        HStack(alignment: .center, spacing: 25){
            
            Button {
                count += 1
            } label: {
                
                Image(systemName: "plus")
            }
            
            Text("\(count)")
                .font(.title)
            
            Button {
                if count != 0 {
                    count -= 1
                }
            } label: {
                Image(systemName: "minus")
            }
  
        }
        .foregroundColor(.black)
        .frame(width: 130, height: 40)
        .background(Color("6"))
        .cornerRadius(10)
      
        
    }
    
    
    
}


struct detailView: View {
    @State var fruit : fruitTitle
    var body: some View {
        
        VStack(alignment: .leading, spacing: 25){
            Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(.top)
                .clipShape(roundedrectangle(corners: [.bottomLeft, .bottomRight], radius: 50))
                .frame(width: .infinity, height: 250, alignment: .top)
                .shadow(color: .gray, radius: 5, x: 5, y: 5)
                .overlay(
                    Image("\(fruit.rawValue)")
                        .resizable()
                        .frame(width: 150, height: 150, alignment: .center)
                        .offset(y: 90)
                        .shadow(color: .gray, radius: 5, x: 5, y: 5)
                
                )
            
            Spacer()
            
            Text("\(fruit.rawValue) - Medium")
                .font(.system(.title))
                .fontWeight(.bold)
                .padding(.horizontal)
                .textCase(.uppercase)
            
            Text("each 500g - 700g")
                .padding(.horizontal)
             
            
            Text("oragnic agricultur intede to produce high quality , nutricious food that contributes to preventive health care and well being. In view of this, it avoid the view of fertilizers pesticides animals and drugs and food additives that may have adverse health effrct. ")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.leading)
                .lineLimit(5)
                .padding(.horizontal)
            
            HStack{
                 RoundedRectangle(cornerRadius: 10)
                    .frame(width: 60, height: 60)
                    .foregroundColor(Color("6"))
                    .overlay(Image(systemName: "hourglass")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30, alignment: .center)
                        .foregroundColor(.black)
                        
                    )
                VStack(alignment: .leading, spacing: 5){
                    Text("Delivery Time")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                    
                    Text("25 - 30 min")
                        .font(.subheadline)
                    
                }
            }
            .padding(.horizontal)
            
            HStack(spacing: 20){
                
                Text("$ 1.99")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
                
                counter()
                
                
            }
            .padding()
                
            Button {
                print("call")
            } label: {
              RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color("bgColor"))
                    .frame(width: 350, height: 50, alignment: .center)
                    .overlay(Text("Add to cart")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        )
             
            }
            .padding(.horizontal)
            

            
            
            
            
        }
        
        
        
    }
}

struct detailView_Previews: PreviewProvider {
    static var previews: some View {
        detailView(fruit: .apple)
    }
}
