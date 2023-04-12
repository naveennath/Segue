//
//  SecondViewController.swift
//  PassingData
//
//  Created by Naveen_C on 4/10/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var textFieldSVC: UITextField!
    
    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name + " "
    }
    
}
