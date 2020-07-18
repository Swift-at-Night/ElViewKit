import XCTest
import SwiftUI
@testable import ElViewKit

final class ElViewKitTests: XCTestCase {
    @available(iOS 13.0, *)
    static var allTests = [
        ("test_Corner", test_Corner),
    ]
    
    @available(iOS 13.0, *)
    func test_Corner() {
        let corner = Corner(alignment: .bottomRight) {
            Text("Hi")
        }
        XCTAssertNotNil(corner)
        XCTAssert(corner.alignment == .bottomRight)
        XCTAssert(type(of: corner.content()) == Text.self)
    }
}
