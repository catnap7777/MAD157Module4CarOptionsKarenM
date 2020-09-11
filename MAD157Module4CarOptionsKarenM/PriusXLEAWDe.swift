//
//  PriusXLEAWDe.swift
//  MAD157Module4CarOptionsKarenM
//
//  Created by Karen Mathes on 9/10/20.
//  Copyright © 2020 TygerMatrix Software. All rights reserved.
//

import Foundation

//.. subclass for Prius Model XLE AWD-e
class PriusXLEAWDe: Prius2020 {

    var kamModel: String
    var stdEquipString: String = ""

    override init(model: String, color: PriusStructures.CarColor) {
        self.kamModel = "XLE AWD-e"
        super.init(model: "XLE AWD-e", color: color)
    }

    override func printModColor() {
        super.printModColor()
        print("\n\t\t\tModel XLE AWD-e: \(PriusStructures().priusModelDictionary[kamModel]?.desc ?? "nf")")

        let stdEquip = ["52/48 est. mpg",
                        "Electronic On-Demand Compact All-Wheel Drive (AWD-e)",
                        "Toyota Safety Sense P (TSS-P) standard",
                        "SofTex®-trimmed heated tilt/telescopic steering wheel",
                        "Qi-compatible wireless smartphone charging with charge indicator light",
                        "SofTex®-trimmed heated front seats with 6-way adjustable driver's seat"
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
