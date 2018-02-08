//
//  JobDetailsVC.swift
//  Job_Seeker
//
//  Created by Sohel Dhengre on 02/02/18.
//  Copyright © 2018 Sohel Dengre. All rights reserved.
//

import UIKit

class JobDetailsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func backPressed(_ sender: Any) {
        DismissVC()
    }
    
    @IBAction func detailsPressed(_ sender: Any) {
    }
 
    @IBAction func applicantsPressed(_ sender: Any) {
    }
    
    @IBAction func shortlistedPressed(_ sender: Any) {
    }
    
}
