//
//  RootController.swift
//  SimpleTable
//
//  Created by Max Schoening on 1/15/16.
//  Copyright © 2016 Canvas. All rights reserved.
//

import UIKit

class RootViewController: UITableViewController {

	let names = ["Hello", "World"]

	override func viewDidLoad() {
		super.viewDidLoad()

		title = "Canvases"
		tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
	}

	override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return names.count
	}

	override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
		cell.textLabel?.text = names[indexPath.row]
		cell.accessoryType = .DisclosureIndicator
		return cell
	}

	override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
		let viewController = DetailViewController(name: names[indexPath.row])
		navigationController?.pushViewController(viewController, animated: true)
	}
}
