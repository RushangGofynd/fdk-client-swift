import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: EditEmailRequestSchema
         Used By: User
     */

    class EditEmailRequestSchema: Codable {
        public var email: String?

        public enum CodingKeys: String, CodingKey {
            case email
        }

        public init(email: String?) {
            self.email = email
        }

        public func duplicate() -> EditEmailRequestSchema {
            let dict = self.dictionary!
            let copy = EditEmailRequestSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}
