//
//  DetailComponents.swift
//  Starbucks Redesign
//
//  Created by Mehmet Ateş on 14.01.2022.
//

import SwiftUI

struct ProductCircle : View{
    private var screen = UIScreen.main.bounds.size
    var body: some View{
        Circle()
            .frame(width: screen.width * 0.6, height: screen.width * 0.6, alignment: .center)
            .foregroundColor(Color("Primary-B"))
    }
}

struct ProductDetails : View{
    var title : String
    var detail : String
    var body: some View{
        VStack(alignment:.leading){
            Text(self.title)
                .font(.title2)
                .bold()
                .padding(.bottom,5)
            Text(self.detail)
                .foregroundColor(.secondary)
        }.padding(.horizontal)
    }
}


struct BottomDetail : View{
    var screen = UIScreen.main.bounds.size
    var price : String
    @State var selectedSize = "V"
    let coupleSizes = ["T","G","V"]
    var body: some View{
        ZStack{
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(50)
                .ignoresSafeArea(.all, edges: .bottom)
                .shadow(color: .gray.opacity(0.3),radius: 20)
               
            VStack(alignment:.leading){
                Spacer(minLength: screen.width * 0.1)
                Text(self.price)
                    .font(.largeTitle)
                    .bold()
                Spacer()
                HStack{
                    HowMuchOrder()
                    ForEach(self.coupleSizes,id:\.self){a in
                        CoupTallButton(selectedSize: self.$selectedSize,title: a)
                    }
                }
                Spacer()
                ButtonFilledFull()
                
               
            }
        }
        .frame(width: screen.width, height: screen.width * 0.6)
      
    }
}

struct HowMuchOrder : View{
    @State private var howMuch = 0
    var body: some View{
        HStack(spacing:0){
            PlusOrLessButton(howMuch: self.$howMuch, title: "-")
            
            Text(String(howMuch))
                .font(.title2)
                .frame(width: 100, height: 45, alignment: .center)
                .background(RoundedRectangle(cornerRadius: 0).foregroundColor(Color("ButtonGrey")))
            
            PlusOrLessButton(howMuch: self.$howMuch, title: "+")
        }
    }
}


struct DetailComponents_Previews: PreviewProvider {
    static var previews: some View {
        DetailPage()
    }
}
