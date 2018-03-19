//
//  CustomCell.swift
//  BinaryCounter
//
//  Created by Maria Teresa Rojo on 1/18/18.
//  Copyright © 2018 Maria Rojo. All rights reserved.
//

// we have to use UIKit to have access to UITableViewCell
import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    
    weak var delegate: CustomDelegate?
    
    @IBAction func calculate(_ sender: UIButton) {
        delegate?.calculate(self, with:sender)
    }
    
}

