//
//  PriusXLE.swift
//  MAD157Module4CarOptionsKarenM
//
//  Created by Karen Mathes on 9/10/20.
//  Copyright © 2020 TygerMatrix Software. All rights reserved.
//

import Foundation

//.. subclass for Prius Model XLE
class PriusXLE: Prius2020 {

    var kamModel: String

    override init(model: String, color: PriusStructures.CarColor) {
        self.kamModel = "XLE"
        super.init(model: "XLE", color: color)
    }

    override func printModColor() {
        super.printModColor()
        print("\nModel XLE: \(priusModelDictionary[kamModel]?.desc ?? "nf")")

        let stdEquip = ["54/50 est. mpg",
                        "Toyota Safety Sense P (TSS-P) standard",
                        "17-in. 5-spoke alloy wheels with titanium-finished wheel inserts and P215/45R17 tires",
                        "SofTex®-trimmed 61 heated front seats with 8-way power-adjustable driver's seat \n\t\tincluding power lumbar support and 4-way adjustable front passenger seat",
                        "Qi-compatible wireless smartphone charging with charge indicator light",
                        "Rain-sensing variable intermittent windshield wipers",
                        "SofTex®-trimmed heated tilt/telescopic steering wheel",
                        "Smart Key System on three doors with Push Button Start and remote illuminated entry"
                        ]

        var i = 1
        print("\nStandard Equipment:")
        print("..................................................................................................")
        for item in stdEquip {
            print("\(i). \(item)")
            i += 1
        }
    }

}
