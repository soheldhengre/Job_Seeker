//
//  JobsNearMeFilter.swift
//  Job_Seeker
//
//  Created by Raju Dhumne on 05/02/18.
//  Copyright © 2018 Sohel Dengre. All rights reserved.
//

import UIKit

class JobsNearMeFilter: UIViewController {
    
    
    @IBOutlet weak var sliderLbl: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var categorySelect: UIButton!
    @IBOutlet weak var fullTimeSelected: UIButton!
    @IBOutlet var categoryOptions: [UIButton]!
    @IBOutlet var fullTimeOptions: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func closeBtnWasPressed(_ sender: Any) {
        DismissVC()
    }
    @IBAction func doneBtnWasPressed(_ sender: Any) {
        
    }
    @IBAction func handleTappedButton(_ sender: UIButton) {
      setUpCategory()
    }

    @IBAction func categoryTapped(_ sender: UIButton) {
        guard let title = sender.currentTitle else {
            return
        }
        switch title {
        case "Development":
            categorySelect.setTitle("Development", for: .normal)
            setUpCategory()
        case "BPO/ITES":
            categorySelect.setTitle("BPO/ITES", for: .normal)
            setUpCategory()
        case "Business Analyst" :
            categorySelect.setTitle("Business Analyst", for: .normal)
            setUpCategory()
        case "Digital Marketing":
            categorySelect.setTitle("Digital Marketing", for: .normal)
            setUpCategory()
        default:
            print("return")
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        sliderLbl.text = "(Radius \(currentValue)-50km)"
        
    }
    
    
    
    @IBAction func handelFullTimeSelection(_ sender: UIButton) {
     setUpFullTime()
    }
    @IBAction func fullTimeTapped(_ sender: UIButton) {
        guard let title = sender.currentTitle else {
            return
        }
        switch title {
        case "Part Time":
            fullTimeSelected.setTitle("Part Time", for: .normal)
            setUpFullTime()
        case "Internship":
            fullTimeSelected.setTitle("Internship", for: .normal)
            setUpFullTime()
        default:
            print("break")
        }
    }
    
    func setUpCategory () {
        categoryOptions.forEach { (button) in
            
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
                
            })
        }
    }
    
    func setUpFullTime () {
        fullTimeOptions.forEach { (button) in
            
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
    
    
}
