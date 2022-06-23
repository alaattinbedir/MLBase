//
//  BaseViewModel.swift
//  WeatherToday
//
//  Created by Alaattin Bedir on 15.06.2022.
//


import UIKit
import RxSwift

open class BaseVM {
    public let disposeBag = DisposeBag()
    var isTimeout = false

    required public init() {
        // Intentionally unimplemented
    }

    deinit {
        print("*** \(String(describing: type(of: self))) deinitialized")
    }
}
