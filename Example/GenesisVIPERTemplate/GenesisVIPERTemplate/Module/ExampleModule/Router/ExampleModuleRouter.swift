//
//  ExampleModuleRouter
//  GenesisVIPERTemplate
//
//  Created by Akira Matsuda on 2024/10/07.
//

import UIKit

@MainActor
protocol ExampleModuleRouterInput: AnyObject {
    // MARK: View transitions
}

@MainActor
final class ExampleModuleRouter {
    private unowned let viewController: ExampleModuleViewController

    init(viewController: ExampleModuleViewController) {
        self.viewController = viewController
    }

    static func assembleModule() -> ExampleModuleViewController {
        let view = ExampleModuleViewController()
        // TODO: Create a Storyboard with the same name as "ExampleModule".
        // TODO: And Change "ExampleModule" of "R.storyboard.ExampleModule" to lowercase.
        // guard let view = R.storyboard.ExampleModule.instantiateInitialViewController() else {
        //     fatalError("Fail to load ExampleModuleViewController from Storyboard.")
        // }
        let interactor = ExampleModuleInteractor()
        let router = ExampleModuleRouter(viewController: view)
        let presenter = ExampleModulePresenter(view: view, interactor: interactor, router: router)

        view.presenter = presenter

        return view
    }
}

extension ExampleModuleRouter: ExampleModuleRouterInput {}
