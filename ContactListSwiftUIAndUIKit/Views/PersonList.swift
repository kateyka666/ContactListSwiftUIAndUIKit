//
//  PersonList.swift
//  ContactListSwiftUIAndUIKit
//
//  Created by Екатерина Боровкова on 11.08.2021.
//

import SwiftUI

struct PersonList: View {
    var persons = [Person]()
    var body: some View {
        List{
            ForEach(persons, id: \.self) { person in
                NavigationLink(person.fullName, destination: DetailsView(person: person))
                     
                }
            }
    }
}

struct PersonList_Previews: PreviewProvider {
    static var previews: some View {
        PersonList()
    }
}
