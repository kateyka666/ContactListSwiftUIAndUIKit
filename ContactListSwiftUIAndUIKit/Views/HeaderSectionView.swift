//
//  HeaderSectionView.swift
//  ContactListSwiftUIAndUIKit
//
//  Created by Екатерина Боровкова on 11.08.2021.
//

import SwiftUI

struct HeaderSectionView: View {
    var text: String
    var body: some View {
    Rectangle()
        .fill(Color.blue)
        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
        .overlay(
            Text(text)
                .padding(.horizontal),
            alignment: .leading
        )
    }
}

struct HeaderSectionView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderSectionView(text: "")
    }
}
