//
//  ViewController.swift
//  iOS Color Picker
//
//  Created by Padman on 04/02/2020.
//  Copyright © 2020 Padman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pickerView.delegate = self
        pickerView.dataSource = self
    }

    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row]
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selected = row
        if (selected == 0) {
            imageView.backgroundColor = UIColor.systemBlue
        } else if (selected == 1) {
            imageView.backgroundColor = UIColor.systemPurple
        } else if (selected == 2) {
            imageView.backgroundColor = UIColor.systemYellow
        } else if (selected == 3) {
            imageView.backgroundColor = UIColor.systemOrange
        } else if (selected == 4) {
            imageView.backgroundColor = UIColor.systemTeal
        } else if (selected == 5) {
            imageView.backgroundColor = UIColor.cyan
        } else if (selected == 6) {
            imageView.backgroundColor = UIColor.systemPink
        } else if (selected == 7) {
            imageView.backgroundColor = UIColor.brown
        } else if (selected == 8) {
            imageView.backgroundColor = UIColor.magenta
        } else if (selected == 9) {
            imageView.backgroundColor = UIColor.systemRed
        } else if (selected == 10) {
            imageView.backgroundColor = UIColor.darkGray
        } else if (selected == 11) {
            imageView.backgroundColor = UIColor.systemGreen
        } else if (selected == 12) {
            imageView.backgroundColor = UIColor.systemIndigo
        }
    }

}

