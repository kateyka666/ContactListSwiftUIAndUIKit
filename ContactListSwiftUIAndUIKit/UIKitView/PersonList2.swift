//
//  PersonList2.swift
//  ContactListSwiftUIAndUIKit
//
//  Created by Екатерина Боровкова on 10.08.2021.
//

import SwiftUI

struct PersonList2: UIViewControllerRepresentable {
   
    var person = [Person]()
    
    func makeUIViewController(context: Context) -> UITableViewController {
        UITableViewController()
    }
    func updateUIViewController(_ uiViewController: UITableViewController, context: Context) {
        uiViewController.tableView.register(PersonListCell.self, forCellReuseIdentifier: "PersonListCell")
        uiViewController.tableView.dataSource = context.coordinator
        uiViewController.navigationController?.navigationBar.topItem?.title = "Person List"
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(person: person)
    }
    
    
    
}

extension PersonList2 {
    class Coordinator: NSObject, UITableViewDataSource, UITableViewDelegate{
        
        var person: [Person]
      
         init(person: [Person]) {
            self.person = person
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            person.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let currentPerson = person[indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier: "PersonListCell", for: indexPath) as! PersonListCell
            var content = cell.defaultContentConfiguration()
            content.text = currentPerson.fullName
            cell.contentConfiguration = content
            return cell
            
        }
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)
            //          создаем экземпляр класса второго вьюконтроллера, кладем его первым в навигейшен контроллер, затем показываем навигейшн контроллер
            let currentPerson = person[indexPath.row]
            let controller = UIHostingController(rootView: DetailsView(person: currentPerson))
//            present(controller, animated: true)
            
        }
    }
}
