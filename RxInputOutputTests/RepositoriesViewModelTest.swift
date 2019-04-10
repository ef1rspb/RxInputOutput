//
//  RepositoriesViewModelTest.swift
//  RxInputOutputTests
//
//  Created by Aleksandr Malina on 10/04/2019.
//  Copyright © 2019 Aleksandr Malina. All rights reserved.
//

import XCTest
import RxSwift
import RxTest
@testable import RxInputOutput

class RepositoriesViewModelTest: XCTestCase {

  private class MockRepositoriesProvider: RepositoriesProvider {

    func obtainRepositories() -> Observable<[Repository]> {
      let repos = [
        Repository(id: 0, name: "first", description: ""),
        Repository(id: 1, name: "second", description: "")
      ]
      return .just(repos)
    }
  }

  var viewModel: RepositoriesViewModel!
  var scheduler: TestScheduler!
  var disposeBag: DisposeBag!

  override func setUp() {
    scheduler = TestScheduler(initialClock: 0)
    disposeBag = DisposeBag()
  }

  func testPassRepositoriesFromProvider() {
    let provider = MockRepositoriesProvider()
    viewModel = RepositoriesViewModel(provider: provider)

    let repos = scheduler.createObserver([Repository].self)

    viewModel.output.repositories
      .subscribe(repos)
      .disposed(by: disposeBag)

    scheduler.start()

    XCTAssertTrue(repos.events.count > 0)
  }
}
