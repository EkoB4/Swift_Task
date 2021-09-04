//
//  fruitView.swift
//  listTask
//
//  Created by VB on 2.09.2021.
//

import SwiftUI

struct fruitView: View {
    var fruits = [
    fruitsTypes(Fruitprice: "10", Fruitname: "Peach"),
    fruitsTypes(Fruitprice: "7", Fruitname: "Apple"),
        fruitsTypes(Fruitprice: "10", Fruitname : "strawbery")
    ]
    var body: some View {
        List{
            ForEach(fruits , id : \.id){fruit in
                Text(fruit.Fruitname)
                
            }
        }
    }
}

struct fruitView_Previews: PreviewProvider {
    static var previews: some View {
        fruitView()
    }
}
struct fruitsTypes : Identifiable {
    var id = UUID()
    var Fruitprice : String
    var Fruitname : String
}
