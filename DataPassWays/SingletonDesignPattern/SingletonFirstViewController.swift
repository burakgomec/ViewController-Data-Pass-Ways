//
//  FirstViewController.swift
//  DataPassWays
//
//  Created by Burak on 25.10.2021.
//

import UIKit

class SingletonFirstViewController: UIViewController {


    @IBOutlet weak var yearTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func showSecondVC(_ sender: Any) {
        if let year = yearTextField.text{
            Singleton.shared.year = Int(year)
        }
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        if let nextVC = storyBoard.instantiateViewController(withIdentifier: "SingletonSecondViewController") as? SingletonSecondViewController {
            navigationController?.pushViewController(nextVC, animated: true)
        }
    }
    
}
