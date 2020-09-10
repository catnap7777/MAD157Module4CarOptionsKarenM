//
//  AccViewController.swift
//  MAD157Module4CarOptionsKarenM
//
//  Created by Karen Mathes on 9/9/20.
//  Copyright © 2020 TygerMatrix Software. All rights reserved.
//

import UIKit

class AccViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var priusType = ""
    var priusTypeDesc = ""
    var priusTypePrice = 0.0
    var priusColor = ""
    var pickerAccPkgData: [String] = [String]()
    var pictureNameString = ""
    var accPkgKey = ""
    
    var priusAccPkgsDictionary = ["ALLWFLP": (desc: "All-Weather Floor Liner Package", incls: "All-Weather Floor Liners, Cargo Liner"),
                                  "CMP": (desc: "Carpet Mat Package", incls: "Carpet Floor Mats, Carpet Cargo Mat"),
                                  "FSFMLP": (desc: "Four Season FLoor Mat/Liner Package", incls: "Carpet Floor Mats, Carpet Cargo Mat, All-Weather Floor Liners"),
                                  "PAP": (desc: "Preferred Accessory Package", incls: "Carpet Floor Mats, Carpet Cargo Mat, Rear Bumper Applique, Cargo Net - Envelope"),
                                  "PP3": (desc: "Protection Package #3", incls: "Body Side Moldings, Door Edge Guards, Rear Bumper Applique")
    ]
    
    @IBOutlet var accPicker: UIPickerView!
    @IBOutlet var carTypeLabel: UILabel!
    @IBOutlet var carColorLabel: UILabel!
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerAccPkgData.count
    }
//..
//.. old function (w titleForRow) is ok unless changing font; then use one with
//..    viewForRow (see below)
//    func pickerView( _ pickerView: UIPickerView, titleForRow row: Int, forComponent component:         Int) -> String? {
//        //return pickerAccPkgData[row]
//        let accPkgKey = priusAccPkgsDictionary[pickerAccPkgData[row]]
//        return ("\(pickerAccPkgData[row]) - \(accPkgKey?.desc ?? "no desc") - \n \(accPkgKey?.incls ?? "")")
//    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        var pickerLabel = UILabel()
        let accPkgKey2 = priusAccPkgsDictionary[pickerAccPkgData[row]]
//        pickerLabel.text = ("\(pickerAccPkgData[row]) - \(accPkgKey?.desc ?? "no desc") - \(accPkgKey?.incls ?? "")")
        pickerLabel.text = ("\(pickerAccPkgData[row]) - \(accPkgKey2?.desc ?? "no desc")")
        
        if UIDevice.current.userInterfaceIdiom == .pad {
            pickerLabel.font = UIFont.systemFont(ofSize: 16)
            //pickerLabel.text = "Row \(row)"  //.. not needed bc set above
        } else if UIDevice.current.userInterfaceIdiom == .phone {
            pickerLabel.font = UIFont.systemFont(ofSize: 16)
            //pickerLabel.font = UIFont.systemFont(ofSize: 14)
            //pickerLabel.text = "Row \(row)"  //.. not needed bc set above
        }
        
        return pickerLabel
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let pickerAccPkgIndex = accPicker.selectedRow(inComponent: 0)
        accPkgKey = pickerAccPkgData[row]
        print("acc pkg chosen (ie. key) = \(accPkgKey)")
        
        
        
//        //.. tags are used to distinguish between the two picker on the view controller
//        if pickerView.tag == 1 {
//            let pickerTypeIndex = pickCarTypeObj.selectedRow(inComponent: 0)
//            carTypeChosen = pickerTypeData[pickerTypeIndex]
//
//            carTypeDesc = priusModelDictionary[carTypeChosen]?.desc as! String
//            carTypePrice = priusModelDictionary[carTypeChosen]?.price as! Double
//            print("pickerView tag1 triggered")
//        }
//        
//       
//        }
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        accPicker.delegate = self
        accPicker.dataSource = self

        for (k,v) in priusAccPkgsDictionary {
            pickerAccPkgData.append(k)
            print("key added to pickerAccPkgData array: \(k)")
        }
        
        pickerAccPkgData.sort()
        
        print("in new view controller for accessories")
        print("priusType = \(priusType)")
        print("priusTypeDesc = \(priusTypeDesc)")
        print("priusTypePrice = \(priusTypePrice)")
        print("priusColor = \(priusColor)")
        print("pictureNameString in second VC = \(pictureNameString)")
        
        let priusTypeComp = ("\(priusType) - \(priusTypeDesc) - $\(priusTypePrice)")
        
        //carTypeLabel.text = priusType
        carTypeLabel.text = priusTypeComp
        carColorLabel.text = priusColor
        
        //.. this code is used to set initial values before pickers move
        var accPkg = pickerAccPkgData[0]
        accPkgKey = pickerAccPkgData[0]
        var accPkgDesc = priusAccPkgsDictionary[accPkg]?.desc
        var accPkgIncls = priusAccPkgsDictionary[accPkg]?.incls
        
    }
    

    @IBAction func displaySummary(_ sender: Any) {
        print("button clicked")
        self.performSegue(withIdentifier: "showSummarySegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nv2 = segue.destination as! SumViewController

        nv2.priusColor = priusColor
        nv2.priusType = priusType
        nv2.priusTypeDesc = priusTypeDesc
        nv2.priusTypePrice = priusTypePrice
        nv2.pictureNameString = pictureNameString
        print("accPkgKey = \(accPkgKey)")
        print("dictionary acc desc = \(priusAccPkgsDictionary[accPkgKey]?.desc ?? "yyy")")
        print("dictionary acc incls = \(priusAccPkgsDictionary[accPkgKey]?.incls ?? "zzz")")
        nv2.accPkg = accPkgKey
        nv2.accPkgDesc = priusAccPkgsDictionary[accPkgKey]?.desc as! String
        nv2.accPkgIncls = priusAccPkgsDictionary[accPkgKey]?.incls as! String
        
        
//        print("the color of the car chosen on first vc = \(carColorChosen)")
//        print("the type of the car chosen on first vc = \(carTypeChosen)")
//        nv2.priusColor = carColorChosen
//        nv2.priusType = carTypeChosen
//        nv2.priusTypeDesc = carTypeDesc
//        nv2.priusTypePrice = carTypePrice
        
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
