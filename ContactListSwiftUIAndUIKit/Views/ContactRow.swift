//
//  ContactRow.swift
//  ContactListSwiftUIAndUIKit
//
//  Created by Екатерина Боровкова on 11.08.2021.
//

import SwiftUI

struct ContactRow: View {
    let imageName:String
    let text:String
    let colors: [Color] = [.red, .green, .blue]
    var body: some View {
        HStack {
            Image(systemName:imageName)
                .overlay(Circle().stroke(Color.gray, lineWidth: 1))
            Text(text).foregroundColor(colors.randomElement())
        }
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow(imageName: "map", text: "abc")
    }
}
