//
//  PriusLEco.swift
//  MAD157Module4CarOptionsKarenM
//
//  Created by Karen Mathes on 9/10/20.
//  Copyright © 2020 TygerMatrix Software. All rights reserved.
//

import Foundation

//.. subclass for Prius Model L Eco
class PriusLEco: Prius2020 {

    var kamModel: String

    override init(model: String, color: PriusStructures.CarColor) {
        self.kamModel = "L Eco"
        super.init(model: "L Eco", color: color)
    }

    override func printModColor() {
        super.printModColor()
        print("\nModel L Eco: \(PriusStructures().priusModelDictionary[kamModel]?.desc ?? "nf")")

        let stdEquip = ["58/53 est. mpg","15-in. 5-spoke alloy wheels with full wheel covers and P195/65R15 tires",
                        "7-in. touch-screen with Apple CarPlay & Amazon Alexa compatible",
                        "Two rear USB 2.1A ports", "Toyota Safety Sense™ P (TSS-P) standard",
                        "Safety Connect",
                        "24-hour Roadside Assistance for three years and unlimited miles",
                        "Up to 27.4 cu. ft. of cargo space"
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
