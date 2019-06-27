//
//  ContentView.swift
//  Coffee
//
//  Created by Catalina Beta on 27/06/2019.
//  Copyright © 2019 Catalina Beta. All rights reserved.
//

import SwiftUI

struct Home : View {
    
    var categories: [String: [Coffee]] {
        .init(
            grouping: coffeeData,
            by: {$0.category.rawValue}
        )
    }
    
    var body: some View {
        
        NavigationView {
            List(categories.keys.sorted().identified(by: \String.self)) { key in
                
                CoffeeRow(categoryName: "\(key) Drinks".uppercased(), coffees: self.categories[key]!)
                    .frame(height: 320)
                    .padding(.top)
                    .padding(.bottom)
                
            }.navigationBarTitle( Text("Drinks db".uppercased()) )
        }
    }
}

#if DEBUG
struct Home_Previews : PreviewProvider {
    static var previews: some View {
        Home()
    }
}
#endif
