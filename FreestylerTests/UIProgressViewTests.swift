import XCTest
@testable import Freestyler
import FreestylerCore


class UIProgressViewTests: XCTestCase {
    let progressView = UIProgressView()
    
    func testProgressViewStyles() {
        progressView <~ DefaultPalette.A.progressTint + DefaultPalette.B.trackTint
        XCTAssertEqual(progressView.progressTintColor, DefaultPalette.A.color)
        XCTAssertEqual(progressView.trackTintColor, DefaultPalette.B.color)
    }
}
