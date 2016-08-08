import XCTest
@testable import Freestyler


class BarTintColorableTests: XCTestCase {
    let navigationBar = UINavigationBar()
    let tabBar = UITabBar()
    
    func testBarTintStyle() {
        navigationBar <~ DefaultPalette.A.barTint
        XCTAssertEqual(navigationBar.barTintColor, DefaultPalette.A.color)
        
        tabBar <~ DefaultPalette.B.barTint
        XCTAssertEqual(tabBar.barTintColor, DefaultPalette.B.color)
    }
}
