//
//  JobSeekerResumeBuilderVC.swift
//  Job_Seeker
//
//  Created by Raju Dhumne on 08/02/18.
//  Copyright © 2018 Sohel Dengre. All rights reserved.
//

import UIKit

class JobSeekerResumeBuilderVC: UIViewController {

    @IBOutlet weak var minusBtn: UIButton!
    @IBOutlet weak var exprienceLbl: UILabel!
    @IBOutlet weak var higherEducationTextField: UITextField!
    
    var expri = 0
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func higherEducationBtnWasPressed(_ sender: Any) {
        higherEducationTextField.isUserInteractionEnabled = true
        higherEducationTextField.becomeFirstResponder()
    }
    
    @IBAction func plusBtnWasPressed(_ sender: Any) {
        minusBtn.isEnabled = true
        expri += 1
        exprienceLbl.text = String(expri)
        
    }
    
    @IBAction func minusBtnWasPressed(_ sender: Any) {
        if expri == 0 {
        minusBtn.isEnabled = false
        }
        else {
            expri -= 1
            exprienceLbl.text = String(expri)
        }
    }
    
    
    
    
    
    
}
