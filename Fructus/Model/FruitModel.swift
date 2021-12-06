//
//  FruitModel.swift
//  Fructus
//
//  Created by Rashid on 06/12/21.
//

import SwiftUI

struct FruitModel: Identifiable{
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors :[Color]
    var description: String
    var nutrition: [String]
    
}
