//
//  JobSeekerProfileDetailsVC.swift
//  Job_Seeker
//
//  Created by Raju Dhumne on 07/02/18.
//  Copyright © 2018 Sohel Dengre. All rights reserved.
//

import UIKit

class JobSeekerProfileDetailsVC: UIViewController{
    @IBOutlet weak var submitBtn: UIButton!
    
    @IBOutlet var availableType: [UIButton]!
    @IBOutlet var jobType: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
  
    @IBAction func backBtnWasPressed(_ sender: Any) {
        DismissVC()
    }
    
    
    @IBAction func handelTappedSelection(_ sender: UIButton) {
        jobType.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        
        
    }
    @IBAction func immediatelyAvailableHandelTapped(_ sender: UIButton) {
        availableType.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
            
        }
    }
    @IBAction func jobTypeTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func availableTypeTapped(_ sender: UIButton) {
        
    }
    
  
    
    
    
    
    
}
