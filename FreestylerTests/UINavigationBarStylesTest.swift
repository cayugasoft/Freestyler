import XCTest
@testable import Freestyler


class UINavigationBarStylesTests: XCTestCase {
    let navigationBar = UINavigationBar()
    
    func testBarTintStyle() {
        navigationBar <~ DefaultPalette.A.barTint
        XCTAssertEqual(navigationBar.barTintColor, DefaultPalette.A.color)
    }
}
