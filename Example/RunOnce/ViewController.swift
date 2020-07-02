//
//  ViewController.swift
//  RunOnce
//
//  Created by matteocrippa on 05/26/2017.
//  Copyright (c) 2017 matteocrippa. All rights reserved.
//

import UIKit
import RunOnce

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    Run.once {
      print("this will be shown only once")
    }
    
    Run.once("com.run.once2", action: { 
      print("this will be shown only once 2")

    }, fallback: { 
      print("this be a fallback")
    })
    
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
}

