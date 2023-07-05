import XCTest
@testable import EvercodeApp

class DetailViewControllerDelegateMock: DetailViewControllerDelegate {
    var didCallDismissDetail = false
    
    func dismissDetail() {
        didCallDismissDetail = true
    }
}

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
    
    func testDetailViewControllerMustCallDelegate() {
        // given
        let mok = DetailViewControllerDelegateMock()
        let detailViewController = DetailViewController(delegate: mok)
        
        // when
        detailViewController.didPressDismissButton()
        
        // then
        XCTAssertTrue(mok.didCallDismissDetail)
    }
}
