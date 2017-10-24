import XCTest
import Moya
import RxSwift
@testable import W3W

class W3WTests: XCTestCase {

    func testExample() {
        let expectation = self.expectation(description: "")
        let provider = MoyaProvider<W3W>()
        _ = provider.rx.request(.forward(address: "index.home.raft", key: "M77MB32Q"))
            .filterSuccessfulStatusCodes()
            .mapJSON()
            .subscribe(
                onSuccess: { result in
                    print(result)
                    expectation.fulfill()
                },
                onError: { error in
                    print(error.localizedDescription)
                }
            )
        waitForExpectations(timeout: 5, handler: nil)
    }
}
