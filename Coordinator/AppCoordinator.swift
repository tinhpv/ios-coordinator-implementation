//
//  AppCoordinator.swift
//  Coordinator
//
//  Created by TinhPV on 8/11/21.
//

import UIKit

class AppCoordinator: Coordinator {
    var navigationController: UINavigationController? = {
        return .init()
    }()
    var children: [Coordinator] = []
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }

    func start() {
        let firstCoordinator = FirstCoordinator(navigationController: navigationController!)
        self.add(coordinator: firstCoordinator)
        firstCoordinator.start()
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
