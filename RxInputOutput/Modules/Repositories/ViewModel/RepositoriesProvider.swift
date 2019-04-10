//
//  RepositoriesProvider.swift
//  RxInputOutput
//
//  Created by Aleksandr Malina on 10/04/2019.
//  Copyright © 2019 Aleksandr Malina. All rights reserved.
//

import RxSwift

protocol RepositoriesProvider: class {

  func obtainRepositories() -> Observable<[Repository]>
}
