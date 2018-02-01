//
//  JobSeekerRegisterVC.swift
//  Job_Seeker
//
//  Created by Raju Dhumne on 01/02/18.
//  Copyright © 2018 Sohel Dengre. All rights reserved.
//

import UIKit

class JobSeekerRegisterVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func loginBtnWasPressed(_ sender: Any) {
        
        guard let jobSeekerLoginVC = storyboard?.instantiateViewController(withIdentifier: "JobSeekerLoginVC") as? JobSeekerLoginVC else { return }
        present(jobSeekerLoginVC, animated: true, completion: nil)
        
    }
    

}
