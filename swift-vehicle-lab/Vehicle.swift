//
//  Vehicle.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
   
    
    let name: String
    let weight: Double
    let maxSpeed: Double
    var speed: Double
    var heading : Double
    let speedIncrement : Double
    
    init (name nameIn: String, weight weightIn: Double, maxSpeed maxIn: Double) {
        self.name = nameIn
        self.maxSpeed = maxIn
        self.weight = weightIn
        self.heading = 0
        self.speed = 0
        self.speedIncrement = 0.1 * maxSpeed
    }
    
        func goFast () {
        speed = maxSpeed
    }
    func halt () {
        speed = 0
    }
    func accelerate() {
        speed += speedIncrement
        speedCheck()
    }
    func decelerate () {
        speed -= speedIncrement
        speedCheck()
    }
    func headingCheck() {
        if heading < 0 {
            heading = heading + 360
        } else if heading > 360 {
            heading = heading - 360
        }
    }
    func speedCheck(){
        if speed > maxSpeed {
            speed = maxSpeed
        }else if speed < 0 {
            speed = 0
        }
    }
    func turnRight () {
        if speed > 0 {
            speed = 0.5 * speed
            heading += 90
        }
        headingCheck()
        speedCheck()
    }
    func turnLeft () {
        if speed > 0 {
            speed = 0.5 * speed
            heading -= 90
        }
        speedCheck()
        headingCheck()
    }
    
}

enum Transmission {
    case Automatic, Manual
}
