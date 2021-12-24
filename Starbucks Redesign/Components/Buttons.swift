//
//  Buttons.swift
//  Starbucks Redesign
//
//  Created by Mehmet Ateş on 14.12.2021.
//

import SwiftUI

struct ButtonClear : View{
    var body: some View{
        Button {
            
        } label: {
            Text("Button")
                .padding(.horizontal)
                .padding(.vertical,12)
                .foregroundColor(Color("Primary-A"))
        }

    }
}
struct ButtonClearPlus : View{
    var body: some View{
        Button {
            
        } label: {
            HStack(){
                Image(systemName: "plus")
                Text("Button")
            }.foregroundColor(Color("Primary-A"))
                .padding(.horizontal)
                .padding(.vertical,12)
            
        }
        
    }
}
struct ButtonBorderer : View{
    var body: some View{
        Button {
            
        } label: {
            Text("Button")
                .padding(.horizontal)
                .padding(.vertical,12)
                .overlay(RoundedRectangle(cornerRadius: 5).stroke())
                .foregroundColor(Color("Primary-A"))
        }
    }
}

struct ButtonBordererPlus : View{
    var body: some View{
        Button {
            
        } label: {
            HStack{
                Image(systemName: "plus")
                Text("Button")
            }.padding(.horizontal)
                .padding(.vertical,12)
                .overlay(RoundedRectangle(cornerRadius: 5).stroke())
                .foregroundColor(Color("Primary-A"))
        }
    }
}

struct ButtonFilled : View{
    var body: some View{
        Button {
            
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding(.horizontal)
                .padding(.vertical,12)
                .background(RoundedRectangle(cornerRadius: 5).foregroundColor(Color("Primary-A")))
        }
    }
}
struct ButtonFilledPlus : View{
    var body: some View{
        Button {
            
        } label: {
            HStack{
                Image(systemName: "plus")
                Text("Button")
            }.foregroundColor(.white)
                .padding(.horizontal)
                .padding(.vertical,12)
                .background(RoundedRectangle(cornerRadius: 5).foregroundColor(Color("Primary-A")))
        }
    }
}

struct ButtonFilledSecond : View{
    var body: some View{
        Button {
            
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding(.horizontal)
                .padding(.vertical,12)
                .background(RoundedRectangle(cornerRadius: 5).foregroundColor(Color("Primary-B")))
        }
    }
}

struct ButtonFilledSecondPlus : View{
    var body: some View{
        Button {
            
        } label: {
            HStack{
                Image(systemName: "plus")
                Text("Button")
            }.foregroundColor(.white)
                .padding(.horizontal)
                .padding(.vertical,12)
                .background(RoundedRectangle(cornerRadius: 5).foregroundColor(Color("Primary-B")))
        }
    }
}

struct ButtonClearFull : View{
    var body: some View{
        Button {
            
        } label: {
            Text("Button")
                .frame(width: UIScreen.main.bounds.width * 0.8)
                .padding(.vertical,12)
                .foregroundColor(Color("Primary-A"))
        }
        
    }
}
struct ButtonClearFullPlus : View{
    var body: some View{
        Button {
            
        } label: {
            HStack{
                Image(systemName: "plus")
                Text("Button")
            }.frame(width: UIScreen.main.bounds.width * 0.8)
                .padding(.vertical,12)
                .foregroundColor(Color("Primary-A"))
        }
    }
}

struct ButtonBordererFull : View{
    var body: some View{
        Button {
            
        } label: {
            Text("Button")
                .frame(width: UIScreen.main.bounds.width * 0.8)
                .padding(.vertical,12)
                .overlay(RoundedRectangle(cornerRadius: 5).stroke())
                .foregroundColor(Color("Primary-A"))
        }
    }
}

struct ButtonBordererFullPlus : View{
    var body: some View{
        Button {
            
        } label: {
            HStack{
                Image(systemName: "plus")
                Text("Button")
            }.frame(width: UIScreen.main.bounds.width * 0.8)
                .padding(.vertical,12)
                .overlay(RoundedRectangle(cornerRadius: 5).stroke())
                .foregroundColor(Color("Primary-A"))
        }
        
    }
}

