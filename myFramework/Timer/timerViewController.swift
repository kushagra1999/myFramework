//
//  timerViewController.swift
//  myFramework
//
//  Created by Kushagra Mishra on 29/12/21.
//

import UIKit

class timerViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    var myData : String
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.myLabel.text = "Kushagra"
        // Do any additional setup after loading the view.
    }
    public init(data:String) {
        self.myData = data
        super.init(nibName: "timerViewController", bundle: Bundle(for: timerViewController.self))
        self.myLabel.text = myData
       
    }
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
//    public func filldata(data:String){
//        self.myLabel.text = myData
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
