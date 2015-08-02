//
//  ViewController.swift
//  TickTackToe
//
//  Created by Karl Oscar Weber on 6/20/15.
//  Copyright (c) 2015 Swift Foundations. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /*  
        remember, you must initialize all of your instance variables before
        calling super.init
        If you don't do it here you can do it in the init() method.
    */
    var button1 = UIButton()
    var button2 = UIButton()
    var button3 = UIButton()
    var button4 = UIButton()
    var button5 = UIButton()
    var button6 = UIButton()
    var button7 = UIButton()
    var button8 = UIButton()
    var button9 = UIButton()
    var buttons: Array<UIButton> = [UIButton]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    init() {
        
        // add all of the buttons to the array
        buttons.append(button1)
        buttons.append(button2)
        buttons.append(button3)
        buttons.append(button4)
        buttons.append(button5)
        buttons.append(button6)
        buttons.append(button7)
        buttons.append(button8)
        buttons.append(button9)

        // always call the designated initialiser of the super class
        super.init(nibName: nil, bundle: nil)
        
        // now we can layout buttons and stuff.
        self.layoutButtons()
    }

    /*
        I like to create a sub method to layout user interface elements.
        Doing so keeps the init method nice and clean.
    */
    func layoutButtons() {
        
        print("layoutButtons called.\n")
        print("Say hello to my little friend.")
        
        let screen = UIScreen.mainScreen().bounds
        let screenThirdHeight = screen.height / 3
        let screenThirdWidth = screen.width / 3
        
        /* 
            We should really use AutoLayout, but because this is a beginners book
            We'll just use Calculated rectangles.
        */
        self.button1.frame = CGRectMake(0, 0, screenThirdWidth, screenThirdWidth)
        self.button2.frame = CGRectMake(screenThirdWidth, 0, screenThirdWidth, screenThirdWidth)
        self.button3.frame = CGRectMake(screenThirdWidth*2, 0, screenThirdWidth, screenThirdWidth)
        self.button4.frame = CGRectMake(0, screenThirdWidth, screenThirdWidth, screenThirdWidth)
        self.button5.frame = CGRectMake(screenThirdWidth, screenThirdWidth, screenThirdWidth, screenThirdWidth)
        self.button6.frame = CGRectMake(screenThirdWidth*2, screenThirdWidth, screenThirdWidth, screenThirdWidth)
        self.button7.frame = CGRectMake(0, screenThirdWidth*2, screenThirdWidth, screenThirdWidth)
        self.button8.frame = CGRectMake(screenThirdWidth, screenThirdWidth*2, screenThirdWidth, screenThirdWidth)
        self.button9.frame = CGRectMake(screenThirdWidth*2, screenThirdWidth*2, screenThirdWidth, screenThirdWidth)
        
//        button5.backgroundColor = UIColor.blueColor()
        
        for button in buttons {
            button.layer.borderWidth = 2.0
            button.layer.borderColor = UIColor.blackColor().CGColor
            self.view.addSubview(button)
        }
        
    }

/* Not often used methods down here */
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

