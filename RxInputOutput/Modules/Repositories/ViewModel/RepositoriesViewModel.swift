//
//  RepositoriesViewModel.swift
//  RxInputOutput
//
//  Created by Aleksandr Malina on 10/04/2019.
//  Copyright © 2019 Aleksandr Malina. All rights reserved.
//

import RxSwift

final class RepositoriesViewModel: ViewModelType {

  struct Input {

  }

  struct Output {
    let repositories: Observable<[Repository]>
  }

  let input: Input
  let output: Output

  init(provider: RepositoriesProvider) {
    input = Input()
    output = Output(repositories: provider.obtainRepositories())
  }
}
