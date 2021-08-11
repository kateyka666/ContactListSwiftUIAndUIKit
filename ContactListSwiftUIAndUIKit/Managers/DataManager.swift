//
//  DataManager.swift
//  ContactListSwiftUIAndUIKit
//
//  Created by Екатерина Боровкова on 10.08.2021.
//

import UIKit

class DataManager {
    
//    делаем синглтон для доступа к данным класса
    static let shared = DataManager()
    
   private var names = ["Vladimir","Aleksander","Sergei","Dmitriy","Petr","Mikhail","Igor","Aleksei"," Ivan","Victor","Konstantin"].shuffled()
    private var surnames = ["Medvedev", "Yeremin", "Putin", "Hasymov", "Zhirnov", "Bravy", "Shalyapin", "Kukushkin", "Raykin", "Rodnoy", "Pushkin"].shuffled()
    private var phones = ["+79919696592","+79998861121","+79631393158","+79779151379","+79015047084","+79919651775","+79632289106","+79639655135","+79309471609","+79677442400","+79309446670"].shuffled()
    private var emails = ["gocoh98830@bbsaili.com","hedrajulme@biyac.com","jopsacumla@biyac.com","sagnacospa@biyac.com","sertamagna@biyac.com","histonumla@biyac.com","purdojaspi@yevme.com","homlayomlo@yevme.com","vitrivumli@yevme.com","ritrilirko@yevme.com","birkomafyi@yevme.com"].shuffled()
    private init () {}


    func makePersons() -> [Person] {
        var index = 0
        var arrayOfPerson: [Person] = []
        
//       находим минимальное число элементов в массивах для создания масива персонз определенное число раз
        let repetingCount = min(names.count, surnames.count, phones.count, emails.count) - 1
        
//        одиннадцать раз кладем в массив персон новую персону, при этом каждый раз увлеичиваем индекс, чтобы брать всегда новое значение
        for _ in 0...repetingCount {
            arrayOfPerson.append(Person(
                                    name: names[index],
                                    surname: surnames[index],
                                    phone: phones[index],
                                    email: emails[index]))
            index += 1
          
        }
        
        return arrayOfPerson
}
}

