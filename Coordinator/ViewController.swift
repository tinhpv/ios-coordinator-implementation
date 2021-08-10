//
//  ViewController.swift
//  Coordinator
//
//  Created by TinhPV on 8/10/21.
//

import UIKit

class ViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        title = "RED"
        
        
        let navButton = UIButton(frame: .zero)
        navButton.translatesAutoresizingMaskIntoConstraints = false
        navButton.setTitle("Navigate to 2nd", for: .normal)
        view.addSubview(navButton)
        navButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        navButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        navButton.addTarget(self, action: #selector(onTapNavigation(_:)), for: .touchUpInside)
    }
    
    @objc func onTapNavigation(_ sender: UIButton) {
        coordinator?.eventOccured(with: .buttonTapped)
    }
}

