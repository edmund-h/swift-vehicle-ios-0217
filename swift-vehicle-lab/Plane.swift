//
//  Plane.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane : Vehicle {
    var inFlight: Bool {
        return  altitude > 0 && speed > 0
    }
    var altitude: Double
    let maxAltitude: Double
    
    init (name nameIn: String, weight weightIn: Double, maxSpeed maxIn: Double, maxAltitude maxAltIn: Double) {
        self.altitude = 0 
        self.maxAltitude = maxAltIn
        //self.inFlight = false
        super.init(name: nameIn, weight: weightIn, maxSpeed: maxIn)
    }
//    func //flightCheck () {
//        inFlight = altitude > 0 && speed > 0
//    }
    func altitudeCheck () {
        if altitude > maxAltitude{
            altitude = maxAltitude
        } else if altitude < 0 {
            altitude = 0
        }
    }
    func takeoff () {
        //flightCheck()
        if !inFlight {
            speed += speedIncrement
            altitude += 0.1 * maxAltitude
        }
        //flightCheck()
    }
    func land () {
        //flightCheck()
        speed = 0
        altitude = 0
        //flightCheck()
    }
    func climb () {
        //flightCheck()
        if inFlight {
            altitude += 0.1 * maxAltitude
            decelerate()
        }
        altitudeCheck()
        //flightCheck()
    }
    func dive () {
        //flightCheck()
        if inFlight || (altitude > 0)
        {
            altitude -= 0.1 * maxAltitude
            accelerate()
        }
        altitudeCheck()
        //flightCheck()
    }
    func bankRight () {
        //flightCheck()
        if inFlight {
            heading += 45
            speed -= speed * 0.1
        }
        speedCheck()
        headingCheck()
        //flightCheck()
    }
    func bankLeft () {
        //flightCheck()
        if inFlight {
            heading -= 45
            speed -= speed * 0.1
        }
        speedCheck()
        headingCheck()
        //flightCheck()
    }
}