struct MoneyCard : View{
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 25)
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.width * 0.4)
                .foregroundColor(Color("Primary-A"))
                .shadow(radius: 15)
            HStack{
                Image("logoMark")
                    .offset(x: 0, y: -20)
                    .frame(width: UIScreen.main.bounds.width * 0.5, height: UIScreen.main.bounds.width * 0.4,alignment: Alignment.init(horizontal: .trailing, vertical: .top))
                    .mask(alignment:.trailing) {
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: UIScreen.main.bounds.width * 0.5, height: UIScreen.main.bounds.width * 0.4)
                    }
                Spacer()
            }.frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.width * 0.4)
            
            HStack(alignment:.lastTextBaseline){
                Spacer()
                VStack(alignment:.leading){
                    Spacer()
                    Text("Toplam Param")
                        .font(.title3)
                    Text("55,35 TL")
                        .bold()
                        .font(.largeTitle)
                        .padding(.top , UIScreen.main.bounds.width * 0.001)
                }
                .padding(.bottom,UIScreen.main.bounds.width * 0.04)
                Spacer()
                Button {
                    
                } label: {
                    Text("Yükleme yap")
                    VStack{
                        Image(systemName: "arrow.right")
                    }
                }
                Spacer()
            }.frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.width * 0.4)
            .foregroundColor(.white)
            
        }
    }
}

struct CardSwitch : View{
    @State private var isTrue = false
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(width: UIScreen.main.bounds.width * 0.45, height: UIScreen.main.bounds.width * 0.3)
                .foregroundColor(Color("ButtonGrey"))
            VStack{
                HStack{
                    VStack(alignment:.leading){
                        Text("Kredi")
                        Text("Banka Kartı")
                    }.foregroundColor(.secondary)
                    Spacer()
                }
                Toggle("", isOn: self.$isTrue)
            }.padding()
                .frame(width: UIScreen.main.bounds.width * 0.45, height: UIScreen.main.bounds.width * 0.3)
        }
    }
}

struct LittleMoneyCard : View{
    var body: some View{
        ZStack(alignment: .leading){
            RoundedRectangle(cornerRadius: 20)
                .frame(width: UIScreen.main.bounds.width * 0.45, height: UIScreen.main.bounds.width * 0.3)
                .foregroundColor(Color("Primary-A"))
            Image("logoMark")
                .offset(y:10)
                .frame(width: UIScreen.main.bounds.width * 0.45, height: UIScreen.main.bounds.width * 0.3,alignment: Alignment.init(horizontal: .trailing, vertical: .center))
                .mask(alignment:.center) {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: UIScreen.main.bounds.width * 0.45, height: UIScreen.main.bounds.width * 0.3)
                }
            HStack(alignment:.lastTextBaseline){
                Spacer()
                VStack(alignment:.leading){
                    Spacer()
                    Text("Toplam Param")
                        .font(.title3)
                    Text("55,35 TL")
                        .bold()
                        .font(.largeTitle)
                        .padding(.top , UIScreen.main.bounds.width * 0.001)
                        .offset(y:-5)
                }
                .padding(.bottom,UIScreen.main.bounds.width * 0.04)
                Spacer()
            }.frame(width: UIScreen.main.bounds.width * 0.45, height: UIScreen.main.bounds.width * 0.3,alignment: Alignment.init(horizontal: .trailing, vertical: .center))
                .foregroundColor(.white)
        }
    }
}

struct BestSeller : View{
    @State var isStared = false
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 5)
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.width * 0.3)
                .foregroundColor(Color("ButtonGrey"))
            VStack{
                HStack{
                    Text("Best sellers to best sellers increased")
                        Spacer()
                }.padding([.leading,.bottom])
                HStack{
                    ProgressBar(isStared: self.$isStared)
                    Button {
                        withAnimation {
                            self.isStared.toggle()
                        }
                    } label: {
                        if (!self.isStared){
                            Image(systemName: "star")
                                .foregroundColor(Color("Primary-B"))
                        }else{
                            Image(systemName: "star.fill")
                                .foregroundColor(Color("Primary-B"))
                        }
                       
                    }
                    
                    Text(self.isStared ? "8 / 10" : "7 / 10")
                        .foregroundColor(Color("Primary-B"))
                        .bold()
                    Spacer()
                }.padding(.leading)
               
            }.frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.width * 0.3)
        }
    }
}

