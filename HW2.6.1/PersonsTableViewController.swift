//
//  PersonsTableViewController.swift
//  HW2.6.1
//
//  Created by Artem Grebenkin on 10/5/19.
//  Copyright © 2019 Artem Grebenkin. All rights reserved.
//

import UIKit


class PersonsTableViewController: UITableViewController {
    
    var persons = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generatePersons()
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons[section].contacts.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PersonViewCell
        let imgName = "logo" + String(indexPath.row)
        cell.contactImage.image = UIImage(named: imgName)
        cell.contactLabel.text = persons[indexPath.section].contacts[indexPath.row]
        return cell
    }
    
}

extension PersonsTableViewController {
    private func generatePersons() {
        let names = ["Morgan", "Leonardo", "Brad", "Robert", "Tom", "Gary", "Al",
                     "Harrison", "Bruce", "Bill", "Denzel", "Tommy"]
        let surnames = ["Freeman", "DiCaprio", "Pitt", "De Niro", "Hanks", "Oldman",
                        "Pacino", "Ford", "Willis", "Murray", "Washington", "Lee Jones"]
        let phones = ["202-555-0173", "202-555-3648", "202-555-9076", "202-555-3578",
                      "202-555-0456", "202-555-1234", "202-555-7459", "202-555-3753",
                      "202-555-4763", "202-555-3377", "202-555-3396", "202-555-9985"]
        
        var dict = [String: Person]()
        
        for name in names {
            let index = Int.random(in: 0..<names.count)
            let surname = surnames[index]
            let surnameForEmail = surname.replacingOccurrences(of: " ", with: "_")
            //разворачиваю без проверки т.к. человек без имени существовать не может
            let email = (name.first?.lowercased())! + "." + surnameForEmail.lowercased() + "@gmail.com"
            
            let newPerson = Person(name: name, surname: surname, email: email, phone: phones[index])
            //помещаю в словарь чтобы отфильтровать повторные фамилии
            dict[surname] = newPerson
        }
        
        self.persons = [Person](dict.values)
    }
    

}
