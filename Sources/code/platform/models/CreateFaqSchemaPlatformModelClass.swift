import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: CreateFaqSchema
         Used By: Content
     */

    class CreateFaqSchema: Codable {
        public var faq: FAQ?

        public enum CodingKeys: String, CodingKey {
            case faq
        }

        public init(faq: FAQ?) {
            self.faq = faq
        }

        public func duplicate() -> CreateFaqSchema {
            let dict = self.dictionary!
            let copy = CreateFaqSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                faq = try container.decode(FAQ.self, forKey: .faq)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(faq, forKey: .faq)
        }
    }
}
