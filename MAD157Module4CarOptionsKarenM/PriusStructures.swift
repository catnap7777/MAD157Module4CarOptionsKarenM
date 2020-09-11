//
//  PriusStructures.swift
//  MAD157Module4CarOptionsKarenM
//
//  Created by Karen Mathes on 9/10/20.
//  Copyright © 2020 TygerMatrix Software. All rights reserved.
//

import Foundation

class PriusStructures {

    var priusModelDictionary = ["L Eco": (price: 24325.00, desc: "Economy"),
                                "LE": (price: 25535.00, desc: "Luxury Edition"),
                                "XLE": (price: 28375.00, desc: "Deluxe Luxury Edition"),
                                "Limited": (price: 32500.00, desc: "Limited Edition"),
                                "LE AWD-e": (price: 26935.00, desc: "Limited Edition All Wheel Drive"),
                                "XLE AWD-e": (price: 29375.00, desc: "Deluxe Limited Edition All Wheel Drive")
    ]
    
    var priusAccPkgsDictionary = ["ALLWFLP": (desc: "All-Weather Floor Liner Package", incls: "All-Weather Floor Liners, Cargo Liner"),
                                  "CMP": (desc: "Carpet Mat Package", incls: "Carpet Floor Mats, Carpet Cargo Mat"),
                                  "FSFMLP": (desc: "Four Season FLoor Mat/Liner Package", incls: "Carpet Floor Mats, Carpet Cargo Mat, All-Weather Floor Liners"),
                                  "PAP": (desc: "Preferred Accessory Package", incls: "Carpet Floor Mats, Carpet Cargo Mat, Rear Bumper Applique, Cargo Net - Envelope"),
                                  "PP3": (desc: "Protection Package #3", incls: "Body Side Moldings, Door Edge Guards, Rear Bumper Applique")
    ]

    enum CarColor: String {
        case Blue = "Electric Storm Blue"
        case Pearl = "Blizzard Pearl"
        case Silver = "Classic Silver Metallic"
        case Gray = "Magnetic Gray Metallic"
        case Black = "Midnight Black Metallic"
        case Red = "Supersonic Red"
        case Sea = "Sea Glass Pearl"
    }

    enum ExtAcc: String {
        case SpokeAW = "15in 10-Spoke Alloy Wheels"
        case AeroSS = "Aero Side Splitter"
        case AlloyWL = "Alloy Wheel Locks"
        case BlackoutWI = "Blackout Wheel Inserts"
        case BodySM = "Body Side Molding"
        case DoorEG = "Door Edge Guards"
        case PaintPF = "Paint Protect Film"
        case RearBA = "Rear Bumper Applique"
        case RearBP = "Rear Bumper Protector"
        case RemovableCB = "Removable Cross Bars"
    }

    enum IntAcc: String {
        case AllWFL = "All Weather Floor Liners"
        case CargoN = "Cargo Net - Envelope"
        case CargoT = "Cargo Tote"
        case CargoL = "Cargo Liner"
        case CarpetCM = "Carpet Cargo Mat"
        case CarpetFM = "Carpet Floor Mats"
        case CoinHAC = "Coin Holder/Ashtray Cup"
        case EmergK = "Emergency Kit"
        case FirstAK = "First Aid Kit"
        case FlessHM = "Frameless Homelink Mirror"
        case IllumDS = "Illuminated Door Sills"
        case SecurS = "Security System"
        case UnivTH = "Universal Table Holder"
    }

    enum AccPkgs: String {
        case NONE = "NONE"
        case ALLWFLP = "ALLWFLP"
        case CMP = "CMP"
        case FSFMLP = "FSFMLP"
        case PAP = "PAP"
        case PP3 = "PP3"
    }


}
