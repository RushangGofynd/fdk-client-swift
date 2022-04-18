import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: GenericDTO
         Used By: Inventory
     */

    class GenericDTO: Codable {
        public var text: String?

        public var value: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case text

            case value
        }

        public init(text: String?, value: [String: Any]?) {
            self.text = text

            self.value = value
        }

        public func duplicate() -> GenericDTO {
            let dict = self.dictionary!
            let copy = GenericDTO(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                text = try container.decode(String.self, forKey: .text)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode([String: Any].self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }
}
