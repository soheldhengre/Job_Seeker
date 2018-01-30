//
//  ViewController.swift
//  Job_Seeker
//
//  Created by Sohel Dhengre on 30/01/18.
//  Copyright © 2018 Sohel Dengre. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift

class ViewController: SlideMenuController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func awakeFromNib() {
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "Main") {
            self.mainViewController = controller
        }
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "Left") {
            self.leftViewController = controller
        }
        super.awakeFromNib()
    }

}

