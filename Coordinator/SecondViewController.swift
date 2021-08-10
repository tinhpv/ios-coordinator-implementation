//
//  SecondViewController.swift
//  Coordinator
//
//  Created by TinhPV on 8/10/21.
//

import UIKit

class SecondViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        title = "BLUE"
    }
}
