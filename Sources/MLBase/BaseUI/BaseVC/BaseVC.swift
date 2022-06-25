//
//  BaseVC.swift
//  WeatherToday
//
//  Created by Alaattin Bedir on 15.06.2022.
//

import UIKit
import RxSwift

public protocol ViewModelData {}

open class BaseVC<VM>: BaseDataVC where VM: BaseVM {
    public lazy var viewModel: VM = VM()

    open override func viewDidLoad() {
        super.viewDidLoad()
        subscribeViewStateChanges()
        setResources()
        setAccessibilityIdentifiers()
        print("*** \(String(describing: type(of: self))) initialized")
    }

    private func subscribeViewStateChanges() {
        viewModel.state.subscribe { [weak self] state in
            self?.onStateChanged(state)
        }.disposed(by: viewModel.disposeBag)
    }

    open override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }

    open override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }

    open func onStateChanged(_ state: ViewState) {
        // Intentionally unimplemented
    }

    open func setResources() {
        // Intentionally unimplemented
    }

    open func setAccessibilityIdentifiers() {
        // Intentionally unimplemented
    }

    open override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    deinit {
        print("*** \(String(describing: type(of: self))) deinitialized")
    }
}
