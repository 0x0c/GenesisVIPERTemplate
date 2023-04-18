//
//  ExampleModulePresenter
//  GenesisVIPERTemplate
//
//  Created by Akira Matsuda on 2023/02/11.
//

import Foundation

// MARK: - ExampleModulePresenterInput

protocol ExampleModulePresenterInput: AnyObject {
    // MARK: View Life-Cycle methods

    func viewDidLoad()

    // MARK: Other methods called from View
}

// MARK: - ExampleModulePresenter

final class ExampleModulePresenter {
    // MARK: Lifecycle

    // MARK: Stored instance properties

    // MARK: Computed instance properties

    init(view: ExampleModuleViewInput, interactor: ExampleModuleInteractorInput, router: ExampleModuleRouterInput) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }

    // MARK: Internal

    // MARK: VIPER properties

    weak var view: ExampleModuleViewInput!
    var interactor: ExampleModuleInteractorInput!
    var router: ExampleModuleRouterInput!
}

// MARK: ExampleModulePresenterInput

extension ExampleModulePresenter: ExampleModulePresenterInput {
    func viewDidLoad() {
        // TODO: Implement if needed
    }
}

// MARK: ExampleModuleInteractorOutput

extension ExampleModulePresenter: ExampleModuleInteractorOutput {}
