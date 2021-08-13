//
//  DetailsView.swift
//  ContactListSwiftUIAndUIKit
//
//  Created by Екатерина Боровкова on 11.08.2021.
//

import SwiftUI

struct DetailsView: View {
    var person: Person
    var body: some View {
        
        Form {
//            Text(person.fullName)
//                .font(.largeTitle)
//                .bold()
                
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                Spacer()
            }.padding()
            ContactRow(imageName: "phone.circle.fill", text: person.phone)
            ContactRow(imageName: "envelope.circle.fill", text: person.email)
                .navigationTitle(person.fullName)
        }
        
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(person: Person(name: "11", surname: "22", phone: "33", email: "44"))
    }
}
