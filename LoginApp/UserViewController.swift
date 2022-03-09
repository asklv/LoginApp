//
//  UserViewController.swift
//  LoginApp
//
//  Created by Andrey on 09.03.2022.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet var userNameTF: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func logoutButonAction(_ sender: Any) {
        dismiss(animated: true)
    }
    
}
