import UIKit

class ApplicationCoordinator: Coordinator {

    var mainScreenCoordinator: MainScreenCoordinator?
    let transitionHandler: TransitionHandler
    private var childCoordinator = [Coordinator]()

    init(transitionHandler: TransitionHandler) {
        self.transitionHandler = transitionHandler
    }

    func start() {
        let mainScreenCoordinator = MainScreenCoordinator(transitionHandler: transitionHandler)
        childCoordinator.append(mainScreenCoordinator)
        mainScreenCoordinator.start()
        self.mainScreenCoordinator = mainScreenCoordinator
    }

}
