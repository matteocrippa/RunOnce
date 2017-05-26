//
//  RunOnce.swift
//  TravelGuide
//
//  Created by Matteo Crippa on 26/05/2017.
//  Copyright © 2017 Boostcode. All rights reserved.
//

import Foundation

open class Run {
  open class func once(_ identifier: String = "com.run.once", action: (Void) -> Void) {
    if UserDefaults.standard.bool(forKey: identifier) == false {
      action()
      Run.runnedOnce(identifier)
    }
  }
  
  open class func once(_ identifier: String = "com.run.once", action: (Void) -> Void, fallback: (Void) -> Void) {
    if UserDefaults.standard.bool(forKey: identifier) == false {
      action()
      Run.runnedOnce(identifier)
    } else {
      fallback()
    }
  }
  
  private class func runnedOnce(_ identifier: String) {
    UserDefaults.standard.set(true, forKey: identifier)
    UserDefaults.standard.synchronize()
  }
}
