//
//  DelegateFirstViewController.swift
//  DataPassWays
//
//  Created by Burak on 25.10.2021.
//

import UIKit

class DelegateFirstViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    private let nowYear = 2021
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func showSecondVC(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        if let nextVC = storyBoard.instantiateViewController(withIdentifier: "DelegateSecondViewController") as? DelegateSecondViewController {
            nextVC.delegate = self
            navigationController?.pushViewController(nextVC, animated: true)
        }
    }
    
}

extension DelegateFirstViewController: YearDelegate {
    func yearSelected(year: String?) {
        if year != nil, let intYear = Int(year!) {
            let age = nowYear - intYear
            resultLabel.text = "You are \(age) years old"
        }
        else {
            resultLabel.text = "Please enter valid year number"
        }
    }
}
