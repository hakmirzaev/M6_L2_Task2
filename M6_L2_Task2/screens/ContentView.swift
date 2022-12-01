//
//  ContentView.swift
//  M6_L2_Task2
//
//  Created by Bekhruz Hakmirzaev on 01/12/22.
//

import SwiftUI

struct ContentView: View {
    @State var welcome = "str_welcome".localized()
    var body: some View {
        VStack{
            Text(welcome)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            HStack(spacing: 0){
                Button(action: {
                    Bundle.setLanguage(lang: "en")
                    welcome = "str_welcome".localized()
                }, label: {
                    Text("English")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .foregroundColor(.white)
                        .background(.red)
                })
                Button(action: {
                    Bundle.setLanguage(lang: "zh-HK")
                    welcome = "str_welcome".localized()
                }, label: {
                    Text("Korean")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .foregroundColor(.white)
                        .background(.blue)
                })
                Button(action: {
                    Bundle.setLanguage(lang: "ko")
                    welcome = "str_welcome".localized()
                }, label: {
                    Text("Chinese")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .foregroundColor(.white)
                        .background(.green)
                })
            }.frame(maxWidth: .infinity, maxHeight: 70)
        }.padding(.top, 10).padding(.bottom, 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
