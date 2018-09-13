//
//  ViewController.swift
//  Picker
//
//  Created by Alumno on 13/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var imgFoto: UIImageView!
    
    let instrumentos = ["Acordeon", "Bajo", "Bateria", "Guitarra", "Piano", "Saxofon", "Trompeta", "Violin", "Xilofono"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return instrumentos.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return instrumentos[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch row {
        case 0:
            imgFoto.image = UIImage(named: "Acordeon")
        case 1:
            imgFoto.image = UIImage(named: "Bajo")
        case 2:
            imgFoto.image = UIImage(named: "Bateria")
        case 3:
            imgFoto.image = UIImage(named: "Guitarra")
        case 4:
            imgFoto.image = UIImage(named: "Piano")
        case 5:
            imgFoto.image = UIImage(named: "Saxofon")
        case 6:
            imgFoto.image = UIImage(named: "Trompeta")
        case 7:
            imgFoto.image = UIImage(named: "Violin")
        case 8:
            imgFoto.image = UIImage(named: "Xilofono")
        default:
            break
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

