//
//  SceneDelegate.swift
//  Coordinator
//
//  Created by TinhPV on 8/10/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    var coordinator: AppCoordinator?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        coordinator = AppCoordinator(window: .init(windowScene: windowScene))
        coordinator?.start()
    }

}

