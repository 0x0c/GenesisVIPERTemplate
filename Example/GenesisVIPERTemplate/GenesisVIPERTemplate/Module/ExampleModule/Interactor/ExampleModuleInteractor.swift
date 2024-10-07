//
//  ExampleModuleInteractor
//  GenesisVIPERTemplate
//
//  Created by Akira Matsuda on 2024/10/07.
//

import Foundation

protocol ExampleModuleInteractorInput {
    // MARK: Methods called from presenter
}

protocol ExampleModuleInteractorOutput: AnyObject {
    // MARK: Callback methods for presenter
}

final class ExampleModuleInteractor {
    init() {}

    // MARK: Other private methods
}

extension ExampleModuleInteractor: ExampleModuleInteractorInput {}
