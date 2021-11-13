//
//  ViewController.swift
//  AutomatingAssets
//
//  Created by 山本響 on 2021/11/13.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myImage = UIImage(named: "MyImage")
        let rImage = R.image.myImage()
        
        let myColor = UIColor(named: "myColor")
        let rColor = R.color.myColor
        
        let myString = String(format: NSLocalizedString("Hello", comment: ""))
        
        let rString = R.string.localizable.hello()

    }


}

