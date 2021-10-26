//
//  SecondViewController.swift
//  DataPassWays
//
//  Created by Burak on 25.10.2021.
//

import UIKit

class SingletonSecondViewController: UIViewController {


    @IBOutlet weak var resultLabel: UILabel!
    private let nowYear = 2021
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateMyAge()
    }
    
    
    private func calculateMyAge(){
        guard let myYearOfBirth = Singleton.shared.year else { return resultLabel.text = "Please enter valid year number"}
        let age = nowYear - myYearOfBirth
        resultLabel.text = "You are \(age) years old"
    }

}
