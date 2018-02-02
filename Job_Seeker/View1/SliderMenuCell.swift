//
//  SliderMenuCell.swift
//  Job_Seeker
//
//  Created by Sohel Dhengre on 30/01/18.
//  Copyright © 2018 Sohel Dengre. All rights reserved.
//

import UIKit

class SliderMenuCell: UITableViewCell {

    @IBOutlet weak var optionLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configureCell(option: String){
        self.optionLbl.text = option
    }

}
