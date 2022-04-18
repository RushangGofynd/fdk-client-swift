import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: CreateFaqResponseSchema
         Used By: Content
     */

    class CreateFaqResponseSchema: Codable {
        public var faq: FaqSchema?

        public enum CodingKeys: String, CodingKey {
            case faq
        }

        public init(faq: FaqSchema?) {
            self.faq = faq
        }

        public func duplicate() -> CreateFaqResponseSchema {
            let dict = self.dictionary!
            let copy = CreateFaqResponseSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                faq = try container.decode(FaqSchema.self, forKey: .faq)

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
