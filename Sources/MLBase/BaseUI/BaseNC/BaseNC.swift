//
//  BaseNC.swift
//  WeatherToday
//
//  Created by Alaattin Bedir on 15.06.2022.
//

import UIKit

open class BaseNC: UINavigationController {
    open override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.isHidden = true
    }
}
