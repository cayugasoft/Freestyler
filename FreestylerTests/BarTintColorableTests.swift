import XCTest
@testable import Freestyler


class BarTintColorableTests: XCTestCase {
    let navigationBar = UINavigationBar()
    let tabBar = UITabBar()
    let toolBar = UIToolbar()
    
    func testBarTintStyle() {
        navigationBar <~ DefaultPalette.A.barTint
        XCTAssertEqual(navigationBar.barTintColor, DefaultPalette.A.color)
        
        tabBar <~ DefaultPalette.B.barTint
        XCTAssertEqual(tabBar.barTintColor, DefaultPalette.B.color)
        
        toolBar <~ DefaultPalette.A.barTint
        XCTAssertEqual(toolBar.barTintColor, DefaultPalette.A.color)
    }
}
