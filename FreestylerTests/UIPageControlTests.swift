import XCTest
@testable import Freestyler


class UIPageControlTests: XCTestCase {
    let pageControl = UIPageControl()
    
    func testLabelStyles() {
        pageControl <~ DefaultPalette.A.pageIndicatorTint + DefaultPalette.B.currentPageIndicatorTint
        
        XCTAssertEqual(pageControl.pageIndicatorTintColor, DefaultPalette.A.color)
        
        XCTAssertEqual(pageControl.currentPageIndicatorTintColor, DefaultPalette.B.color)
    }
}
