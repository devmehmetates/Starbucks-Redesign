//
//  HomePage.swift
//  Starbucks Redesign
//
//  Created by Mehmet Ateş on 13.01.2022.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        GeometryReader{
            proxy in
            VStack{
                HStack{
                    Text("Starbucks")
                        
                        .font(.title2)
                        .bold()
                        .padding(.horizontal)
                    Spacer()
                    Image(systemName: "bell")
                        .padding(.horizontal)
                    Image(systemName: "slider.horizontal.3")
                        .padding(.trailing)
                    
                }.frame(width: proxy.size.width, height: 50, alignment: .center)
                    .foregroundColor(Color("Primary-B"))
                    .background(Color.white.shadow(radius: 5, x: 0, y: 5).ignoresSafeArea(.all, edges: .top))
                    
                   
                VStack{
                    MoneyCard()
                        .padding(.vertical)
                    HStack{
                        TakedCoffee(count: 8)
                        VStack(alignment:.center){
                            Spacer()
                            HStack{
                                StarOrCoupWallet(isStar: true, count: 0)
                                StarOrCoupWallet(isStar: false, count: 0)
                            }
                            HStack{
                                Spacer()
                                ButtonFilledThird().padding([.trailing,.top],7)
                            }
                        }.frame(height: proxy.size.width * 0.38, alignment: .center)
                        
                    }.padding(.top)
                }.padding()
                
                
            }
        }
        
    }
}


struct StarOrCoupWallet : View{
    var isStar : Bool
    var count : Int
    var body: some View{
        VStack(alignment:.leading){
            HStack(alignment:.center){
                if self.isStar{
                    Image(systemName: "star")
                        .foregroundColor(Color("Gold"))
                        .font(.system(size: 25))
                }
                else{
                    Image("homecoup")
                        .resizable()
                        .frame(width: 25, height: 25, alignment: .center)
                }
                
                    
                Text(String(self.count))
                    .bold()
                    .font(.system(size: 35))
                Spacer()
            }.frame(width: UIScreen.main.bounds.width * 0.2, height: 20, alignment: .center)
            Text(isStar ? "Yıldız Bakiyesi" : "İkram İçecek")
                .font(.callout)
        }.padding(5)
    }
}


struct TakedCoffee : View {
    var count : Double
    var body: some View{
        ZStack(alignment:.bottom){
            ZStack(alignment:.center){
                Image("homecoup")
                    .scaleEffect(0.8)
                ChartView(value: self.count, index: 1)
                ChartView(value: 15, index: 0)
            }
            Text("\(Int(self.count))/15")
                .foregroundColor(Color("Primary-B"))
                .fontWeight(.bold)
        }
    }
}

struct ChartView : View{
    var value : Double = 0
    var index : Int
    var screen = UIScreen.main.bounds.size
    var body: some View{
        Circle()
            .trim(from: 0 ,to: self.valueCalculator())
            .rotation(Angle.init(degrees: 118))
            .stroke(lineWidth: index == 1 ? 12 : 8)
            .frame(width: screen.width * 0.3, height: screen.width * 0.32, alignment: .center)
            .foregroundColor(Color("Primary-B").opacity(index == 1 ? 1 : 0.5))
    }
    
    func valueCalculator() -> Double{
        return ((self.value * 8.5) / 15) / 10
    }
    
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
