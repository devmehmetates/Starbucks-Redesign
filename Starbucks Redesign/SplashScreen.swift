//
//  ContentView.swift
//  Starbucks Redesign
//
//  Created by Mehmet Ateş on 12.12.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(Color("Primary-B"))
            Image("Logo")
                .resizable()
                .frame(width: UIScreen.main.bounds.size.width * 0.7, height:  UIScreen.main.bounds.size.width * 0.55)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
