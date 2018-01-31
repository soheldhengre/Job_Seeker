//
//  ProfileVC.swift
//  Job_Seeker
//
//  Created by Sohel Dhengre on 31/01/18.
//  Copyright © 2018 Sohel Dengre. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var menuBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(revealViewController().tapGestureRecognizer())
    }

  
}
