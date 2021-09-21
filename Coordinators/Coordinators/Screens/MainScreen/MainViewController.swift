import UIKit

class MainViewController: UIViewController {
    
    @IBAction func buyButtonAction(_ sender: UIButton) {
        if let presenter = self.navigationController {
            let buyScreenCoordinator = BuyScreenCoordinator(presenter: presenter)
            buyScreenCoordinator.start()
        }
        
    }
    
    @IBAction func createAccountButtonAction(_ sender: UIButton) {
        if let presenter = self.navigationController {
            let createAccountScreenCoordinator = CreateAccountScreenCoordinator(presenter: presenter)
            createAccountScreenCoordinator.start()
        }
    }
    
}
