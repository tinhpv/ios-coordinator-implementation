//
//  Coordinator.swift
//  Coordinator
//
//  Created by TinhPV on 8/10/21.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController? { get set }
    var children: [Coordinator] { get set }
    func start()
}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}
