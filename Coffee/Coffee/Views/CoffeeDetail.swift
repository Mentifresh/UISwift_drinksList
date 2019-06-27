//
//  CoffeeDetail.swift
//  Coffee
//
//  Created by Catalina Beta on 27/06/2019.
//  Copyright © 2019 Catalina Beta. All rights reserved.
//

import SwiftUI

struct CoffeeDetail : View {
    
    var coffee: Coffee
    
    var body: some View {
        
        List {
            ZStack(alignment: .bottom) {
                Image(coffee.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                    Rectangle()
                        .frame(height: 80)
                        .opacity(0.25)
                        .blur(radius: 10)
                
                        HStack {
                            VStack(alignment: .leading, spacing: 8) {
                                Text(coffee.name)
                                    .color(.white)
                                    .font(.largeTitle)
                            }
                            .padding(.leading)
                            .padding(.bottom)
                            
                            Spacer()
                        }
                }.listRowInsets(EdgeInsets())
            
                VStack(alignment: .leading) {
                    Text(coffee.description)
                        .color(.primary)
                        .font(.body)
                        .lineLimit(nil)
                        .lineSpacing(12)
                    
                    HStack {
                        Spacer()
                        OrderButton()
                        Spacer()
                    }.padding(.top, 50)
                     
                }
                .padding(.top)
                .padding(.bottom)
            
            }
            .edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
    
    }
}

struct OrderButton: View {
    var body: some View {
        
        Button(action: {}) {
            Text("Order Now")
        }
        .frame(width: 200, height: 50)
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(10)
        .font(.headline)
        
    }
}

#if DEBUG
struct CoffeeDetail_Previews : PreviewProvider {
    static var previews: some View {
        CoffeeDetail(coffee: coffeeData[1])
    }
}
#endif
