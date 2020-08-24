//
//  CountryViewController.swift
//  Countries
//
//  Created by Никита Груздев on 07.08.2020.
//  Copyright © 2020 Никита Груздев. All rights reserved.
//

import UIKit

class CountryViewController: UIViewController {

    @IBOutlet weak var capitalLbl: UILabel!
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var country: Country?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if country?.imageName == nil {
            return
        }
        countryLbl.text = country?.name
        capitalLbl.text = country?.capital
        imageView.image = UIImage(named: country!.imageName)
    }

}
