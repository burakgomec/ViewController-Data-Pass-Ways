//
//  SegueFirstViewController.swift
//  DataPassWays
//
//  Created by Burak on 26.10.2021.
//

import UIKit

class SegueFirstViewController: UIViewController {

    @IBOutlet weak var yearTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func calculateMyAge(_ sender: Any) {
        self.performSegue(withIdentifier: "passDataIdentifier", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "passDataIdentifier", let nextVC = segue.destination as? SegueSecondViewController {
            nextVC.yearOfBirth = yearTextField.text
        }
    }
    
    
}
