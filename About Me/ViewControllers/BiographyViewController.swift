//
//  BiographyViewController.swift
//  About Me
//
//  Created by Алексей Попов on 14.02.2024.
//

import UIKit

final class BiographyViewController: UIViewController {

    @IBOutlet var biographyLabel: UILabel!
    
    var biography: String!
    var nameBiography: String!
    var surnameBiography: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        biographyLabel.text = biography
        title = "\(nameBiography ?? "") \(surnameBiography ?? "") о себе"
    }
}
