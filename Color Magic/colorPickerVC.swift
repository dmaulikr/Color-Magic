//
//  colorPickerVC.swift
//  Color Magic
//
//  Created by Grazietta Hof on 2017-09-16.
//  Copyright © 2017 Grazietta Hof. All rights reserved.
//

import UIKit

class colorPickerVC: UIViewController {
    
    var delegate: colorTransferDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func colorButtonWasPressed(sender: UIButton){
        print(sender.titleLabel?.text!)
        delegate?.userDidChoose(color: sender.backgroundColor!, withName: sender.titleLabel!.text!)
        self.navigationController?.popViewController(animated: true)
        
    }
        
}


