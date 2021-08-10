//
//  Product.swift
//  Gallo-SwiftUI
//
//  Created by Danny on 10/08/2021.
//

import Foundation
struct Product {
    let title : String
    let image : String
    let content : String
    
    static func getProduct() -> Product {
      let  product = Product(title: "Geometry 3D Elements", image: "image1", content: "Hold up a rectangular piece of paper and ask all the favorite students")
        return product;
    }
    
}
