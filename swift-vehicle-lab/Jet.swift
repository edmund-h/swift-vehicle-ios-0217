//
//  Jet.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet : Plane {
    
    override func climb() {
        //flightCheck()
        if inFlight {
            altitude += 0.2 * maxAltitude
            decelerate()
        }
        altitudeCheck()
    }
    override func dive () {
        //flightCheck()
        if inFlight {
            altitude -= 0.2 * maxAltitude
            accelerate()
        }
        altitudeCheck()
       // flightCheck()
    }
    
    func afterburner () {
       // flightCheck()
        if speed == maxSpeed {
            speed = maxSpeed * 2
        }
    }
}
