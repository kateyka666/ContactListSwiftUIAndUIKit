//
//  ContactList.swift
//  ContactListSwiftUIAndUIKit
//
//  Created by Екатерина Боровкова on 10.08.2021.
//

import SwiftUI

struct ContactList: View {
//    @Binding var showNavigationTitle: Bool
    var persons = [Person]()
    var body: some View {
      
        List{
            ForEach(persons, id: \.self) { person in
                Section(header: HeaderSectionView(text: person.fullName) )
                {
                    ContactRow(imageName: "phone.circle.fill", text: person.phone)
                   ContactRow(imageName: "envelope.circle.fill", text: person.email)
                     
                }

            }
            .listStyle(InsetGroupedListStyle())
        
        }
    }
}


struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(persons: DataManager.shared.makePersons())
    }
}
