//
//  ExampleModulePresenterTest
//  GenesisVIPERTemplate
//
//  Created by Akira Matsuda on 2024/10/07.
//

@testable import GenesisVIPERTemplate
import XCTest

class ExampleModulePresenterTest: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    class MockInteractor: ExampleModuleInteractorInput {

    }

    class MockRouter: ExampleModuleRouterInput {

    }

    class MockViewController: ExampleModuleViewInput {
        func setupInitialState() {

        }
    }
}
