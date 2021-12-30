//
//  myFrameworkView.swift
//  myFramework
//
//  Created by Kushagra Mishra on 24/12/21.
//

import UIKit
import UserNotifications
import UserNotificationsUI
import SDWebImage
public class myFrameworkView: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        loadImage()
        // Do any additional setup after loading the view.
    }
    func loadImage() {
    let imageURL = URL(string: "https://upload.wikimedia.org/wikipedia/commons/1/15/Red_Apple.jpg")!
    imageView.sd_setImage(with: imageURL)
        }

    public init() {
        super.init(nibName: "myFrameworkView", bundle: Bundle(for: myFrameworkView.self))
    }
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
