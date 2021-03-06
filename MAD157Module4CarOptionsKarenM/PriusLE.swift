//
//  PriusLE.swift
//  MAD157Module4CarOptionsKarenM
//
//  Created by Karen Mathes on 9/10/20.
//  Copyright © 2020 TygerMatrix Software. All rights reserved.
//

import Foundation

//.. subclass for Prius Model LE
class PriusLE: Prius2020 {

    var kamModel: String
    var stdEquipString: String = ""

    override init(model: String, color: PriusStructures.CarColor) {
        self.kamModel = "LE"
        super.init(model: "LE", color: color)
    }

    override func printModColor() {
        super.printModColor()
        print("\nModel LE: \(PriusStructures().priusModelDictionary[kamModel]?.desc ?? "nf")")

        let stdEquip = ["54/50 est. mpg",
                        "Toyota Safety Sense P (TSS-P) standard",
                        "Blind Spot Monitor (BSM) with Rear Cross-Traffic Alert (RCTA)",
                        "Intelligent Clearance Sonar (ICS) with Intelligent Parking Assist (IPA)",
                        "Up to 24.6 cu. ft. of Cargo Space"]
        var i = 1
        print("\nStandard Equipment:")
        stdEquipString = ("\n\nStandard Equipment:\n....................................")
        print("..................................................................................................")
        for item in stdEquip {
            print("\(i). \(item)")
            stdEquipString = stdEquipString + ("\n\(i). \(item)")
            i += 1
        }
        
        super.myPrius2020SummaryInfo = super.myPrius2020SummaryInfo + stdEquipString
    }

}
