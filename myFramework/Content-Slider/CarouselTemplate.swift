//
//  CarouselTemplate.swift
//  myFramework
//
//  Created by Kushagra Mishra on 27/12/21.
//

import UIKit

protocol BaseTemplate{
    
}
class CarouselTemplate: UIViewController, BaseTemplate {
    var myData: String?
    let urls: [URL] = [
        URL(string: "https://upload.wikimedia.org/wikipedia/en/2/21/Web_of_Spider-Man_Vol_1_129-1.png")!,
        URL(string: "https://www.out.com/sites/default/files/andrew-garfield-comments-bisexual-spider-man-sony-apology-marvel-mcu.jpg")!,
        URL(string: "https://www.denofgeek.com/wp-content/uploads/2021/10/spider-man-no-way-home-iron-spider-tom-holland-sony.jpg?resize=768%2C432")!
    ]
    lazy var carousel = Carousel(frame: .zero, urls: urls)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupComponents()
        setupConstraints()
        // Do any additional setup after loading the view.
    }

    override func loadView() {
        let view = UIView()
        view.backgroundColor = .systemBackground
        self.view = view
    }
    
    func setupHierarchy() {
        self.view.addSubview(carousel)
    }
    
    func setupComponents() {
        carousel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            carousel.topAnchor.constraint(equalTo: view.topAnchor),
            carousel.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            carousel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            carousel.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

