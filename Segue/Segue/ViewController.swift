//
//  ViewController.swift
//  PassingData
//
//  Created by Naveen_C on 4/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let name = textField.text ?? ""
        
        let destinationVC = segue.destination as! SecondViewController
        destinationVC.name = name
    }
    
    @IBAction func performUnwindSegueOperation(_ sender: UIStoryboardSegue) {
    guard let VC = sender.source as? SecondViewController else { return }
        if VC.textFieldSVC.text == "123" {
            textField.isHidden = true
            label.text = "Hi, " + VC.name
            button.setImage(UIImage(systemName: "homekit"), for: .normal)
        }
    }
}

