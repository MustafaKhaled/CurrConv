//
//  ExchangeInfo.swift
//  CurrConv
//
//  Created by Mustafa on 28.12.24.
//

import SwiftUI

struct ExchangeInfo: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            Image(.currencyConverterBg)
                .resizable()
                .opacity(0.5)
                .ignoresSafeArea()
            
            
            VStack {
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                
                Text("It should be along text decsitbing the exchange rates process information. So get ready to see a long text here. It should be along text decsitbing the exchange rates process information. So get ready to see a long text here. It should be along text decsitbing the exchange rates process information. So get ready to see a long text here. It should be along text decsitbing the exchange rates process information. So get ready to see a long text here.")
                    .fixedSize(horizontal: false, vertical: true)
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .padding()
                    .foregroundColor(Color.black)
                
                ExchangeInfoItem(leftIcon: .euroIc, rightIcon: .dollar, leftText: "1 Euro", rightText: "1.11 USD")
                
                ExchangeInfoItem(leftIcon: .euroIc, rightIcon: .dollar, leftText: "1 Euro", rightText: "1.11 USD")
                
                ExchangeInfoItem(leftIcon: .euroIc, rightIcon: .dollar, leftText: "1 Euro", rightText: "1.11 USD")
                
                ExchangeInfoItem(leftIcon: .euroIc, rightIcon: .dollar, leftText: "1 Euro", rightText: "1.11 USD")
                
                Button("Done") {
                    dismiss()
                }.buttonStyle(.borderedProminent)
                    .tint(Color.black)
                    .font(.title)
                    .padding()
            }.scaledToFit()
        }
    }
}

#Preview {
    ExchangeInfo()
}
