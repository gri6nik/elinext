//
//  TableVIewCell.swift
//  Elinext
//
//  Created by User on 8/30/19.
//  Copyright © 2019 TestCompany. All rights reserved.
//

import Foundation
import UIKit

class CityCellTableViewCell: UITableViewCell {

    @IBOutlet weak var NameOfCity: UILabel!
    @IBOutlet weak var CountryCode: UILabel!

    var city: String = ""
    var countryCode: String = ""
}
