//
//  PriusLEAWDe.swift
//  MAD157Module4CarOptionsKarenM
//
//  Created by Karen Mathes on 9/10/20.
//  Copyright © 2020 TygerMatrix Software. All rights reserved.
//

import Foundation

//.. subclass for Prius Model LE AWD-e
class PriusLEAWDe: Prius2020 {

    var kamModel: String

    override init(model: String, color: PriusStructures.CarColor) {
        self.kamModel = "LE AWD-e"
        super.init(model: "LE AWD-e", color: color)
    }

    override func printModColor() {
        super.printModColor()
        print("\nModel LE AWD-e: \(PriusStructures().priusModelDictionary[kamModel]?.desc ?? "nf")")

        let stdEquip = ["52/48 est. mpg",
                        "Electronic On-Demand Compact All-Wheel Drive (AWD-e)",
                        "Toyota Safety Sense P (TSS-P) standard",
                        "15-in. 5-spoke alloy wheels with two-tone wheel covers and P195/65R15 tires",
                        "Integrated fog lights with LED accent lights",
                        "Up to 24.6 cu. ft. of cargo space"
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

