//
//  ContentView.swift
//  ContactListSwiftUIAndUIKit
//
//  Created by Екатерина Боровкова on 10.08.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var showNavigationTitle = false
    var persons = DataManager.shared.makePersons()
    
    var body: some View {
        NavigationView{
            TabView{
                PersonList(persons: persons)
                    .tabItem {
                        CustomTabItem(showNavigationTitle: $showNavigationTitle, systemName: "person.3.fill", text: "Contacts")
                    }
                ContactList(persons: persons)
                    .tabItem {
                        CustomTabItem(showNavigationTitle: $showNavigationTitle, systemName: "person.crop.square.fill", text: "Numbers")
                    }
            }
            .navigationBarTitle(showNavigationTitle ? "Numbers" :  "Contacts List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
