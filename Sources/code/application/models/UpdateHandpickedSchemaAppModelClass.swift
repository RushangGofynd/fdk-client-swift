import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: UpdateHandpickedSchema
         Used By: Content
     */
    class UpdateHandpickedSchema: Codable {
        public var tag: HandpickedTagSchema?

        public enum CodingKeys: String, CodingKey {
            case tag
        }

        public init(tag: HandpickedTagSchema?) {
            self.tag = tag
        }

        public func duplicate() -> UpdateHandpickedSchema {
            let dict = self.dictionary!
            let copy = UpdateHandpickedSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                tag = try container.decode(HandpickedTagSchema.self, forKey: .tag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tag, forKey: .tag)
        }
    }
}
