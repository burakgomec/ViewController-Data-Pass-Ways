//
//  DelegateSecondViewController.swift
//  DataPassWays
//
//  Created by Burak on 25.10.2021.
//

import UIKit

class DelegateSecondViewController: UIViewController  {

    weak var delegate: YearDelegate?
    
    @IBOutlet weak var yearTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sendDataBackScreen(_ sender: Any) {
        delegate?.yearSelected(year: yearTextField.text)
        self.navigationController?.popViewController(animated: true)
    }
    
}
