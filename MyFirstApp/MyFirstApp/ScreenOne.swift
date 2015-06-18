//
//  ScreenOne.swift
//  MyFirstApp
//
//  Created by Karl Oscar Weber on 9/14/14.
//  Copyright (c) 2014 Karl Oscar Weber. All rights reserved.
//

import UIKit

class ScreenOne: UIViewController, UITextFieldDelegate {

    let myLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRectMake(20, 40, 280, 40)
        label.font = UIFont(name: "Helvetica", size: 16)
        label.text = "Hello World"
        return label
        }()
    
    var myName = ""
    
    var nameField: UITextField = {
        let field = UITextField()
        field.frame = CGRectMake(20, 100, 280, 40)
        field.font = UIFont(name: "Helvetica", size: 16)
        field.layer.borderColor = UIColor.blackColor().CGColor
        field.layer.borderWidth = 1.0
        return field
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myName = "Karl"
        myLabel.text = "Hello \(myName). My name is dave."
        nameField.delegate = self
        self.view.addSubview(myLabel)
        self.view.addSubview(nameField)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        myName = textField.text
        myLabel.text = "Hello \(myName). My name is dave."
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(textField: UITextField!) {
        
    }

}
