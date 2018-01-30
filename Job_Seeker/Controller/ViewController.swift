//
//  ViewController.swift
//  Job_Seeker
//
//  Created by Sohel Dhengre on 30/01/18.
//  Copyright © 2018 Sohel Dengre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
    }

    

}

