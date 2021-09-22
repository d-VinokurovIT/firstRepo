import UIKit

class BuyScreenCoordinator: Coordinator {

    private var buyViewController: BuyViewController?
    private var transitionHandler: TransitionHandler?

    init(transitionHandler: TransitionHandler) {
        self.transitionHandler = transitionHandler
    }

    func start() {
        let buyViewController = BuyViewController(nibName: nil, bundle: nil)
        buyViewController.title = "Buy view controller"
        transitionHandler?.push(controller: buyViewController, animated: true)
        self.buyViewController = buyViewController
    }

}
