//
//  CompanyDetailsVC.swift
//  Job_Seeker
//
//  Created by Raju Dhumne on 31/01/18.
//  Copyright © 2018 Sohel Dengre. All rights reserved.
//

import UIKit

class CompanyDetailsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func nxtBtnWasPressed(_ sender: Any) {
        let companyProfileVc = CompanyProfileVC()
        companyProfileVc.modalPresentationStyle = .custom
        present(companyProfileVc, animated: true, completion: nil)
        
    }
    
    @IBAction func previewBtnWasPressed(_ sender: Any) {
        
       dismiss(animated: true, completion: nil)
    }
}
