//
//  baseView.swift
//  myFramework
//
//  Created by Kushagra Mishra on 25/12/21.
//

import UIKit
import UserNotifications
import UserNotificationsUI

open class baseView: UIViewController, UNNotificationContentExtension {
    var label:UILabel!
    open override func viewDidLoad() {
        super.viewDidLoad()
//        self.view.backgroundColor = .orange
//        setup()
        // Do any additional setup after loading the view.
//        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
//        label.center = CGPoint(x: 160, y: 285)
//        label.textAlignment = .center
//        label.text = "I'm a test label"
//        self.view.addSubview(label)
    }
    private func setup(msg:String) {
                    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 221))
                    label.center = CGPoint(x: 60, y: 85)
                    label.textAlignment = .center
                    if msg == "content-slider"{
                        label.text = "Will open content slider template"}
                    if msg == "timer-template"{
                        label.text = "Will open timer template"
        }
        if msg == "simple-template"{
                        let secondVC = myFrameworkView()
                        addChild(secondVC)
                        self.view.addSubview(secondVC.view)
                        secondVC.view.frame = self.view.bounds
        }
                    self.view.addSubview(label)
//            let secondVC = myFrameworkView()
//            addChild(secondVC)
//            self.view.addSubview(secondVC.view)
//            secondVC.view.frame = self.view.bounds
        }
    public func didReceive(_ notification: UNNotification) {
//        self.view.backgroundColor = .orange
        let content = notification.request.content.userInfo as? [String:Any]
        
//
//        self.view.addSubview(label)
        setup(msg: content?["ct_template"] as! String)
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
