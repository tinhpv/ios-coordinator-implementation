//
//  Coordinator.swift
//  Coordinator
//
//  Created by TinhPV on 8/10/21.
//

import UIKit

enum Event {
    case buttonTapped
}

protocol Coordinator {
    var navigationController: UINavigationController? { get set }
    var children: [Coordinator]? { get set }
    
    func start()
    func eventOccured(with type: Event)
}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
    
    
}
