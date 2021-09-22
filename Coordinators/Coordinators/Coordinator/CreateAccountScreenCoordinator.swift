import UIKit

class CreateAccountScreenCoordinator: Coordinator, CreateAccountScreenRouter {

    private var createAccountViewController: CreateAccountViewController?
    private var transitionHandler: TransitionHandler
    private var childCoordinators = [Coordinator]()

    init(transitionHandler: TransitionHandler) {
        self.transitionHandler = transitionHandler
    }

    func start() {
        let createAccountViewController = CreateAccountViewController(nibName: nil, bundle: nil)
        createAccountViewController.title = "Create account view controller"
        createAccountViewController.createAccountScreenCoordinator = self
        transitionHandler.push(controller: createAccountViewController, animated: true)
    }
    
    func navigateToBuy() {
        let buyScreenCoordinator = BuyScreenCoordinator(transitionHandler: transitionHandler)
        childCoordinators.append(buyScreenCoordinator)
        buyScreenCoordinator.start()
    }

}
