import UIKit

class CreateAccountViewController: UIViewController {

    var createAccountScreenCoordinator: CreateAccountScreenRouter?

    @IBAction func buyButtonAction(_ sender: Any) {
        createAccountScreenCoordinator?.navigateToBuy()
    }

}
