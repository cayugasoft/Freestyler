import XCTest
@testable import Freestyler


class UIActivityIndicatorViewTests: XCTestCase {
    let indicator = UIActivityIndicatorView()
    
    func testLabelStyles() {
        indicator <~ DefaultPalette.A.activityViewColor
        
        XCTAssertEqual(indicator.color, DefaultPalette.A.color)
    }
}
