import Moya
import Alamofire

public enum W3W {
    case forward(address: String, key: String)
}

extension W3W: TargetType {

    public var baseURL: URL {
        return URL(string: "https://api.what3words.com/v2")!
    }

    public var path: String {
        switch self {
        case .forward: return "/forward"
        }
    }

    public var method: Moya.Method {
        return .get
    }

    public var task: Task {
        switch self {
        case let .forward(address, key):
            return .requestParameters(parameters: ["addr" : address, "key" : key], encoding: URLEncoding.default)
        }
    }

    public var headers: [String : String]? {
        return nil
    }

    public var sampleData: Data {
        return "".data(using: .utf8)!
    }
}


