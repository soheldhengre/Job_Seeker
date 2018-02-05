//
//  InboxCell.swift
//  Job_Seeker
//
//  Created by Sohel Dhengre on 05/02/18.
//  Copyright © 2018 Sohel Dengre. All rights reserved.
//

import UIKit

class InboxCell: UITableViewCell {

    @IBOutlet weak var userNameLbl: UILabel!
    @IBOutlet weak var jobTitleLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(userName: String, jobTitle: String){
        self.userNameLbl.text = userName
        self.jobTitleLbl.text = jobTitle
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
