//
//  SecondViewController.swift
//  BackDataPassing
//
//  Created by Mac on 30/01/23.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var rollNumberTextField: UITextField!
    
    var firstName : String = ""
    var lastName : String = ""
    var rollNumber : Int = 0
    var studentBackDataPassingdelegate : StudentInformationPassingProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func BackButton(_ sender: Any) {
        guard let delegatSVC = studentBackDataPassingdelegate else{
            return
        }
        firstName = firstNameTextField.text!
        lastName = lastNameTextField.text!
        rollNumber = (rollNumberTextField.text?.codingKey.intValue)!
        
        delegatSVC.passDataToSVC(firstName: firstName, lastName: lastName, rollNumber: rollNumber)
        
        navigationController?.popViewController(animated: true)
    }
    
}
