//
//  MainCoordinator.swift
//  Coordinator
//
//  Created by TinhPV on 8/10/21.
//

import UIKit

class FirstCoordinator: Coordinator {
    var navigationController: UINavigationController?
    var children: [Coordinator] = [Coordinator]()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        var vc: UIViewController & Coordinating = FirstViewController()
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension FirstCoordinator {
    func moveToSecondScreen() {
        let secondCoordinator = SecondCoordinator(navigationController: navigationController!)
        add(coordinator: secondCoordinator)
        secondCoordinator.start()
    }
}

