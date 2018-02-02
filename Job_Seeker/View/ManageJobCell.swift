//
//  ManageJobCell.swift
//  Job_Seeker
//
//  Created by Sohel Dhengre on 02/02/18.
//  Copyright © 2018 Sohel Dengre. All rights reserved.
//

import UIKit

class ManageJobCell: UITableViewCell {

    @IBOutlet weak var jobTitle: UILabel!
    @IBOutlet weak var noOfApplicants: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(jobTitle:String, applicants: Int){
        self.jobTitle.text = jobTitle
        self.noOfApplicants.text = "\(applicants) Applicants"
    }

}
//hjfdgjh
