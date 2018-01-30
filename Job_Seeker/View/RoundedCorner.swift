//
//  RoundedCorner.swift
//  Job_Seeker
//
//  Created by Raju Dhumne on 30/01/18.
//  Copyright © 2018 Sohel Dengre. All rights reserved.
//

import UIKit
@IBDesignable
class RoundedCorner: UIButton {
    
    @IBInspectable var cornerRadius:CGFloat = 3.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    override func awakeFromNib() {
        self.setupView()
        
    }
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    func setupView(){
        self.layer.borderWidth = 2.0
        self.layer.cornerRadius = cornerRadius
    }
    
}
