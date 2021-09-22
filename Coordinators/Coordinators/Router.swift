import UIKit

class Router: TransitionHandler {

    var presenter: UINavigationController?

    init(presenter: UINavigationController) {
        self.presenter = presenter
    }

}
