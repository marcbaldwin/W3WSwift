import XCTest
import Moya
@testable import W3W

class W3WTests: XCTestCase {

    func testExample() {
        let expectation = self.expectation(description: "")
        let provider = MoyaProvider<W3W>()
        _ = provider.request(.forward(address: "index.home.raft", key: "M77MB32Q")) { result in
            expectation.fulfill()
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
}
