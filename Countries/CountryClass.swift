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


//let countries = Country.self

/*let countries = [Country(name: "Germany",
                         capital: "Berlin",
                         imageName: "germany"),
                 Country(name: "USA",
                         capital: "Washington",
                         imageName: "usa"),
                 Country(name: "China",
                         capital: "Beijing",
                         imageName: "china"),
                 Country(name: "Ireland",
                         capital: "Dublin",
                         imageName: "ireland"),
                 Country(name: "France",
                         capital: "Paris",
                         imageName: "france"),
                 Country(name: "Italy",
                         capital: "Rome",
                         imageName: "italy"),
                 Country(name: "Mexico",
                         capital: "Mexico City",
                         imageName: "mexico"),
                 Country(name: "Canada",
                         capital: "Ottawa",
                         imageName: "canada"),
                 Country(name: "Australia",
                         capital: "Canberra",
                         imageName: "australia"),
                 Country(name: "Albania",
                         capital: "Tirana",
                         imageName: "albania")
                 
]


*/

