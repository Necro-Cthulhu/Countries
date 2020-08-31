//
//  CountryClass.swift
//  Countries
//
//  Created by Никита Груздев on 06.08.2020.
//  Copyright © 2020 Никита Груздев. All rights reserved.
//

import UIKit

class Country {
    
    var name: String
    var capital: String
    var imageName: String
    
    init(name: String, capital: String, imageName: String) {
        self.name = name
        self.capital = capital
        self.imageName = imageName
    }
}
