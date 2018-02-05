//
//  JobSeekerInboxVC.swift
//  Job_Seeker
//
//  Created by Raju Dhumne on 02/02/18.
//  Copyright © 2018 Sohel Dengre. All rights reserved.
//

import UIKit

class JobSeekerInboxVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var menuBtn: UIButton!
    
    var jobProfile = ["iOS Developer","Android Developer","Web Developer","SEO"]
    var companyName = ["orion","orion","orion","orion"]
    var emailImage:UIImage!
    var messageTime = ["2 day ago","2 day ago","2 day ago","2 day ago"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
}
extension JobSeekerInboxVC :UITableViewDelegate,UITableViewDataSource {
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jobProfile.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "JobSeekerInboxCell", for: indexPath) as? JobSeekerInboxCell else { return UITableViewCell() }
   
    let profile = jobProfile[indexPath.row]
        let name = companyName[indexPath.row]
        let image = UIImage(named: "envelope_")
        let time = messageTime[indexPath.row]
        
        cell.indoxMessage(JobProfile: profile, CompanyName: name, EmailImage: image!, MessageTime: time)
        
        return cell
    
    }
}
