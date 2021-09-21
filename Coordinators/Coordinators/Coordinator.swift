//
//  Coordinator.swift
//  Coordinators
//
//  Created by Денис Винокуров on 21.09.2021.
//

import Foundation
import UIKit
protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
