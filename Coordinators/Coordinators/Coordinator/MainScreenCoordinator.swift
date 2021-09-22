import UIKit

class MainScreenCoordinator: Coordinator, MainScreenRouter {

    private var transitionHandler: TransitionHandler
    private var childCoordinator = [Coordinator]()

    init(transitionHandler: TransitionHandler) {
        self.transitionHandler = transitionHandler
    }

    func start() {
        let mainViewController = MainViewController(nibName: nil, bundle: nil)
        mainViewController.title = "Main"
        mainViewController.mainScreenCoordinator = self
        transitionHandler.push(controller: mainViewController, animated: true)
    }

    func navigateToBuyScreen() {
        let buyScreenCoordinator = BuyScreenCoordinator(transitionHandler: transitionHandler)
        childCoordinator.append(buyScreenCoordinator)
        buyScreenCoordinator.start()
    }

    func navigateToCreateAccountScreen() {
        let createAccountScreenCoordinator = CreateAccountScreenCoordinator(transitionHandler: transitionHandler)
        childCoordinator.append(createAccountScreenCoordinator)
        createAccountScreenCoordinator.start()
    }

}
