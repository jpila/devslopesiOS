//
//  ViewController.swift
//  MiraclePills
//
//  Created by JOSE PILAPIL on 2017-02-15.
//  Copyright © 2017 JOSE PILAPIL. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var sucessImage: UIImageView!
    let states = ["Alaska", "Alabama", "California", "New York", "Florida", "Connecticut", "Idaho", "Minnesota"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
               
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        
    }
    @IBAction func buyNowPressed(_ sender: AnyObject) {
        for subview in view.subviews{
            subview.isHidden = true
        }
        sucessImage.isHidden = false
        
    }
    
    //MARK : Picker Functions

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.titleLabel?.text = states[row] 
        statePicker.isHidden = true
    }
}

