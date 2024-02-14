//
//  PersonViewController.swift
//  About Me
//
//  Created by Алексей Попов on 13.02.2024.
//

import UIKit

final class PersonViewController: UIViewController {

    @IBOutlet var namePL: UILabel!
    @IBOutlet var surnamePL: UILabel!
    @IBOutlet var companyPL: UILabel!
    @IBOutlet var departmentPL: UILabel!
    @IBOutlet var jobTitlePL: UILabel!
    
    var nameNavigation: String!
    var surnameNavigation: String!
    var companyPerson: String!
    var departmentPerson: String!
    var jobTitlePerson: String!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(nameNavigation ?? "") \(surnameNavigation ?? "")"
        
        namePL.text = nameNavigation
        surnamePL.text = surnameNavigation
        companyPL.text = companyPerson
        departmentPL.text = departmentPerson
        jobTitlePL.text = jobTitlePerson
        
        navigationItem.backButtonTitle = nameNavigation
        
//        почему то backButtonTitle вот так "\(nameNavigation ?? "") \(surnameNavigation ?? "")" не хочет работать
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let biographyVC = segue.destination as? BiographyViewController
        biographyVC?.biography = user.person.biography
        biographyVC?.nameBiography = user.person.name
        biographyVC?.surnameBiography = user.person.surname
    }
}
