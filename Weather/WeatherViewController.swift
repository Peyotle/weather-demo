//
//  ViewController.swift
//  Weather
//
//  Created by Oleg Chernyshenko on 12/01/18.
//  Copyright © 2018 Tugboat. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController {
    var mainView: WeatherView! { return self.view as! WeatherView }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func loadView() {
        self.view = WeatherView(frame: UIScreen.main.bounds)
    }

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        let isLandscape = size.width > size.height
        if isLandscape {
            mainView.centerContentStack.axis = .horizontal
        } else {
            mainView.centerContentStack.axis = .vertical
        }
    }
}
