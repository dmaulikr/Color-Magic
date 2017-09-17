//
//  colorPresenterVC.swift
//  Color Magic
//
//  Created by Grazietta Hof on 2017-09-16.
//  Copyright © 2017 Grazietta Hof. All rights reserved.
//

import UIKit

class colorPresenterVC: UIViewController, colorTransferDelegate{

    @IBOutlet weak var colorNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func userDidChoose(color: UIColor, withName colorName: String) {
        view.backgroundColor = color
        colorNameLabel.text = colorName
         
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorPickerVC" {
            guard let colorPickerVC = segue.destination as? colorPickerVC else {return}
            colorPickerVC.delegate = self
            
        }
    }



}
