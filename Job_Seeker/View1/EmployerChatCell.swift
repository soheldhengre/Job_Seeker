//
//  EmployerChatCell.swift
//  Job_Seeker
//
//  Created by Sohel Dhengre on 06/02/18.
//  Copyright © 2018 Sohel Dengre. All rights reserved.
//

import UIKit

class EmployerChatCell: UITableViewCell {

    @IBOutlet weak var messageLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(message: String){
        self.messageLbl.text = message
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
