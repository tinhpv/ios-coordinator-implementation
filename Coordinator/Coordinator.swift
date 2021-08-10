//
//  Coordinator.swift
//  Coordinator
//
//  Created by TinhPV on 8/10/21.
//

import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController? { get set }
    var children: [Coordinator] { get set }
    func start()
}

extension Coordinator {
    func add(coordinator: Coordinator) {
        children.append(coordinator)
    }
    
    func remove(coordinator: Coordinator) {
        children = children.filter { $0 !== coordinator }
    }
}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}
