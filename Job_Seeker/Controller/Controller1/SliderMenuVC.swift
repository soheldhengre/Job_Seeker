//
//  SliderMenuVC.swift
//  Job_Seeker
//
//  Created by Sohel Dhengre on 30/01/18.
//  Copyright © 2018 Sohel Dhengre. All rights reserved.
//

import UIKit

class SliderMenuVC: UIViewController {

    var sliderMenuOptions = ["Notification", "Manage Jobs", "Post a Job", "Paid Plans", "Logout" ]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        self.revealViewController().rearViewRevealWidth = self.view.frame.width/2 + 30
    }
}

extension SliderMenuVC : UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sliderMenuOptions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "sliderMenuCell", for: indexPath) as? SliderMenuCell else {return UITableViewCell()}
        let option = sliderMenuOptions[indexPath.row]
        cell.configureCell(option: option)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var index = indexPath.row
        switch index {
        case 0:
            performSegue(withIdentifier: "abc", sender: nil)
        default:
            performSegue(withIdentifier: "abc", sender: nil)
        }
    }
}
