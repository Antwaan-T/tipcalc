//
//  ViewController.swift
//  TIP calc Antwaan
//
//  Created by user143130 on 8/22/18.
//  Copyright © 2018 Antwaan ThomasMorgan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var TIPLABEL: UILabel!
    
    @IBOutlet weak var bill: UITextField!
    
    @IBOutlet weak var TOTALLABEL: UILabel!
    
    @IBOutlet weak var tipctrl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func Ontap(_ sender: Any)
    {
        view.endEditing(true)
    }
    
    @IBAction func calculatetip(_ sender: Any) {
        let tipperc = [0.15, 0.2, 0.25]
        let fillie = Double(bill.text!) ?? 0
        let tip = fillie * tipperc[tipctrl.selectedSegmentIndex]
        let total = fillie + tip
        TIPLABEL.text = String(format:"$%.2f", tip)
        TOTALLABEL.text = String(format:"$%.2f", total)
    }
}

