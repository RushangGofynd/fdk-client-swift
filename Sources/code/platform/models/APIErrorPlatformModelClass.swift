import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: APIError
         Used By: Partner
     */

    class APIError: Codable {
        public var code: String?

        public var message: String?

        public var info: String?

        public var requestId: String?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case code

            case message

            case info

            case requestId = "request_id"

            case meta
        }

        public init(code: String?, info: String?, message: String?, meta: [String: Any]?, requestId: String?) {
            self.code = code

            self.message = message

            self.info = info

            self.requestId = requestId

            self.meta = meta
        }

        public func duplicate() -> APIError {
            let dict = self.dictionary!
            let copy = APIError(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                info = try container.decode(String.self, forKey: .info)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requestId = try container.decode(String.self, forKey: .requestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(info, forKey: .info)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
