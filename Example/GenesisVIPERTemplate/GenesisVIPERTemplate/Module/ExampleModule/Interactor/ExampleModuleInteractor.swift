//
//  ExampleModuleInteractor
//  GenesisVIPERTemplate
//
//  Created by Akira Matsuda on 2023/02/11.
//

import Foundation

protocol ExampleModuleInteractorInput: AnyObject {
    // MARK: Methods for modifying repository
}

protocol ExampleModuleInteractorOutput: AnyObject {
    // MARK: Callback methods from repository
}

final class ExampleModuleInteractor {
    // MARK: VIPER property
    weak var presenter: ExampleModuleInteractorOutput!

    // MARK: Stored instance properties

    // MARK: Computed instance properties

    // MARK: Initializer
    
    init() {}

    // MARK: Other private methods
}

extension ExampleModuleInteractor: ExampleModuleInteractorInput {}