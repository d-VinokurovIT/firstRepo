import UIKit

class MainScreenCoordinator: Coordinator {
    
    private let presenter: UINavigationController
    private var mainViewController: MainViewController?
    
    init(presenter: UINavigationController) {
        self.presenter = presenter
    }
    
    func start() {
        let mainViewController = MainViewController(nibName: nil, bundle: nil)
        mainViewController.title = "Main"
        presenter.pushViewController(mainViewController, animated: true)
        
        self.mainViewController = mainViewController
    }
}
