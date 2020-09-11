//
//  Prius2020.swift
//  MAD157Module4CarOptionsKarenM
//
//  Created by Karen Mathes on 9/10/20.
//  Copyright © 2020 TygerMatrix Software. All rights reserved.
//

import Foundation

class Prius2020 {

    var priusModel: String
    var priusColor: String
    var priusExtAccBuild: [String] = []
    var priusIntAccBuild: [String] = []
    var priusAccPkgBuild: [String] = []


    init(model: String, color: PriusStructures.CarColor) {
        self.priusModel = model
        self.priusColor = color.rawValue
    }

    //.. computed variable - for a 10% off sale price
    var salePromo: Double {

        guard (PriusStructures().priusModelDictionary[priusModel]?.price) != nil else {
            return 0
        }
        return ((PriusStructures().priusModelDictionary[priusModel]?.price ?? 0.0) - (PriusStructures().priusModelDictionary[priusModel]?.price ?? 0.0) * 0.10) // 10% off base price
    }

    func addExtAcc(extAccName: PriusStructures.ExtAcc) {
        //ADD ACCESSORIES ONLY IF THEY ALREADY HAVEN'T BEEN ADDED AS PART OF AN ACCESSORY PACKAGE
        switch extAccName {
        //.. add if following accessories are not part of a package at all
            case .AeroSS, .SpokeAW, .AlloyWL, .BlackoutWI, .PaintPF, .RearBP, .RemovableCB:
                priusExtAccBuild.append(extAccName.rawValue)
        //.. add if following accessories are not part of a package that was already added
            case .BodySM:
                if (!priusAccPkgBuild.contains(PriusStructures.AccPkgs.PP3.rawValue)) {
                    priusExtAccBuild.append(extAccName.rawValue)
                }
            case .DoorEG:
                if (!priusAccPkgBuild.contains(PriusStructures.AccPkgs.PP3.rawValue)) {
                    priusExtAccBuild.append(extAccName.rawValue)
                }
            case .RearBA:
                if (!priusAccPkgBuild.contains(PriusStructures.AccPkgs.PP3.rawValue) &&
                    !priusAccPkgBuild.contains(PriusStructures.AccPkgs.PAP.rawValue)) {

                    priusExtAccBuild.append(extAccName.rawValue)
                }
        }

    }

    func addIntAcc(intAccName: PriusStructures.IntAcc) {
        //ADD ACCESSORIES ONLY IF THEY ALREADY HAVEN'T BEEN ADDED AS PART OF AN ACCESSORY PACKAGE
        switch intAccName {
        //.. add if following accessories are not part of a package at all
            case .CargoT, .CoinHAC, .EmergK, .FirstAK, .FlessHM, .IllumDS, .SecurS, .UnivTH:
                priusIntAccBuild.append(intAccName.rawValue)
        //.. add if following accessories are not part of a package that was already added
            case .AllWFL:
                if (!priusAccPkgBuild.contains(PriusStructures.AccPkgs.ALLWFLP.rawValue) &&
                    !priusAccPkgBuild.contains(PriusStructures.AccPkgs.FSFMLP.rawValue)) {

                    priusIntAccBuild.append(intAccName.rawValue)
                }
            case .CargoN:
                if (!priusAccPkgBuild.contains(PriusStructures.AccPkgs.PAP.rawValue)) {
                    priusIntAccBuild.append(intAccName.rawValue)
                }
            case .CargoL:
                if (!priusAccPkgBuild.contains(PriusStructures.AccPkgs.ALLWFLP.rawValue)) {
                    priusIntAccBuild.append(intAccName.rawValue)
                }
            case .CarpetCM:
                if (!priusAccPkgBuild.contains(PriusStructures.AccPkgs.CMP.rawValue) &&
                    !priusAccPkgBuild.contains(PriusStructures.AccPkgs.FSFMLP.rawValue) &&
                    !priusAccPkgBuild.contains(PriusStructures.AccPkgs.PAP.rawValue)) {

                    priusIntAccBuild.append(intAccName.rawValue)

                }
            case .CarpetFM:
                if (!priusAccPkgBuild.contains(PriusStructures.AccPkgs.CMP.rawValue) &&
                    !priusAccPkgBuild.contains(PriusStructures.AccPkgs.FSFMLP.rawValue) &&
                    !priusAccPkgBuild.contains(PriusStructures.AccPkgs.PAP.rawValue)) {

                    priusIntAccBuild.append(intAccName.rawValue)
                    }

        }

    }

