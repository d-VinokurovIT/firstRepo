import UIKit

class CreateAccountViewController: UIViewController {
    
    @IBAction func buyButtonAction(_ sender: Any) {
        if let presenter = self.navigationController {
            let buyScreenCoordinator = BuyScreenCoordinator(presenter: presenter)
            buyScreenCoordinator.start()
        }
    }
}
