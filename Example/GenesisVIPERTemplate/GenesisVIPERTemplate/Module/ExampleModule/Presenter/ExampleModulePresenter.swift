//
//  ExampleModulePresenter
//  GenesisVIPERTemplate
//
//  Created by Akira Matsuda on 2024/02/02.
//

import Combine
import Foundation

enum ExampleModulePresenterState {
    // TODO: Add any states for view
    case initial
}

@MainActor
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

    @Published private var state: ExampleModulePresenterState = .initial
    private var cancellable = Set<AnyCancellable>()

    init(view: ExampleModuleViewInput, interactor: ExampleModuleInteractorInput, router: ExampleModuleRouterInput) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

extension ExampleModulePresenter: ExampleModulePresenterInput {
    func viewDidLoad() {
        // TODO: Implement if needed
        $state
            .receive(on: DispatchQueue.main)
            .sink { [weak self] newState in
                guard let self else {
                    return
                }
                view.updateState(newState)
            }.store(in: &cancellable)
    }
}

extension ExampleModulePresenter: ExampleModuleInteractorOutput {}
