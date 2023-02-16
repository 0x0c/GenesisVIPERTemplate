//
//  ExampleModuleViewController
//  GenesisVIPERTemplate
//
//  Created by Akira Matsuda on 2023/02/11.
//

import UIKit

// MARK: - ExampleModuleViewInput

protocol ExampleModuleViewInput: AnyObject {
    // MARK: Callback from presenter
}

// MARK: - ExampleModuleViewController

final class ExampleModuleViewController: UIViewController {
    // MARK: Stored instance properties

    var presenter: ExampleModulePresenterInput!

    // MARK: Computed instance properties

    // MARK: IBOutlets

    // MARK: View Life-Cycle methods

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }

    // MARK: Other private methods
}

// MARK: ExampleModuleViewInput

extension ExampleModuleViewController: ExampleModuleViewInput {}
