//
//  ExampleModuleViewController
//  GenesisVIPERTemplate
//
//  Created by Akira Matsuda on 2023/02/11.
//

import UIKit

protocol ExampleModuleViewInput: AnyObject {
    // MARK: Callback from presenter
}

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

extension ExampleModuleViewController: ExampleModuleViewInput {}