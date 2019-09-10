//
//  TableVIewCell.swift
//  Elinext
//
//  Created by User on 8/30/19.
//  Copyright © 2019 TestCompany. All rights reserved.
//

import UIKit

class CityCellTableViewCell: UITableViewCell {

    @IBOutlet private weak var nameOfCity: UILabel!
    @IBOutlet private weak var countryCode: UILabel!

    func configure(city: City) {
        nameOfCity.text = city.cityName
        countryCode.text = city.countryCode
    }
}
