//
//  JobSeekerSettingCell.swift
//  Job_Seeker
//
//  Created by Raju Dhumne on 01/02/18.
//  Copyright © 2018 Sohel Dengre. All rights reserved.
//

import UIKit

class JobSeekerSettingCell: UITableViewCell {

    @IBOutlet weak var optionLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func settings(options:String) {
        self.optionLbl.text = options
        
    }
    
    

}
