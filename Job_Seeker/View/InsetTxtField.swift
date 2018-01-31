//
//  InsetTxtField.swift
//  Job_Seeker
//
//  Created by Raju Dhumne on 31/01/18.
//  Copyright © 2018 Sohel Dengre. All rights reserved.
//

import UIKit

class InsetTxtField: UITextField {

    private var padding = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    func setupView() {
        let placeHolder = NSAttributedString(string: self.placeholder!, attributes: [NSAttributedStringKey.foregroundColor:#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)])
        self.attributedPlaceholder = placeHolder
    }
    
    

}
