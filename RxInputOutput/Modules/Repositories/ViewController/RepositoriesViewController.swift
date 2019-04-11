//
//  RepositoriesViewController.swift
//  RxInputOutput
//
//  Created by Aleksandr Malina on 10/04/2019.
//  Copyright © 2019 Aleksandr Malina. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

final class RepositoriesViewController: UITableViewController {

  // MARK: - Properties

  private let viewModel: RepositoriesViewModel
  private let disposeBag = DisposeBag()

  // MARK: - Initializers

  init(viewModel: RepositoriesViewModel) {
    self.viewModel = viewModel
    super.init(nibName: nil, bundle: nil)
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  // MARK: - View lifecycle

  override func viewDidLoad() {
    super.viewDidLoad()

    title = "GitHub repositories"
    bindTableView()
  }

  // MARK: - Binding

  private func bindTableView() {
    tableView.delegate = nil
    tableView.dataSource = nil
    tableView.rowHeight = UITableView.automaticDimension
    tableView.estimatedRowHeight = 44.0
    tableView.tableFooterView = UIView()
    tableView.registerClassForCell(RepositoryTableViewCell.self)

    viewModel.output.repositories
      .bind(to: tableView.rx.items(
          cellIdentifier: RepositoryTableViewCell.reuseIdentifier,
          cellType: RepositoryTableViewCell.self
        )
      ) { _, model, cell in
        let data = RepositoryTableViewCell.CellData(name: model.name, description: model.description)
        cell.configure(with: data)
      }
      .disposed(by: disposeBag)
  }
}
