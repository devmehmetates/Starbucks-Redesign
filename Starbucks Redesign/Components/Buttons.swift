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

struct ButtonFilledThird : View{
    var body: some View{
        Button {
            
        } label: {
            Text("Detaylar")
                .foregroundColor(.black)
                .padding(.horizontal)
                .padding(.vertical,12)
                .background(RoundedRectangle(cornerRadius: 5).foregroundColor(Color("ButtonGrey")))
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
                .padding(.vertical,12)
                .overlay(RoundedRectangle(cornerRadius: 5).stroke())
                .foregroundColor(Color("Primary-A"))
        }
    }
}
struct ButtonFilledFull : View{
    var body: some View{
        Button {
            
        } label: {
            Text("Button")
                .frame(width: UIScreen.main.bounds.width * 0.78)
                .foregroundColor(.white)
                .padding(.horizontal)
                .padding(.vertical,12)
                .background(RoundedRectangle(cornerRadius: 5).foregroundColor(Color("Primary-A")))
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

struct PlusButtonWithShadow : View{
    var body: some View{
        Button {
            
        } label: {
            ZStack{
                Circle()
                    .frame(width: 50, height: 50, alignment: .center)
                    .foregroundColor(Color("Primary-A"))
                Image(systemName: "plus")
                    .foregroundColor(.white)
            }.shadow(radius: 3,y: 3)
        }
    }
}

struct CoupTallButton : View{
    @Binding var selectedSize : String
    var title : String
    var coupSize = ["T":25.0,"G":30.0,"V":35.0]
    var isSelected : Bool{
        return title == selectedSize
    }
    var body: some View{
        Button {
            selectedSize = self.title
        } label: {
            ZStack(alignment:.bottom){
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 40, height: 40, alignment: .center)
                    .foregroundColor(self.isSelected ? Color("Primary-B").opacity(0.5) : Color("ButtonGrey"))
                    .overlay(RoundedRectangle(cornerRadius: 4)
                                .stroke(lineWidth: 2)
                                .frame(width: 40, height: 40, alignment: .center)
                                .foregroundColor(self.isSelected ? Color("Primary-B") : .gray))
                Image("coup")
                    .resizable()
                    .frame(width: CGFloat(self.coupSize[self.title]!), height: CGFloat(self.coupSize[self.title]!), alignment: .center)
                    .overlay(Text(self.title))
                    .foregroundColor(Color("Primary-B"))
                    .padding(.bottom,3)
            }
        }

    }
}

struct CustomInput : View{
    @Binding var email : String
    var body: some View{
        VStack{
            HStack{
                TextField("Email", text: self.$email)
            }.padding()
                .background(RoundedRectangle(cornerRadius: 5).foregroundColor(.white))
                .overlay(RoundedRectangle(cornerRadius: 5).stroke(.gray))
        }.padding(.horizontal)
    }
}
struct CustomPasswordInput : View{
    @State var isHide = false
    @Binding var password : String
    var body: some View{
        ZStack{
            if self.isHide{
                HStack{
                    SecureField("Password", text: self.$password)
                }.padding()
                    .background(RoundedRectangle(cornerRadius: 5).foregroundColor(.white))
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(.gray))
                
            }else{
                HStack{
                    TextField("Password", text: self.$password)
                }.padding()
                    .background(RoundedRectangle(cornerRadius: 5).foregroundColor(.white))
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(.gray))
                
            }
            HStack{
                Spacer()
                Button {
                    self.isHide.toggle()
                } label: {
                    Image(systemName: self.isHide ? "eye.slash" : "eye")
                        .padding(.trailing)
                }.foregroundColor(.primary)
            }
        }.padding(.horizontal)
    }
}

struct CatagoriesButton : View{
    @Binding var selectedTitle : String
    var title : String
    var isSelected : Bool {
        return self.selectedTitle == self.title
    }
    var body: some View{
        Button {
            withAnimation{
                self.selectedTitle = self.title
            }
        } label: {
            if self.isSelected{
                Text(title)
                    .foregroundColor(.black)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 5).foregroundColor(Color("ButtonGrey")))
            }else{
                Text(title)
                    .foregroundColor(.black)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 5).stroke().foregroundColor(Color("ButtonGrey")))
            }
        }
    }
}
struct CatagoriesScrool : View{
    @State private var selectedCat = "Çok Satanlar"
    var catagories = ["Çok Satanlar","Kahve" ,"Yemek" , "İçecek"]
    var body: some View{
        ScrollView(.horizontal,showsIndicators: false){
            HStack{
                ForEach(self.catagories,id: \.self){ title in
                    CatagoriesButton(selectedTitle: self.$selectedCat, title: title)
                }
            }
        }.padding(.horizontal)
    }
}


struct PlusOrLessButton : View{
    @Binding var howMuch : Int
    var title : String
    var body: some View{
        Button {
            if title == "-"{
                if howMuch > 0{
                    self.howMuch -= 1
                }else{
                    howMuch = 0
                }
               
            }else{
                self.howMuch += 1
            }
            
        } label: {
            if title == "-"{
                Text(title).foregroundColor(.black)
                    .font(.title)
                    .frame(width: 45, height: 45, alignment: .center)
                    .background(Rectangle().cornerRadius(5,corners: [.topLeft,.bottomLeft]))
                
            }else{
                Text(title).foregroundColor(.black)
                    .font(.title)
                    .frame(width: 45, height: 45, alignment: .center)
                    .background(Rectangle().cornerRadius(5,corners: [.topRight,.bottomRight]))
            }
        }.foregroundColor(Color("ButtonGrey"))
    }
}


extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {
    
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct HowMuchCoffee : View{
    @State private var howMuch = 0
    var body: some View{
        HStack(spacing:0){
            PlusOrLessButton(howMuch: self.$howMuch, title: "-")
            
            Text(String(howMuch))
                .font(.title2)
                .frame(width: 100, height: 35, alignment: .center)
                .background(RoundedRectangle(cornerRadius: 0).foregroundColor(Color("ButtonGrey")))
            
            PlusOrLessButton(howMuch: self.$howMuch, title: "+")
        }
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
    @State var selectedSize = "G"
    let coupleSizes = ["T","G","V"]
    @State var email = ""
    @State var password = ""
    var body: some View{
        ScrollView{
           MoneyCard()
            HStack{
                LittleMoneyCard()
                CardSwitch()
            }
            BestSeller()
//            CoffeeWin()
//            OrderPrepearing()
            HStack{
                PlusButtonWithShadow()
                ForEach(self.coupleSizes,id:\.self){a in
                    CoupTallButton(selectedSize: self.$selectedSize,title: a)
                }
                
            }
            VStack{
                CustomInput(email: self.$email)
                CustomPasswordInput(password: self.$password)
            }
            CatagoriesScrool()
            HStack{
                HowMuchCoffee()
                Spacer()
            }.padding(.horizontal)
        }
    }
}


struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
       AllButton_View()
    }
}
