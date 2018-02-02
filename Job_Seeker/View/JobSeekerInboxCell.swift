//
//  JobSeekerInboxCell.swift
//  Job_Seeker
//
//  Created by Raju Dhumne on 02/02/18.
//  Copyright © 2018 Sohel Dengre. All rights reserved.
//

import UIKit

class JobSeekerInboxCell: UITableViewCell {

    @IBOutlet weak var emailImageView: UIImageView!
    @IBOutlet weak var JobProfileLbl: UILabel!
    @IBOutlet weak var messageTimeLbl: UILabel!
    @IBOutlet weak var CompanyNameLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func indoxMessage(JobProfile profile:String,CompanyName name:String,EmailImage image:UIImage,MessageTime time:String) {
        self.JobProfileLbl.text = profile
        self.CompanyNameLbl.text = name
        self.emailImageView.image = image
        self.messageTimeLbl.text = time
        
    }
 

}