    func addAccPkg(accPkgName: PriusStructures.AccPkgs) {


        switch accPkgName {
        case .ALLWFLP:
            //.. add accessory package
            priusAccPkgBuild.append(PriusStructures.AccPkgs.ALLWFLP.rawValue)
            //.. remove any individual accessories that were added that are already part of the accessory package selected
            if let idx = priusIntAccBuild.firstIndex(of: PriusStructures.IntAcc.AllWFL.rawValue) {
                priusIntAccBuild.remove(at: idx)
            }
            if let idx = priusIntAccBuild.firstIndex(of: PriusStructures.IntAcc.CargoL.rawValue) {
                priusIntAccBuild.remove(at: idx)
            }

        case .CMP:
            //.. add accessory package
            priusAccPkgBuild.append(PriusStructures.AccPkgs.CMP.rawValue)

            //.. remove any individual accessories that were added that are already part of the accessory package selected
            if let idx = priusIntAccBuild.firstIndex(of: PriusStructures.IntAcc.CarpetCM.rawValue) {
                priusIntAccBuild.remove(at: idx)
            }
            if let idx = priusIntAccBuild.firstIndex(of: PriusStructures.IntAcc.CarpetFM.rawValue) {
                priusIntAccBuild.remove(at: idx)
            }

        case .FSFMLP:
            //.. add accessory package
            priusAccPkgBuild.append(PriusStructures.AccPkgs.FSFMLP.rawValue)
            //.. remove any individual accessories that were added that are already part of the accessory package selected
            if let idx = priusIntAccBuild.firstIndex(of: PriusStructures.IntAcc.CarpetCM.rawValue) {
                priusIntAccBuild.remove(at: idx)
            }
            if let idx = priusIntAccBuild.firstIndex(of: PriusStructures.IntAcc.CarpetFM.rawValue) {
                priusIntAccBuild.remove(at: idx)
            }
            if let idx = priusIntAccBuild.firstIndex(of: PriusStructures.IntAcc.AllWFL.rawValue) {
                priusIntAccBuild.remove(at: idx)
            }

        case .PAP:
            //.. add accessory package
            priusAccPkgBuild.append(PriusStructures.AccPkgs.PAP.rawValue)
            //.. remove any individual accessories (internal) that were added that are already part of the accessory package selected
            if let idx = priusIntAccBuild.firstIndex(of: PriusStructures.IntAcc.CarpetCM.rawValue) {
                priusIntAccBuild.remove(at: idx)
            }
            if let idx = priusIntAccBuild.firstIndex(of: PriusStructures.IntAcc.CarpetFM.rawValue) {
                priusIntAccBuild.remove(at: idx)
            }
            if let idx = priusIntAccBuild.firstIndex(of: PriusStructures.IntAcc.CargoN.rawValue) {
                priusIntAccBuild.remove(at: idx)
            }

            //.. remove any individual accessories (external) that were added that are already part of the accessory package selected
            if let idx = priusExtAccBuild.firstIndex(of: PriusStructures.ExtAcc.RearBA.rawValue) {
                priusExtAccBuild.remove(at: idx)
            }

        case .PP3:
            //.. add accessory package
            priusAccPkgBuild.append(PriusStructures.AccPkgs.PP3.rawValue)
            //.. remove any individual accessories that were added that are already part of the accessory package selected
            if let idx = priusExtAccBuild.firstIndex(of: PriusStructures.ExtAcc.RearBA.rawValue) {
                priusExtAccBuild.remove(at: idx)
            }
            if let idx = priusExtAccBuild.firstIndex(of: PriusStructures.ExtAcc.BodySM.rawValue) {
                priusExtAccBuild.remove(at: idx)
            }
            if let idx = priusExtAccBuild.firstIndex(of: PriusStructures.ExtAcc.DoorEG.rawValue) {
                priusExtAccBuild.remove(at: idx)
            }

        case .NONE:
            //.. add accessory package
            priusAccPkgBuild.append(PriusStructures.AccPkgs.NONE.rawValue)
        }


    }

