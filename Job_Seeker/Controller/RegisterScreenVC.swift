//
//  RegisterScreenVC.swift
//  Job_Seeker
//
//  Created by Raju Dhumne on 31/01/18.
//  Copyright © 2018 Sohel Dengre. All rights reserved.
//

import UIKit

class RegisterScreenVC: UIViewController {

    @IBOutlet weak var nxtBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func nextBtnWasPressed(_ sender: Any) {
        
        let companydetaisVc = CompanyDetailsVC()
        companydetaisVc.modalPresentationStyle = .custom
        present(companydetaisVc, animated: true, completion: nil)
        
    }
    

}
