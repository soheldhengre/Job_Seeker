//
//  JobPostingVC.swift
//  Job_Seeker
//
//  Created by Sohel Dhengre on 01/02/18.
//  Copyright © 2018 Sohel Dengre. All rights reserved.
//

import UIKit

class JobPostingVC: UIViewController {

    @IBOutlet var categories: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

  
    @IBAction func backPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func categorySelected(_ sender: Any) {
        categories.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
}
