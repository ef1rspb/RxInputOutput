//
//  NavigationService.swift
//  RxInputOutput
//
//  Created by Aleksandr Malina on 11/04/2019.
//  Copyright © 2019 Aleksandr Malina. All rights reserved.
//

import UIKit
import RxSwift

final class NavigationService {

  static func makeRepositoriesModule() -> UIViewController {
    let provider = Test()
    let viewModel = RepositoriesViewModel(provider: provider)
    let viewController = RepositoriesViewController(viewModel: viewModel)
    return viewController
  }

  final class Test: RepositoriesProvider {
    func obtainRepositories() -> Observable<[Repository]> {
      let repos = [
        Repository(id: 0, name: "first", description: "Description blablabla"),
        Repository(id: 1, name: "second", description: "Description blablabla")
      ]
      return .just(repos)
    }
  }
}
