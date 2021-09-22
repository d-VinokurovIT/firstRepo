import UIKit
protocol TransitionHandler: AnyObject {
    func show(controller: UIViewController, animated: Bool)
    func dismiss(controller: UIViewController, animated: Bool)
    func pop(controller: UIViewController, animated: Bool)
}
