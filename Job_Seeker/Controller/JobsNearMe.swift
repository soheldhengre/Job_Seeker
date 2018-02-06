//
//  JobsNearMe.swift
//  Job_Seeker
//
//  Created by Raju Dhumne on 01/02/18.
//  Copyright © 2018 Sohel Dengre. All rights reserved.
//

import UIKit

class JobsNearMe: UIViewController {

    @IBOutlet weak var menuBtn: UIButton!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        menuBtn.addTarget(self.revealViewController(), action:#selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
       
    }

    @IBAction func sortBtnWasPressed(_ sender: Any) {
        
        let sortPopUp = UIAlertController(title: "Sort by", message: "", preferredStyle: .actionSheet)
        let location = UIAlertAction(title: "closest to location", style: .default, handler: nil)
        let posting = UIAlertAction(title:"Latest Posting", style: .default, handler: nil)
        let salary = UIAlertAction(title: "Salary", style: .default, handler: nil)
        let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
        sortPopUp.addAction(location)
        sortPopUp.addAction(posting)
        sortPopUp.addAction(salary)
        sortPopUp.addAction(cancel)
        present(sortPopUp, animated: true, completion: nil)
        
    }
    
    @IBAction func filterBtnWasPressed(_ sender: Any) {
        let jobNearMeFilter = storyboard?.instantiateViewController(withIdentifier: "JobsNearMeFilter")
        presentVC(jobNearMeFilter!)
        
    }
}






