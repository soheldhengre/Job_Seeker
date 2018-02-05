//
//  InboxVC.swift
//  Job_Seeker
//
//  Created by Sohel Dhengre on 01/02/18.
//  Copyright © 2018 Sohel Dengre. All rights reserved.
//

import UIKit

class InboxVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var menuBtn: UIButton!
    var userName = ["Sohel", "Alex", "Raju", "pratik"]
    var jobTitle = ["iOS Engineer", "Graphic Designer", "Android Developer", "Php Developer"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        
        self.view.addGestureRecognizer(revealViewController().tapGestureRecognizer())
        
        self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())
       
    }

    
}

extension InboxVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "inboxCell", for: indexPath) as? InboxCell else {return UITableViewCell()}
        cell.configureCell(userName: userName[indexPath.row], jobTitle: jobTitle[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let VC = storyboard?.instantiateViewController(withIdentifier: "employerChatVC") as? EmployerChatVC else {return}
        presentVC(VC)
    }
}












