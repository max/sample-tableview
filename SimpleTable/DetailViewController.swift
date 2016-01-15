//
//  DetailViewController.swift
//  SimpleTable
//
//  Created by Max Schoening on 1/15/16.
//  Copyright © 2016 Canvas. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
	let name: String

	init(name: String) {
		self.name = name
		super.init(nibName: nil, bundle: nil)
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		title = name
		view.backgroundColor = .redColor()
	}

	required init?(coder aDecoder: NSCoder) {
	    fatalError("init(coder:) has not been implemented")
	}
}
