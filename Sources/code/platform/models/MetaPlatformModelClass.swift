import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: Meta
         Used By: Catalog
     */

    class Meta: Codable {
        public var unit: String?

        public var values: [[String: Any]]?

        public var headers: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case unit

            case values

            case headers
        }

        public init(headers: [String: Any]?, unit: String?, values: [[String: Any]]?) {
            self.unit = unit

            self.values = values

            self.headers = headers
        }

        public func duplicate() -> Meta {
            let dict = self.dictionary!
            let copy = Meta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                unit = try container.decode(String.self, forKey: .unit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                values = try container.decode([[String: Any]].self, forKey: .values)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                headers = try container.decode([String: Any].self, forKey: .headers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(values, forKey: .values)

            try? container.encodeIfPresent(headers, forKey: .headers)
        }
    }
}
