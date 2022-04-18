import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: CDN
         Used By: FileStorage
     */
    class CDN: Codable {
        public var url: String

        public enum CodingKeys: String, CodingKey {
            case url
        }

        public init(url: String) {
            self.url = url
        }

        public func duplicate() -> CDN {
            let dict = self.dictionary!
            let copy = CDN(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            url = try container.decode(String.self, forKey: .url)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }
}
