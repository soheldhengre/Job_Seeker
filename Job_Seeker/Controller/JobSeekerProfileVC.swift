//
//  JobSeekerProfileVC.swift
//  Job_Seeker
//
//  Created by Raju Dhumne on 02/02/18.
//  Copyright © 2018 Sohel Dengre. All rights reserved.
//

import UIKit

class JobSeekerProfileVC: UIViewController {

  
    @IBOutlet weak var menuBtn: UIButton!
 
    @IBOutlet weak var messageView: UIView!
    @IBOutlet weak var switchBtn: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()

        switchBtn.addTarget(self, action: #selector(JobSeekerProfileVC.switchBtnWasChanged(_:)), for: .touchUpInside)
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        messageView.isHidden = true
        
        
    }
    

    @IBAction func personalDeatilsWasPressed(_ sender: Any) {
        let personalDetailsVC = storyboard?.instantiateViewController(withIdentifier: "JobSeekerProfileDetailsVC")
        presentVC(personalDetailsVC!)
        
        
    }
    
    @IBAction func resumeBuilderWasPressed(_ sender: Any) {
        
        let jobSeekerResumeBuilder = storyboard?.instantiateViewController(withIdentifier: "JobSeekerResumeBuilderVC")
        presentVC(jobSeekerResumeBuilder!)
        
        
    }
    
   @objc func switchBtnWasChanged (_ sender : UISwitch) {
        
        if sender.isOn {
           messageView.isHidden = false
            messageView.alpha = 1.0
            UIView.animate(withDuration: 3.0, animations: {
                self.messageView.alpha = 0.0
            }, completion: { (complete) in
                self.messageView.isHidden = true
            })
        }
    }
    
    


}