    //.. function called to see if there's a sale
    func isThereASale() {

        var saleFlag = false

        switch priusModel {
            case "L Eco":
                saleFlag = false
            case "LE":
                saleFlag = false
            case "XLE":
                saleFlag = true
            case "Limited":
                saleFlag = false
            case "LE AWD-e":
                saleFlag = false
            case "XLE AWD-e":
                saleFlag = false
            default:
                saleFlag = false
        }

        if saleFlag == false {
            var noSalePrice = salePromo
            print("\n@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
            print("\t\t\t\t\t\t***** Sorry, but there is no sale right now *****")
            print("\t\t\t\t\t\t\t\t***** Base Price = $\(String(format: "%.2f", PriusStructures().priusModelDictionary[priusModel]?.price ?? 0.0)) *****")
            print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
        } else {
            let salePrice = salePromo
            print("\n@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
            print("\t\t\t\t***** CONGRATULATIONS!!!! THERE IS A SALE ON THIS MODEL: \(priusModel) *****")
            print("\t\t\t\t\t\t\t***** NEW Base Price = $\(String(format: "%.2f", salePrice)) *****")
            print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")

        }
    }

    func printModColor() {

        print("\n\n\n***************************************************************************************************")
        print("***************************************************************************************************")
        print("**                                                                                               **")
        print("**                       Congratulations on your 2020 Prius purchase!                            **")
        print("**                                                                                               **")
        print("***************************************************************************************************")
        print("***************************************************************************************************")
        print("\n\t\tYou've selected:  \n\n\t\t\t\tModel: \(priusModel)   Color: \(priusColor)")



        if let myPrice = PriusStructures().priusModelDictionary[priusModel]?.price {
            print("\t\t\t\tBase price: $\(String(format: "%.2f", myPrice))")
            //print("\n\t\t\t\tBase price: $\(Double(myPrice))")
        } else {
            print("\t\t\t\tBase price:  2020 Prius Model: ** \(priusModel) not found **")
        }

        print("\n\t\t\t\tAccessory Packages Selected:")
        if (priusAccPkgBuild.count) > 0 {
            for item in priusAccPkgBuild {
                print("\t\t\t\t\tPackage: \(PriusStructures().priusAccPkgsDictionary[item]?.desc ?? "Accessory Package not Available")")
                print("\t\t\t\t\t\tIncludes: \(PriusStructures().priusAccPkgsDictionary[item]?.incls ?? "Invalid - Nothing Included")")
            }
        } else {
            print("\t\t\t\t** No Accessory Packages Selected **")
        }

        print("\n\t\t\t\tExternal Accessories Selected:")
        if (priusExtAccBuild.count) > 0 {
            for item in priusExtAccBuild {
                print("\t\t\t\t\t\(item)")
            }
        } else {
            print("\t\t\t\t** No External Accessories Selected **")
        }

        print("\n\t\t\t\tInternal Accessories Selected:")
        if (priusIntAccBuild.count) > 0 {
            for item in priusIntAccBuild {
                print("\t\t\t\t\t\(item)")
            }
        } else {
            print("\t\t\t\t** No Internal Accessories Selected **")
        }




    }
}
