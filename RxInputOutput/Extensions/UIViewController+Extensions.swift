//
//  UIViewController+Extensions.swift
//  RxInputOutput
//
//  Created by Aleksandr Malina on 11/04/2019.
//  Copyright © 2019 Aleksandr Malina. All rights reserved.
//

import UIKit

extension UIViewController {

  func embedInNavigation() -> UINavigationController {
    return UINavigationController(rootViewController: self)
  }
}
