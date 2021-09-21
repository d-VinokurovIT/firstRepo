import UIKit

class ApplicationCoordinator: Coordinator {
    
    let window: UIWindow
    let rootViewController: UINavigationController
    let mainScreenCoordinator: MainScreenCoordinator
    
    init(window: UIWindow) {
        self.window = window
        rootViewController = UINavigationController()
        rootViewController.navigationBar.prefersLargeTitles = true
        
        mainScreenCoordinator = MainScreenCoordinator(presenter: rootViewController)
    }
    
    func start() {
        window.rootViewController = rootViewController
        mainScreenCoordinator.start()
        window.makeKeyAndVisible()
    }
    
    
}
