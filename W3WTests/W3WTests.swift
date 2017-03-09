import XCTest
import Moya
import RxSwift
@testable import W3W

class W3WTests: XCTestCase {

    private var disposeBag: DisposeBag!

    override func setUp() {
        super.setUp()
        disposeBag = DisposeBag()
    }
    
    func testExample() {
        let expectation = self.expectation(description: "")
        let provider = RxMoyaProvider<W3W>()
        provider.request(.forward(address: "index.home.raft", key: "M77MB32Q"))
            .filterSuccessfulStatusCodes()
            .mapJSON()
            .subscribe(
                onNext: { result in
                    print(result)
                    expectation.fulfill()
                },
                onError: { error in
                    print(error.localizedDescription)
                }
            ).addDisposableTo(disposeBag)

        waitForExpectations(timeout: 5, handler: nil)
    }

}
