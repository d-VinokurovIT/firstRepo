import UIKit

class ViewController: UIViewController, Storyboarded {

    weak var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func buyButtonAction(_ sender: UIButton) {
        self.coordinator?.buySubscription()
    }

    @IBAction func createAccountButtonAction(_ sender: UIButton) {
        coordinator?.createAccount()
    }

}
