//
//  BaseDataViewController.swift
//  WeatherToday
//
//  Created by Alaattin Bedir on 15.06.2022.
//

import Foundation
import UIKit

open class BaseDataVC: UIViewController {
    open var data: ViewModelData? {
        didSet { dataUpdated() }
    }

    open func getNavVC() -> UINavigationController? {
        nil
    }

    open func dataUpdated() {
        // Intentionally unimplemented
    }
}
