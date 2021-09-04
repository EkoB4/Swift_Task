//
//  fruitView.swift
//  listTask
//
//  Created by VB on 2.09.2021.
//

import SwiftUI

struct fruitView: View {
    var fruits = [
    fruitsTypes(Fruitname: "Peach", FruitPrice: 10 ),
        fruitsTypes( Fruitname: "apple", FruitPrice: 8),
        fruitsTypes(Fruitname: "strawberry", FruitPrice: 5)
    ]
    var body: some View {
        List{
            ForEach(fruits , id : \.id){fruit in
            fruitRow(fruitff: fruit)
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
    var Fruitname : String
    var FruitPrice : Int
}

struct fruitRow : View {
    var fruitff : fruitsTypes
    var body: some View{
        Text("\(fruitff.Fruitname)  price : \(fruitff.FruitPrice)")
    }
}




