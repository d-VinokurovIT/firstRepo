import UIKit

class BuyScreenCoordinator: Coordinator {
    
    private let presenter: UINavigationController
    private var buyViewController: BuyViewController?
    
    init(presenter: UINavigationController) {
        self.presenter = presenter
    }
    
    func start() {
        let buyViewController = BuyViewController(nibName: nil, bundle: nil)
        buyViewController.title = "Buy"
        presenter.pushViewController(buyViewController, animated: true)
        
        self.buyViewController = buyViewController
    }
}
