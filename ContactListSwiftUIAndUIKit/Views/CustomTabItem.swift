//
//  CustomTabItem.swift
//  ContactListSwiftUIAndUIKit
//
//  Created by Екатерина Боровкова on 11.08.2021.
//

import SwiftUI

struct CustomTabItem: View {
    
    @Binding var showNavigationTitle: Bool
    var systemName: String
    var text: String
    var body: some View {
        Button(action: {
            showNavigationTitle.toggle()
            print(showNavigationTitle)
        }) {
        Image(systemName: systemName)
            .resizable()
        Text(text)
           
        }.foregroundColor(.black)
    }
}

struct CustomTabItem_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabItem(showNavigationTitle: .constant(true), systemName: "person.3.fill", text: "Person List")
    }
}
