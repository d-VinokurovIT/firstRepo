import UIKit

class CreateAccountScreenCoordinator: Coordinator {
    
    private let presenter: UINavigationController
    private var createAccountViewController: CreateAccountViewController?
    
    init(presenter: UINavigationController) {
        self.presenter = presenter
    }
    
    func start() {
        let createAccountViewController = CreateAccountViewController(nibName: nil, bundle: nil)
        createAccountViewController.title = "Create Account"
        presenter.pushViewController(createAccountViewController, animated: true)
        
        self.createAccountViewController = createAccountViewController
    }
    
}
