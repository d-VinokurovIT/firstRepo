import UIKit

protocol TransitionHandler: AnyObject {

    var presenter: UINavigationController? { get }
    func present(controller: UIViewController, animated: Bool)
    func push(controller: UIViewController, animated: Bool)
    func popController(animated: Bool)
    func dismissController(animated: Bool)

}

extension TransitionHandler {

    func present(controller: UIViewController, animated: Bool = true) {
        presenter?.present(controller, animated: animated, completion: nil)
    }

    func push(controller: UIViewController, animated: Bool = true) {
        presenter?.pushViewController(controller, animated: animated)
    }

    func popController(animated: Bool = true) {
        presenter?.popViewController(animated: animated)
    }

    func dismissController(animated: Bool = true) {
        presenter?.dismiss(animated: animated, completion: nil)
    }

}
