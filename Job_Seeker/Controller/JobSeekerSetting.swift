//
//  JobSeekerSetting.swift
//  Job_Seeker
//
//  Created by Raju Dhumne on 01/02/18.
//  Copyright © 2018 Sohel Dengre. All rights reserved.
//

import UIKit

class JobSeekerSetting: UIViewController {
    
    var jobSeekerSetting = ["App Setting","Notification","Privacy Policy","Terms of use","Contact us","Logout"]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
       
    }
}
extension JobSeekerSetting:UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jobSeekerSetting.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "JobSeekerSettingCell", for: indexPath) as? JobSeekerSettingCell else { return UITableViewCell() }
        let setting = jobSeekerSetting[indexPath.row]
        cell.settings(options: setting)
    
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let index = indexPath.row
        
        switch index {
        case 0:
            let JBSNotif = storyboard?.instantiateViewController(withIdentifier: "JBSNotificationAppSettinng")
            presentVC(JBSNotif!)
        default:
            print("abdjs")
        }
        
        
        
        
        
        
        
    }
    
}
