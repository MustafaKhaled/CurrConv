//
//  ExchangeInfoItem.swift
//  CurrConv
//
//  Created by Mustafa on 29.12.24.
//

import SwiftUI
struct ExchangeInfoItem: View {
    let leftIcon: ImageResource
    let rightIcon: ImageResource
    let leftText: String
    let rightText: String
    var body: some View {
        HStack {
            Image(leftIcon)
                .resizable()
                .frame(width: 20, height: 20)
            
            Text("1 Euro")
            
            Text("=")
            
            Text("1.10 Dollar")
            
            Image(rightIcon)
                .resizable()
                .frame(width: 20, height: 20)
            
        }
    }
}

#Preview {
    ExchangeInfoItem(
        leftIcon: .euroIc,
        rightIcon: .dollar,
        leftText: "1 Euro",
        rightText: "= 1.10 Dollar"
    )
}
