import XCTest
@testable import Freestyler


class UISliderTests: XCTestCase {
    let slider = UISlider()
    
    func testLabelStyles() {
        slider <~ DefaultPalette.A.minimumTrackTint + DefaultPalette.B.maximumTrackTint + DefaultPalette.C.thumbTrackTint
        
        XCTAssertEqual(slider.minimumTrackTintColor, DefaultPalette.A.color)
        
        XCTAssertEqual(slider.maximumTrackTintColor, DefaultPalette.B.color)
        
        XCTAssertEqual(slider.thumbTintColor, DefaultPalette.C.color)
        
    }
}
