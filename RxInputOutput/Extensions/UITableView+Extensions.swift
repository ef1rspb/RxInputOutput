//
//  UITableView+Extensions.swift
//  RxInputOutput
//
//  Created by Aleksandr Malina on 10/04/2019.
//  Copyright © 2019 Aleksandr Malina. All rights reserved.
//

import UIKit

extension UITableView {

  func registerClassForCell(_ cellClass: UITableViewCell.Type) {
    register(cellClass, forCellReuseIdentifier: cellClass.reuseIdentifier)
  }
}

extension NSObject {

  static var reuseIdentifier: String {
    return NSStringFromClass(self)
  }
}
