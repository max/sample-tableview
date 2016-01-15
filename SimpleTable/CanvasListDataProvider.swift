//
//  CanvasListDataProvider.swift
//  SimpleTable
//
//  Created by Max Schoening on 1/15/16.
//  Copyright © 2016 Canvas. All rights reserved.
//

import UIKit

class CanvasListDataProvider: NSObject, UITableViewDataSource {

	func registerCellsForTableview(tableView: UITableView) {
		tableView.registerClass(UITableView.self, forCellReuseIdentifier: "Cell")
	}

	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 10
	}

	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
		cell.textLabel?.text = "Row: \(indexPath.row)"
		return cell
	}
}