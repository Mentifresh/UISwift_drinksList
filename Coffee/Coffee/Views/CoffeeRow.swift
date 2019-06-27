//
//  CoffeeRow.swift
//  Coffee
//
//  Created by Catalina Beta on 27/06/2019.
//  Copyright © 2019 Catalina Beta. All rights reserved.
//

import SwiftUI

struct CoffeeRow : View {
    
    var categoryName: String
    var coffees: [Coffee]
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text(self.categoryName)
                .font(.title)
            
            ScrollView(showsHorizontalIndicator: false) {
                HStack(alignment: .top) {
                    ForEach (self.coffees.identified(by: \.name)) { coffee in
                        
                        NavigationButton(destination: CoffeeDetail(coffee: coffee)) {
                            CoffeeItem(coffee: coffee)
                                .frame(width: 300)
                                .padding(.trailing, 30)
                        }
                    }
                }
            }
        }
        
    }
}

#if DEBUG
struct CoffeeRow_Previews : PreviewProvider {
    static var previews: some View {
        CoffeeRow(categoryName: "HOT DRINKS", coffees: coffeeData)
    }
}
#endif
