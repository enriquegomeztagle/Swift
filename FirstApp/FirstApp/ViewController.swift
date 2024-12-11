//
//  ViewController.swift
//  FirstApp
//
//  Created by iOS Lab on 31/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cow: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cow.image = UIImage(imageLiteralResourceName: "AppIcon")
    }
    
    
    @IBAction func onbuttonpress(_ sender: UIButton) {
        print("I was pressed")
    }
}

