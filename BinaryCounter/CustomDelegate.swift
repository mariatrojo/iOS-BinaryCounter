//
//  CustomDelegate.swift
//  BinaryCounter
//
//  Created by Maria Teresa Rojo on 1/20/18.
//  Copyright © 2018 Maria Rojo. All rights reserved.
//

import UIKit
protocol CustomDelegate: class {
    func calculate(_ sender: CustomCell, with button: UIButton)
}
