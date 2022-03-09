//
//  ViewController.swift
//  LoginApp
//
//  Created by Andrey on 07.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var inputUserTF: UITextField!
    @IBOutlet var inputPasswordTF: UITextField!
    
    let userName = "Andrey"
    let userPassword = "Xcode2022"
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        _ = UserViewController()
        _ = segue.destination as! UserViewController
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }

    @IBAction func loginButtonAction() {
        
        if inputUserTF.text != userName || inputPasswordTF.text != userPassword {
            showAlert(title: "Data error", message: "Incorrect login or password")
        }
        
    }
    @IBAction func userNameAction(_ sender: Any) {
        showAlert(title: "User name", message: "Username: Andrey")
    }
    
    @IBAction func userPasswordShow(_ sender: Any) {
        showAlert(title: "User password", message: "Password: Xcode2022")
    }
    
}

// MARK: - Private Methods
extension ViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) {
            _ in self.inputUserTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
