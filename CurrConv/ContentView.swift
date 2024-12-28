//
//  ContentView.swift
//  CurrConv
//
//  Created by Mustafa on 27.12.24.
//

import SwiftUI

struct ContentView: View {
    @State var showInfo = false
    @State var fromAmount = ""
    @State var toAmount = ""
    var body: some View {
        ZStack {
            Image(
                .currencyConverterBg
            ).resizable()
                .opacity(0.4)
                .ignoresSafeArea(.all)
            VStack {
                Spacer(minLength:50)
                Image("dollar")
                    .resizable()
                    .tint(Color.black)
                    .frame(width: 150.0, height: 150)
                
                Text(
                    "Currency Converter")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                
                HStack{
                    VStack{
                        HStack{
                            Image("euro_ic")
                                .resizable()
                                .frame(width: 25, height: 25)
                            Text("From")
                                .foregroundColor(Color.black)
                        }
                        TextField("From", text: .constant(""))
                            .textFieldStyle(.roundedBorder)
                            .padding()
                            .multilineTextAlignment(.center)
                    }
                    
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .symbolEffect(.pulse)
                    
                    VStack{
                        HStack {
                            Image("euro_ic")
                                .resizable()
                                .frame(width: 25, height: 25)
                            Text("To")
                                .foregroundColor(Color.black)
                        }
                        
                        TextField("To", text: $toAmount)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                            .multilineTextAlignment(.center)
                    }
                    
                    
                }.padding()
                    .background(Color.black.opacity(0.4))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Spacer()
                
                Button{
                    showInfo.toggle()
                } label: {
                    Image("info")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                        .padding()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
