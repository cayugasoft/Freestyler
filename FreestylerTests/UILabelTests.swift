import XCTest
@testable import Freestyler
import FreestylerCore


class UILabelTests: XCTestCase {
    let label = UILabel()

    func testLabelStyles() {
        label <~ DefaultPalette.A.text + DefaultPalette.B.highlightedText + DefaultTypography.A.fontStyle
        
        XCTAssertEqual(label.textColor, DefaultPalette.A.color)
        XCTAssertEqual(label.highlightedTextColor, DefaultPalette.B.color)
        XCTAssertEqual(label.font, DefaultTypography.A.font)
    }
}
