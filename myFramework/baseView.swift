import UIKit
import UserNotifications
import UserNotificationsUI

open class baseView: UIViewController, UNNotificationContentExtension {
    var label:UILabel!
    var orientation: String = ""

    open override func viewDidLoad() {
        super.viewDidLoad()
    }
    func showLabel(myText:String){
                let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
                label.center = CGPoint(x: 160, y: 285)
                label.textAlignment = .center
                label.text = myText
                self.view.addSubview(label)
    }

    private func setup(msg:String, data:String) {
 
        
                    if msg == "content-slider"{
                        let secondVC = CarouselTemplate()
                        secondVC.myData = data
                        addChild(secondVC)
                        self.view.addSubview(secondVC.view)
                        secondVC.view.frame = self.view.bounds
        }
                    if msg == "basic-template"{
                        let secondVC = myFrameworkView()
                        addChild(secondVC)
                        self.view.addSubview(secondVC.view)
                        secondVC.view.frame = self.view.bounds
        }
                    if msg == "timer-template"{
                        
//                        timerViewController().filldata(data: data)
                        let secondVC = timerViewController()
                        secondVC.myName = data
                        addChild(secondVC)
                        self.view.addSubview(secondVC.view)
                        secondVC.view.frame = self.view.bounds
        }
                    

        }
    public func didReceive(_ notification: UNNotification) {
        let content = notification.request.content.userInfo as? [String:Any]
        setup(msg: content?["ct_template"] as! String, data: content?["ct_data"] as! String)

        
    }
}
