//
//  CitiesViewController.swift
//  Elinext
//
//  Created by User on 8/29/19.
//  Copyright © 2019 TestCompany. All rights reserved.
//

import UIKit

class CitiesViewController: UIViewController {

    // MARK: - Outlets

    @IBOutlet private weak var citiesTableView: UITableView!

    // MARK: - Variables

    private(set) var cities: [City] = []

    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        loadJson()
        citiesTableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 35, right: 0)
    }

    // MARK: - Helper Methods

    private func loadJson() {
        if let path = Bundle.main.path(forResource: "cities", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                if let cities = try JSONDecoder().decode([String: [City]].self, from: data)["city"] {
                    self.cities = cities
                }
            } catch {
                print("Error! Unable to parse cities.json")
            }
        }
    }
}

extension CitiesViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cityCell = tableView.dequeueReusableCell(withIdentifier: "CityCellTableViewCell", for: indexPath) as? CityCellTableViewCell
        cityCell?.configure(city: cities[indexPath.row])
        return cityCell ?? UITableViewCell()
    }
}

extension CitiesViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
