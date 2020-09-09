//
//  AccViewController.swift
//  MAD157Module4CarOptionsKarenM
//
//  Created by Karen Mathes on 9/9/20.
//  Copyright © 2020 TygerMatrix Software. All rights reserved.
//

import UIKit

class AccViewController: UIViewController {
    
    var priusType = ""
    var priusColor = ""
    
    @IBOutlet var accPicker: UIPickerView!
    @IBOutlet var carTypeLabel: UILabel!
    @IBOutlet var carColorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        print("in new view controller for accessories")
        //print("priusType = \(priusType)")
        print("priusColor = \(priusColor)")
        
        carTypeLabel.text = priusType
        carColorLabel.text = priusColor
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
