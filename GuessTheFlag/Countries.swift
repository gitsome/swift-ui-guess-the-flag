//
//  Countries.swift
//  GuessTheFlag
//
//  Created by john martin on 9/11/22.
//

import Foundation
import UIKit

struct Country {
    let name: String
    let colors: [UIColor]
}

let COUNTRY_CONFIGS: [Country] = [
    Country(name: "Estonia", colors: [
        UIColor(red: 73.0/255.0, green: 145.0/255.0, blue: 217.0/255.0, alpha: 1.0),
        UIColor.black,
        UIColor.white
    ]),
    Country(name: "France", colors: [
        UIColor(red: 237.0/255.0, green: 41.0/255.0, blue: 57.0/255.0, alpha: 1.0),
        UIColor.white,
        UIColor(red: 1.0/255.0, green: 36.0/255.0, blue: 149.0/255.0, alpha: 1.0)
    ]),
    Country(name: "Germany", colors: [
        UIColor(red: 221.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0),
        UIColor.black,
        UIColor(red: 255.0/255.0, green: 206.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    ]),
    Country(name: "Ireland", colors: [
        UIColor(red: 0.0/255.0, green: 155.0/255.0, blue: 73.0/255.0, alpha: 1.0),
        UIColor.white,
        UIColor(red: 255.0/255.0, green: 122.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    ]),
    Country(name: "Italy", colors: [
        UIColor(red: 1.0/255.0, green: 146.0/255.0, blue: 70.0/255.0, alpha: 1.0),
        UIColor.white,
        UIColor(red: 207.0/255.0, green: 43.0/255.0, blue: 55.0/255.0, alpha: 1.0)
    ]),
    Country(name: "Monaco", colors: [
        UIColor(red: 206.0/255.0, green: 18.0/255.0, blue: 38.0/255.0, alpha: 1.0),
        UIColor.white
    ]),
    Country(name: "Nigeria", colors: [
        UIColor(red: 0.0/255.0, green: 135.0/255.0, blue: 81.0/255.0, alpha: 1.0),
        UIColor.white
    ]),
    Country(name: "Poland", colors: [
        UIColor(red: 221.0/255.0, green: 20.0/255.0, blue: 59.0/255.0, alpha: 1.0),
        UIColor.white
    ]),
    Country(name: "Russia", colors: [
        UIColor.white,
        UIColor(red: 0.0/255.0, green: 58.0/255.0, blue: 165.0/255.0, alpha: 1.0),
        UIColor(red: 213.0/255.0, green: 42.0/255.0, blue: 29.0/255.0, alpha: 1.0)
    ]),
    Country(name: "Spain", colors: [
        UIColor(red: 255.0/255.0, green: 196.0/255.0, blue: 0.0/255.0, alpha: 1.0),
        UIColor(red: 199.0/255.0, green: 12.0/255.0, blue: 29.0/255.0, alpha: 1.0)
    ]),
    Country(name: "UK", colors: [
        UIColor.white,
        UIColor(red: 207.0/255.0, green: 20.0/255.0, blue: 43.0/255.0, alpha: 1.0),
        UIColor(red: 0.0/255.0, green: 36.0/255.0, blue: 125.0/255.0, alpha: 1.0)
    ]),
    Country(name: "US", colors: [
        UIColor.white,
        UIColor(red: 53.0/255.0, green: 51.0/255.0, blue: 104.0/255.0, alpha: 1.0),
        UIColor(red: 177.0/255.0, green: 35.0/255.0, blue: 52.0/255.0, alpha: 1.0)
    ])
]
