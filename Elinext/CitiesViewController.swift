//
//  CitiesViewController.swift
//  Elinext
//
//  Created by User on 8/29/19.
//  Copyright © 2019 TestCompany. All rights reserved.
//

import Foundation
import UIKit

struct InfoCity {
    let city: String
    let countryCode: String
    let description: String

}

class CitiesViewContoller: UIViewController {

    @IBOutlet weak var CitiesTableView: UITableView!
}
