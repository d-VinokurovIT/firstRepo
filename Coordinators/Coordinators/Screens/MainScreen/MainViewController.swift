import UIKit

class MainViewController: UIViewController {

    var mainScreenCoordinator: MainScreenRouter?

    @IBAction func buyButtonAction(_ sender: UIButton) {
        mainScreenCoordinator?.navigateToBuyScreen()
    }

    @IBAction func createAccountButtonAction(_ sender: UIButton) {
        mainScreenCoordinator?.navigateToCreateAccountScreen()
    }

}
