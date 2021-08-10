//
//  SceneDelegate.swift
//  Coordinator
//
//  Created by TinhPV on 8/10/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    var coordinator: MainCoordinator?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let navigationVC = UINavigationController()
        coordinator = MainCoordinator(navigationController: navigationVC)
        coordinator?.start()
        
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = navigationVC
        window.makeKeyAndVisible()
        self.window = window
    }

}

