//
//  MainCoordinator.swift
//  Coordinator
//
//  Created by TinhPV on 8/10/21.
//

import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController?
    var children: [Coordinator] = [Coordinator]()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        var vc: UIViewController & Coordinating = ViewController()
        vc.coordinator = self
        navigationController?.setViewControllers([vc], animated: true)
    }
}

