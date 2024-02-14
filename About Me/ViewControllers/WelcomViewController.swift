//
//  WelcomViewController.swift
//  About Me
//
//  Created by Алексей Попов on 09.02.2024.
//

import UIKit

final class WelcomViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    
    var userName: String!
    var name: String!
    var surname: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Добро пожаловать, \(userName ?? "")!"
        nameLabel.text = "Меня зовут \(name ?? "")  \(surname ?? "")"
        
    }
}
