//
//  PriusLimited.swift
//  MAD157Module4CarOptionsKarenM
//
//  Created by Karen Mathes on 9/10/20.
//  Copyright © 2020 TygerMatrix Software. All rights reserved.
//

import Foundation

//.. subclass for Prius Model Limited
class PriusLimited: Prius2020 {

    var kamModel: String
    var stdEquipString: String = ""

    override init(model: String, color: PriusStructures.CarColor) {
        self.kamModel = "Limited"
        super.init(model: "Limited", color: color)
    }

    override func printModColor() {
        super.printModColor()
        print("\nModel Limited: \(PriusStructures().priusModelDictionary[kamModel]?.desc ?? "nf")")

        let stdEquip = ["54/50 est. mpg",
                        "Toyota Safety Sense P (TSS-P) standard",
                        "Adaptive Front-Lighting System (AFS) with auto-leveling headlights",
                        "17-in. 5-spoke alloy wheels with titanium-finished wheel inserts and P215/45R17 tires",
                        "Premium JBL® Audio with Integrated Navigation and 11.6-in. high-resolution touch-screen and Apple CarPlay & Amazon Alexa compatible",
                        "Color Head-Up Display (HUD)"
        ]

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
