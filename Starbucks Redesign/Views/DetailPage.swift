//
//  DetailPage.swift
//  Starbucks Redesign
//
//  Created by Mehmet Ateş on 14.01.2022.
//

import SwiftUI

struct DetailPage: View {
    var body: some View {
        VStack{
            Spacer()
            ProductCircle()
            ProductDetails(title: "Toffee Nut Frappuccino",
                           detail: "Toffee nut syrup is blended with ice and milk, then topped with whipped cream and a delicious toffee nut flavoured topping."
            )
            Spacer()
            BottomDetail(price: "24,50 TL")
        }
    }
}

struct DetailPage_Previews: PreviewProvider {
    static var previews: some View {
        DetailPage()
    }
}
