//
//  CoffeeItem.swift
//  Coffee
//
//  Created by Catalina Beta on 27/06/2019.
//  Copyright © 2019 Catalina Beta. All rights reserved.
//

import SwiftUI

struct CoffeeItem : View {
    
    var coffee: Coffee
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 16.0) {
            Image(coffee.imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 170)
                .cornerRadius(10)
                .shadow(radius: 10)
            
            VStack(alignment: .leading, spacing: 5.0) {
                Text(coffee.name)
                    .color(.primary)
                    .font(.headline)
                
                Text(coffee.description)
                    .font(.subheadline)
                    .color(.secondary)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .frame(height: 40)
            }
            
        }
        
    }
}

#if DEBUG
struct CoffeeItem_Previews : PreviewProvider {
    static var previews: some View {
        CoffeeItem(coffee: coffeeData[0])
    }
}
#endif
