//
//  ClosureFirstViewController.swift
//  DataPassWays
//
//  Created by Burak on 26.10.2021.
//

import UIKit

class ClosureFirstViewController: UIViewController {

    
    @IBOutlet weak var yearTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func showSecondVC(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        if let nextVC = storyBoard.instantiateViewController(withIdentifier: "ClosureSecondViewController") as? ClosureSecondViewController {
            nextVC.completionHandler = { [weak self] in
                guard let self = self else { return nil}
                return self.yearTextField.text
            }
            navigationController?.pushViewController(nextVC, animated: true)
        }
    }
    
}
