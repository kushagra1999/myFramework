//
//  myFrameworkView.swift
//  myFramework
//
//  Created by Kushagra Mishra on 24/12/21.
//

import UIKit
import UserNotifications
import UserNotificationsUI

open class myFrameworkView: UIViewController, UNNotificationContentExtension {

    

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    open override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func submit(_ sender: Any) {
        print("username \(String(describing: nameTextField.text)) password \(String(describing: emailTextField.text))")
    }
    public init() {
        super.init(nibName: "myFrameworkView", bundle: Bundle(for: myFrameworkView.self))
    }
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open func didReceive(_ notification: UNNotification) {
        nameLabel.text = notification.request.content.body
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
