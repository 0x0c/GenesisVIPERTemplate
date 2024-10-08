//
//  ExampleModuleViewController
//  GenesisVIPERTemplate
//
//  Created by Akira Matsuda on 2024/10/07.
//

import UIKit

@MainActor
protocol ExampleModuleViewInput: AnyObject {
    // MARK: Callback from presenter

    func updateState(_ state: ExampleModulePresenterState)
}

final class ExampleModuleViewController: UIViewController {
    // MARK: VIPER properties

    var presenter: ExampleModulePresenterInput!

    // MARK: View Life-Cycle methods

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }

    // MARK: Other private methods
}

extension ExampleModuleViewController: ExampleModuleViewInput {
    func updateState(_: ExampleModulePresenterState) {
        // TODO: Update view for state
    }
}
