//
//  NotificationSecondViewController.swift
//  DataPassWays
//
//  Created by Burak on 26.10.2021.
//

import UIKit

class NotificationSecondViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    private let nowYear = 2021
    private var message: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showMessageToLabel()
    }
    
    func createNotificationObserver(){
        NotificationCenter.default.addObserver(self, selector: #selector(getYearData(notification:)), name: .yearDataKey, object: nil)
    }
    
    private func showMessageToLabel(){
        resultLabel.text = message
    }
    
    private func removeNotificationObserver(){
        NotificationCenter.default.removeObserver(self, name: .yearDataKey, object: nil)
    }
    
    @objc func getYearData(notification: Notification){
        if let year = notification.userInfo?["year"] as? String, let intYear = Int(year){
            let age = nowYear - intYear
            message = "You are \(age) years old"
        }
        else {
            message = "Please enter valid year number"
        }
    }
    
    deinit {
        print("\(self) deinit")
        removeNotificationObserver()
    }
    
}
