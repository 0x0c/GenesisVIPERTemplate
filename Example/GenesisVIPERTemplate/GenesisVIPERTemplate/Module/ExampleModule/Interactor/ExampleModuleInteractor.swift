//
//  ExampleModuleInteractor
//  GenesisVIPERTemplate
//
//  Created by Akira Matsuda on 2024/02/02.
//

import Foundation

struct ExampleModuleInteractorEntity {
    // TODO: Replace to specific entity
}

protocol ExampleModuleInteractorInput {
    // MARK: Methods called from presenter
}

protocol ExampleModuleInteractorOutput: AnyObject {
    // MARK: Callback methods for presenter
}

final class ExampleModuleInteractor {
    // MARK: VIPER property
    weak var presenter: ExampleModuleInteractorOutput!
    var storage: ExampleModuleInteractorEntity?
    
    init() {}

    // MARK: Other private methods
}

extension ExampleModuleInteractor: ExampleModuleInteractorInput {}