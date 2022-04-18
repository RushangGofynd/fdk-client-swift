import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: UpdateResponse
         Used By: Feedback
     */

    class UpdateResponse: Codable {
        public var count: Int?

        public enum CodingKeys: String, CodingKey {
            case count
        }

        public init(count: Int?) {
            self.count = count
        }

        public func duplicate() -> UpdateResponse {
            let dict = self.dictionary!
            let copy = UpdateResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                count = try container.decode(Int.self, forKey: .count)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(count, forKey: .count)
        }
    }
}
