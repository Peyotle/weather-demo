//
//  WeatherPresenter.swift
//  Weather
//
//  Created by Oleg Chernyshenko on 9/02/18.
//  Copyright © 2018 Tugboat. All rights reserved.
//
import UIKit

protocol WeatherPresenter {
    var backgroundColors: [CGColor] { get }
}

class WeatherPresenterImpl: WeatherPresenter {
    var backgroundColors: [CGColor] {
        return sunnyColors
    }

    private let sunnyColors: [CGColor] = {
        return [UIColor.sunnyTop.cgColor, UIColor.sunnyBottom.cgColor]
    }()

    private let snowyColors: [CGColor] = {
        return [UIColor.snowyTop.cgColor, UIColor.snowyBottom.cgColor]
    }()
}
