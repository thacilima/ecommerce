//
//  ItemListTableViewController.swift
//  ECommerce
//
//  Created by Thaciana Lima on 27/08/17.
//  Copyright © 2017 TL. All rights reserved.
//

import UIKit

class ItemListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.CellIds.itemCellIdentifier, for: indexPath)

        return cell
    }
}
