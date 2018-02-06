//
//  ManageJobsVC.swift
//  Job_Seeker
//
//  Created by Sohel Dhengre on 01/02/18.
//  Copyright © 2018 Sohel Dengre. All rights reserved.
//

import UIKit

class ManageJobsVC: UIViewController {

    var jobTitle = ["iOS Engineer", "Graphic Designer", "Plumber"]
    var applicants = [2, 4, 4]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }

   
    @IBAction func backPressed(_ sender: Any) {
        DismissVC()
    }
}

extension ManageJobsVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jobTitle.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "manageJobsCell", for: indexPath) as? ManageJobCell else {return UITableViewCell()}
        cell.configureCell(jobTitle: jobTitle[indexPath.row], applicants: applicants[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let VC = storyboard?.instantiateViewController(withIdentifier: "toJobDetailsVC") as? JobDetailsVC else {return}
        presentVC(VC)
    }
    
}
