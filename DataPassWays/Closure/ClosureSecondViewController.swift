//
//  ClosureSecondViewController.swift
//  DataPassWays
//
//  Created by Burak on 26.10.2021.
//

import UIKit

class ClosureSecondViewController: UIViewController {
    
    var completionHandler: (() -> (String)?)?
    private let nowYear = 2021
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateMyAge()
    }
    
    private func calculateMyAge(){
        let result = completionHandler?()
        
        if result != "", let intYear = Int(result!) {
            let age = nowYear - intYear
            resultLabel.text = "You are \(age) years old"
        }
        else {
            resultLabel.text = "Please enter valid year number"
        }
    }
    
}

