import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: UserSerializer2
         Used By: Catalog
     */

    class UserSerializer2: Codable {
        public var userId: String?

        public var contact: String?

        public var username: String?

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"

            case contact

            case username
        }

        public init(contact: String?, username: String?, userId: String?) {
            self.userId = userId

            self.contact = contact

            self.username = username
        }

        public func duplicate() -> UserSerializer2 {
            let dict = self.dictionary!
            let copy = UserSerializer2(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contact = try container.decode(String.self, forKey: .contact)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(username, forKey: .username)
        }
    }
}
