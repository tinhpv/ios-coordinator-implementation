//
//  SecondCoordinator.swift
//  Coordinator
//
//  Created by TinhPV on 8/11/21.
//

import UIKit

class SecondCoordinator: Coordinator {
    var navigationController: UINavigationController?
    var children: [Coordinator] = [Coordinator]()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        var vc: UIViewController & Coordinating = SecondViewController()
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }
}
