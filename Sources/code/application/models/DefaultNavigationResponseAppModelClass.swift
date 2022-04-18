import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: DefaultNavigationResponse
         Used By: Content
     */
    class DefaultNavigationResponse: Codable {
        public var items: [NavigationSchema]?

        public enum CodingKeys: String, CodingKey {
            case items
        }

        public init(items: [NavigationSchema]?) {
            self.items = items
        }

        public func duplicate() -> DefaultNavigationResponse {
            let dict = self.dictionary!
            let copy = DefaultNavigationResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([NavigationSchema].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
