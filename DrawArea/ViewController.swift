//
//  ViewController.swift
//  DrawArea
//
//  Created by Ömer Koçbil on 8.11.2016.
//  Copyright © 2016 Ömer Koçbil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var drawView: AnyObject?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clearTapped() {
        let theDrawView: DrawView = drawView as! DrawView
        theDrawView.lines = []
        theDrawView.setNeedsDisplay()
    }
    
    @IBAction func colorTapped(button: UIButton!){
        let theDrawView: DrawView = drawView as! DrawView
        var color: UIColor!
        
        if button.titleLabel?.text == "Red" {
            color = UIColor.red
        }
        else if button.titleLabel?.text == "Black" {
            color = UIColor.black
        }
        
        theDrawView.drawColor = color 
    }

}

