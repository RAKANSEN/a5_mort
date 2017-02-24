import XCTest
@testable import mortgage

class mortgageTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(mortgage().text, "Hello, World!")
    }


    static var allTests : [(String, (mortgageTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
