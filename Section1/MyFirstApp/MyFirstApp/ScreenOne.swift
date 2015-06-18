//
//  ScreenOne.swift
//  MyFirstApp
//
//  Created by Karl Oscar Weber on 7/8/14.
//  Copyright (c) 2014 Karl Oscar Weber. All rights reserved.
//

import UIKit

class ScreenOne: UIViewController, UITextFieldDelegate {
    
    // setup our awesome objects
    let myLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Helvetica", size: 16)
        let myName = "Karl"
        label.text = "Hello \(myName). My name is dave.";
        label.textAlignment = NSTextAlignment.Center
        return label
    }()
    
    var myName: String = {
        var name = ""
        return name
    }()
    
    var nameField: UITextField = {
        let field = UITextField()
        field.font = UIFont(name: "Helvetica", size: 16)
        field.layer.borderColor = UIColor.blackColor().CGColor
        field.layer.borderWidth = 1.0
        return field
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        myLabel.frame = CGRectMake(20, 40, 280, 40)
        nameField.frame = CGRectMake(20, 80, 280, 40)
        nameField.delegate = self

        // put a label on the screen
        self.view.addSubview(myLabel)
        self.view.addSubview(nameField)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        
        myName = textField.text
        myLabel.text = "Hello \(myName). My name is dave.";
        nameField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(textField: UITextField!) {
        nameField.becomeFirstResponder()
    }
    
}