struct CoffeeWin : View{
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 15)
                .stroke()
                .foregroundColor(Color("ButtonGrey"))
            VStack{
                HStack{
                    Text("Tebrikler")
                        .font(.title3)
                        .bold()
                    Spacer()
                    StarButton()
                }
                HStack{
                    Circle()
                        .foregroundColor(Color("Primary-B"))
                        .frame(width: UIScreen.main.bounds.width * 0.18)
                    VStack(alignment:.leading){
                        Text("Bizden 2 puan kazandın")
                        Text("Hazelnut Coffee")
                            .bold()
                            .font(.title3)
                    }
                    Spacer()
                }
            }.padding()
        }.frame(width: UIScreen.main.bounds.width * 0.9,height: UIScreen.main.bounds.width * 0.45)
    }
}

struct OrderPrepearing : View{
    var body: some View{
        ZStack{
            VStack{
                HStack(alignment:.top){
                    Text("Sipariş Detayı")
                        .font(.title3)
                        .bold()
                    Spacer()
                   PreparingView()
                }
                HStack{
                    Circle()
                        .foregroundColor(Color("Primary-B"))
                        .frame(width: UIScreen.main.bounds.width * 0.15,height: UIScreen.main.bounds.width * 0.15)
                    VStack(alignment:.leading, spacing:10){
                        Text("Hazelnut Coffee")
                            .bold()
                        Text("Adet: 2   Boyut: Venti")
                    }
                    Spacer()
                }
                HStack(alignment:.top){
                    Group{
                        VStack(alignment:.leading){
                            Text("Mağaza Adresi")
                                .padding(.bottom)
                            HStack(alignment:.top){
                                Image(systemName: "mappin.circle")
                                    .padding(.top,2)
                                Text("Kozyatağı Kadıköy-(6.7km)")
                                    .frame(width: UIScreen.main.bounds.width * 0.4)
                            }.foregroundColor(.black)
                        }
                        Spacer()
                        VStack(alignment:.leading){
                            Text("Alma Zamanı")
                                .padding(.bottom)
                            HStack{
                                Image(systemName: "clock")
                                Text("13:00")
                            }.foregroundColor(.black)
                        }
                    }.foregroundColor(.secondary)
                }
                Spacer()
            }.padding()
        }.frame(width: UIScreen.main.bounds.width * 1,height: UIScreen.main.bounds.width * 0.65)
    }
}

struct StarButton : View{
    var body: some View{
        Button {
            
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(Color("Primary-B"))
                HStack(alignment:.center){
                    Group{
                        Image(systemName: "plus")
                            .font(.caption)
                        Text("2")
                            .bold()
                            .font(.title3)
                    }.foregroundColor(.white)
                    Image(systemName:"star")
                        .foregroundColor(Color("Gold"))
                        .font(.title3)
                }
            }.frame(width: UIScreen.main.bounds.width * 0.2,height: UIScreen.main.bounds.width * 0.1)
        }
    }
}

struct PreparingView: View{
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 5)
                .foregroundColor(Color("ButtonGrey"))
            Text("Hazırlanıyor")
        }.frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.width * 0.1)
    }
}

struct ProgressBar : View{
    @Binding var isStared : Bool
    var body: some View{
        ZStack(alignment:.leading){
            RoundedRectangle(cornerRadius: 20)
                .frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.width * 0.02)
                .foregroundColor(.white)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: self.isStared ? UIScreen.main.bounds.width * 0.24 : UIScreen.main.bounds.width * 0.21, height: UIScreen.main.bounds.width * 0.02)
                .foregroundColor(Color("Primary-B"))
            
        }
    }
}
struct AllButton_View : View{
    var body: some View{
        VStack{
            HStack{
                ButtonClear()
                ButtonClearPlus()
            }
            HStack{
                ButtonBorderer()
                ButtonBordererPlus()
            }
            HStack{
                ButtonFilled()
                ButtonFilledPlus()
            }
            HStack{
                ButtonFilledSecond()
                ButtonFilledSecondPlus()
            }
            VStack{
                ButtonClearFull()
                ButtonClearFullPlus()
            }
            VStack{
                ButtonBordererFull()
                ButtonBordererFullPlus()
            }
            
        }
    }
}

struct ComponentsView : View{
    var body: some View{
        ScrollView{
           MoneyCard()
            HStack{
                LittleMoneyCard()
                CardSwitch()
            }
            BestSeller()
//            CoffeeWin()
            OrderPrepearing()
        }
    }
}


struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
       ComponentsView()
    }
}
