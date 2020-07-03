import XCTest
@testable import ElViewKit

final class ElViewKitTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(ElViewKit().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
