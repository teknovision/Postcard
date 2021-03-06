//
//  ViewController.swift
//  Postcard
//
//  Created by Philippe Coley on 20/09/14.
//  Copyright (c) 2014 Chop Chop!. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Enter Message
    @IBOutlet weak var messageLabel: UILabel!
    
    // Your Name
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterAMessageTextField: UITextField!

    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Code will evaluate when we press the button
        //Your Name
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        nameLabel.textColor = UIColor.blueColor()
        // Your Message
        messageLabel.hidden = false
        messageLabel.text = enterAMessageTextField.text
        enterAMessageTextField.text = ""
        enterAMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        //Addinga comment
    }


    

}

