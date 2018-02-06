//
//  EmployerChatVC.swift
//  Job_Seeker
//
//  Created by Sohel Dhengre on 05/02/18.
//  Copyright © 2018 Sohel Dengre. All rights reserved.
//

import UIKit

class EmployerChatVC: UIViewController {

    var MessageArray = ["hey guys", "hola amigos", "hi"]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
    }

    
    @IBAction func backPressed(_ sender: Any) {
        DismissVC()
    }
}

extension EmployerChatVC: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MessageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "employerChatVC", for: indexPath) as? EmployerChatCell else {return UITableViewCell()}
        cell.configureCell(message: MessageArray[indexPath.row])
        return cell
    }
}
