//
//  JobPostingVC.swift
//  Job_Seeker
//
//  Created by Sohel Dhengre on 01/02/18.
//  Copyright © 2018 Sohel Dengre. All rights reserved.
//

import UIKit
import BEMCheckBox

class JobPostingVC: UIViewController, BEMCheckBoxDelegate {

    @IBOutlet weak var fullTimeBox: BEMCheckBox!
    @IBOutlet weak var partTimeBox: BEMCheckBox!
    @IBOutlet var categories: [UIButton]!
    
    @IBOutlet var workingHours: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullTimeBox.delegate = self
        partTimeBox.delegate = self

    }

    func didTap(_ checkBox: BEMCheckBox) {
        if checkBox.tag == 1 {
            partTimeBox.on = true
        }
    }
  
    @IBAction func backPressed(_ sender: Any) {
        DismissVC()
    }
    
    @IBAction func categorySelected(_ sender: Any) {
        categories.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
    @IBAction func workingHoursPressed(_ sender: Any) {
        workingHours.forEach { (buttons) in
            UIView.animate(withDuration: 0.3, animations: {
                buttons.isHidden = !buttons.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
    
}
