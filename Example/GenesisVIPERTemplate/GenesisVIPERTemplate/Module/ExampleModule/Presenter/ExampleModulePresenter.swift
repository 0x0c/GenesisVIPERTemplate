//
//  ExampleModulePresenter
//  GenesisVIPERTemplate
//
//  Created by Akira Matsuda on 2023/02/11.
//

import Foundation

protocol ExampleModulePresenterInput: AnyObject {
    // MARK: View Life-Cycle methods

    func viewDidLoad()

    // MARK: Other methods called from View
}

final class ExampleModulePresenter {
    // MARK: VIPER properties

    weak var view: ExampleModuleViewInput!
    var interactor: ExampleModuleInteractorInput!
    var router: ExampleModuleRouterInput!

    // MARK: Stored instance properties

    // MARK: Computed instance properties

    init(view: ExampleModuleViewInput, interactor: ExampleModuleInteractorInput, router: ExampleModuleRouterInput) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

extension ExampleModulePresenter: ExampleModulePresenterInput {
    func viewDidLoad() {
        // TODO: Implement if needed
    }
}

extension ExampleModulePresenter: ExampleModuleInteractorOutput {}