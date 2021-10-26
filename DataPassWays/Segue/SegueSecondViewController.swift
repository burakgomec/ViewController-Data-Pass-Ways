//
//  SegueSecondViewController.swift
//  DataPassWays
//
//  Created by Burak on 26.10.2021.
//

import UIKit

class SegueSecondViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    var yearOfBirth: String?
    private let nowYear = 2021
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateMyAge()
    }
    
    private func calculateMyAge(){
        if yearOfBirth != nil, let intYear = Int(yearOfBirth!){
            let age = nowYear - intYear
            resultLabel.text = "You are \(age) years old"
        }
        else {
            resultLabel.text = "Please enter valid year number"
        }
    }
    
}
