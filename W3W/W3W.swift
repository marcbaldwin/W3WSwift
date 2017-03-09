import Moya
import Alamofire

public enum W3W {
    case forward(address: String, key: String)
}

extension W3W: TargetType {

    public var baseURL: URL { return URL(string: "https://api.what3words.com/v2")! }

    public var path: String {
        switch self {
        case .forward(_): return "/forward"
        }
    }

    public var method: Moya.Method {
        switch self {
        case .forward(_): return .get
        }
    }

    public var parameters: [String : Any]? {
        switch self {
        case .forward(let address, let key): return ["addr" : address, "key" : key]
        }
    }

    public var parameterEncoding: ParameterEncoding {
        return URLEncoding.default
    }

    public var task: Task {
        switch self {
        case .forward(_): return .request
        }
    }

    public var sampleData: Data {
        switch self {
        case .forward(_): return "".data(using: .utf8)!
        }
    }
}


