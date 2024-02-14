//
//  ViewController.swift
//  About Me
//
//  Created by Алексей Попов on 09.02.2024.
//

import UIKit

final class MainViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    
    private let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTF.text = user.login
        passwordTF.text = user.password
        
        logInButton.layer.cornerRadius = 5
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarVC = segue.destination as? TabBarViewController
        
        tabBarVC?.viewControllers?.forEach { viewController in
            if let welcomVC = viewController as? WelcomViewController {
                welcomVC.userName  = user.login
                welcomVC.name = user.person.name
                welcomVC.surname = user.person.surname
            } else if let navigationVC = viewController as? UINavigationController {
                let personVC = navigationVC.topViewController as? PersonViewController
                personVC?.nameNavigation = user.person.name
                personVC?.surnameNavigation = user.person.surname
                personVC?.companyPerson = user.person.company
                personVC?.departmentPerson = user.person.department
                personVC?.jobTitlePerson = user.person.jobTitle
                personVC?.user = user
            }
        }
    }
    
    @IBAction func logInButtonAction() {
        guard userNameTF.text == user.login, passwordTF.text == user.password else {
            showAlert(
                withTitle: "Invalid login or passvord",
                andMessage: "Pleas, enter correct login and password"
            )
            return
        }
    }
    
    @IBAction func forgotUserNameBA() {
        showAlert(withTitle: "Oops!", andMessage: "Your user name is User 🤪")
    }
    
    @IBAction func forgotPasswordBA() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is 11 😇")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
//        userNameTF.text = ""
//        passwordTF.text = ""
    }
    
    private func showAlert(withTitle title: String, andMessage massedge: String) {
        let alert = UIAlertController(title: title, message: massedge, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

