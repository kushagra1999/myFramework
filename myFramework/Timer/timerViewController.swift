//
//  timerViewController.swift
//  myFramework
//
//  Created by Kushagra Mishra on 29/12/21.
//

import UIKit

class timerViewController: UIViewController {

    
    
    @IBOutlet weak var myLabel: UILabel!
    var myName: String = ""
    var orientation: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        get_records(myData: myName)
        self.myLabel.text = self.orientation
        // Do any additional setup after loading the view.
    }
    public init() {
        
        super.init(nibName: "timerViewController", bundle: Bundle(for: timerViewController.self))
      
       
    }
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func get_records(myData:String){
      let data = myData.data(using: .utf8)
        
        do{
        let contentslider = try JSONDecoder().decode(ContentSlider.self,from: data!)
   
            self.orientation = contentslider.orientation
            
            
        } catch {
                print(error)
            }
 
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
