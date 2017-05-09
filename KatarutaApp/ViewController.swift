//
//  ViewController.swift
//  KatarutaApp
//
//  Created by benzentarou on 2017/05/07.
//  Copyright © 2017年 benzentarou. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var numberLabel: UILabel!
    
    let datalist = ["1","2","3","4","5","6","7","8","9","10"]
    var selectedNum: String = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.dataSource = self
        picker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //picker viewの列は1とする
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return datalist.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return datalist[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        numberLabel.text = "\(datalist[row])枚"
        selectedNum = datalist[row]
        print("selectedNUm: " + selectedNum)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let playVC = segue.destination as! playViewController
        playVC.numberOfCard = Int(selectedNum)!
    }
    
}
