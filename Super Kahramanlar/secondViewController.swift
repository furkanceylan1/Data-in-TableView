//
//  secondViewController.swift
//  Super Kahramanlar
//
//  Created by Furkan Ceylan on 30.05.2022.
//

import UIKit

class secondViewController: UIViewController {
    let imgBox = UIImageView()
    let heroNameLabel = UILabel()
    var selectImg = ""
    var selectName = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let width = view.frame.size.width
        let height = view.frame.size.height
        

        imgBox.frame = CGRect(x: (width * 0.5) - (width * 0.8 / 2), y: (height * 0.3) - (height * 0.3 / 2), width: width * 0.8, height: height * 0.3)
        imgBox.backgroundColor = UIColor.white
        imgBox.layer.cornerRadius = 4.0
        imgBox.image = UIImage(named: selectImg)
        view.addSubview(imgBox)
        
        heroNameLabel.text = selectName
        heroNameLabel.textColor = .black
        heroNameLabel.frame = CGRect(x: width * 0.5 - width * 0.8 / 2, y: height * 0.5 - 37 / 2, width: width * 0.8, height: 37)
        heroNameLabel.textAlignment = NSTextAlignment.center
        view.addSubview(heroNameLabel)
    }
    

}
