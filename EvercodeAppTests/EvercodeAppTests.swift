import XCTest
@testable import EvercodeApp

final class EvercodeAppTests: XCTestCase {

    func testMainViewControllerConformsToProtocol() throws {
        
        let mainViewController = MainViewController()
        
        let conformsToProtocol = mainViewController as? DetailViewControllerDelegate
        
        XCTAssertNotNil(conformsToProtocol)
    }
    
    func testDetailViewControllerInit() throws {
        
        let delegate = MainViewController() as! DetailViewControllerDelegate
        let detailViewController = DetailViewController(delegate: delegate)

        XCTAssertNotNil(detailViewController)
    }
}
