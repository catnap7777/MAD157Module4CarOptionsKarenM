//
//  SumViewController.swift
//  MAD157Module4CarOptionsKarenM
//
//  Created by Karen Mathes on 9/9/20.
//  Copyright © 2020 TygerMatrix Software. All rights reserved.
//

import UIKit

class SumViewController: UIViewController {
    
    var priusType = ""
    var priusTypeDesc = ""
    var priusTypePrice = 0.0
    var priusColor = ""
    var priusColorEnum: PriusStructures.CarColor = PriusStructures.CarColor.Blue //default value
    var accPkg = ""
    var accPkgDesc = ""
    var accPkgIncls = ""
    var pictureNameString = ""

    @IBOutlet var priusTypeLable: UILabel!
    @IBOutlet var priusColorLabel: UILabel!
    @IBOutlet var priusPicture: UIImageView!
    @IBOutlet var accPkgLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        priusTypeLable.text = ("\(priusType) - \(priusTypeDesc) - Base Price: $\(priusTypePrice)")
        priusColorLabel.text = priusColor
        priusPicture.image = UIImage.init(named: pictureNameString)
        print("pictureNameString in third VC = \(pictureNameString)")
        accPkgLabel.text = ("\(accPkg) - \(accPkgDesc) - Includes: \(accPkgIncls)")
        
        switch priusType {
        case "L Eco":
            let myPrius2020 = PriusLEco(model: priusType, color: priusColorEnum)
        case "LE":
            let myPrius2020 = PriusLE(model: priusType, color: priusColorEnum)
        case "XLE":
            let myPrius2020 = PriusXLE(model: priusType, color: priusColorEnum)
        case "Limited":
            let myPrius2020 = PriusLimited(model: priusType, color: priusColorEnum)
        case "LE AWD-e":
            let myPrius2020 = PriusLEAWDe(model: priusType, color: priusColorEnum)
        case "XLE AWD-e":
            let myPrius2020 = PriusXLEAWDe(model: priusType, color: priusColorEnum)
        default:
            print("Uh oh. Something is not right")
            
        }
        
        print("in sumviewcontroller - priusType = \(priusType)  priusColor = \(priusColor)  priusColorEnum = \(priusColorEnum)")
        
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
