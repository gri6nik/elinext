//
//  Model.swift
//  Elinext
//
//  Created by User on 9/10/19.
//  Copyright © 2019 TestCompany. All rights reserved.
//

import UIKit

struct ResponseData: Decodable {
    var city: [City] = []

    private enum CodingKeys: String, CodingKey {
        case city = "city"
    }
}

struct City: Decodable {
    var cityName: String
    var countryCode: String
    var description: String

    private enum CodingKeys: String, CodingKey {
        case cityName, countryCode, description
    }
}
