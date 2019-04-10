//
//  RepositoriesViewController.swift
//  RxInputOutput
//
//  Created by Aleksandr Malina on 10/04/2019.
//  Copyright © 2019 Aleksandr Malina. All rights reserved.
//

import UIKit
import RxSwift

final class RepositoriesViewController: UITableViewController {

  var viewModel: RepositoriesViewModel!

  private let disposeBag = DisposeBag()

  override func viewDidLoad() {
    super.viewDidLoad()

    viewModel.output.repositories
      .subscribe(onNext: {
        print($0)
      })
      .disposed(by: disposeBag)
  }
}
