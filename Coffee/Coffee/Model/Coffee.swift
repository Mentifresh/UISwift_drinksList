//
//  Coffee.swift
//  Coffee
//
//  Created by Catalina Beta on 27/06/2019.
//  Copyright © 2019 Catalina Beta. All rights reserved.
//

import SwiftUI

struct Coffee: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var imageName: String
    var category: Category
    var description: String
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case hot = "hot"
        case cold = "cold"
    }
}
