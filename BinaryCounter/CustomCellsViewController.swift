//
//  ViewController.swift
//  BinaryCounter
//
//  Created by Maria Teresa Rojo on 1/18/18.
//  Copyright © 2018 Maria Rojo. All rights reserved.
//

import UIKit

class CustomCellsViewController: UITableViewController, CustomDelegate {

    @IBOutlet weak var totalLabel: UILabel!
    var sum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var nums = [1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000, 10000000000, 100000000000, 1000000000000, 10000000000000, 100000000000000, 1000000000000000]
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomCell
        
        cell.numberLabel.text = "\(nums[indexPath.row])"
        cell.delegate = self

        return cell
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nums.count

    }
    
    func calculate(_ sender: CustomCell, with button: UIButton) {
        if let num = Int(sender.numberLabel.text!){
            if button.titleLabel?.text == "+"{
                sum += num
            }
            else{
                sum -= num
            }
        }
        totalLabel.text = "Total: \(String(sum))"
    }


}

