//
//  NotificationFirstViewController.swift
//  DataPassWays
//
//  Created by Burak on 26.10.2021.
//

import UIKit

class NotificationFirstViewController: UIViewController {

    @IBOutlet weak var yearTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showSecondVC(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        if let nextVC = storyBoard.instantiateViewController(withIdentifier: "NotificationSecondViewController") as? NotificationSecondViewController {
            nextVC.createNotificationObserver()
            NotificationCenter.default.post(name: .yearDataKey, object: nil, userInfo: ["year": self.yearTextField.text as Any] )
            navigationController?.pushViewController(nextVC, animated: true)
        }
    }
    
}

extension Notification.Name{
    static let yearDataKey = Notification.Name("yearDataKey")
}
