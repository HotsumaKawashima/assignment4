//
//  DetailsViewController.swift
//  Assignment4
//
//  Created by user169339 on 4/27/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    var city: City!

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)

        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .center

        let countryLabel = UILabel()
        countryLabel.text = "Country"
        let countryIcon = UILabel()
        countryIcon.text = city.icon

        let cityLabel = UILabel()
        cityLabel.text = "City"
        let cityName = UILabel()
        cityName.text = city.name

        let temperatureLabel = UILabel()
        temperatureLabel.text = "Temperature"
        let tempertureName = UILabel()
        tempertureName.text = String(city.temp)

        let summaryLabel = UILabel()
        summaryLabel.text = "Summary"
        let summaryName = UILabel()
        summaryName.text = city.summary

        stackView.addArrangedSubview(countryLabel)
        stackView.addArrangedSubview(countryIcon)
        stackView.addArrangedSubview(cityLabel)
        stackView.addArrangedSubview(cityName)
        stackView.addArrangedSubview(temperatureLabel)
        stackView.addArrangedSubview(tempertureName)
        stackView.addArrangedSubview(summaryLabel)
        stackView.addArrangedSubview(summaryName)

        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.6),
            stackView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])

    }

}
