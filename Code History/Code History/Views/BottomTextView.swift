//
//  BottomTextView.swift
//  Code History
//
//  Created by Ali on 01/02/24.
//

import SwiftUI

struct BottomTextView: View {
    let str: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .font(.title3)
                .bold()
                .padding(.top, 35)
            Spacer()
        }
        .background(GameColor.accent)
    }
}

#Preview {
    BottomTextView(str: "let str: String")
}
