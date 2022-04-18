import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: UserDetail
         Used By: Catalog
     */

    class UserDetail: Codable {
        public var fullName: String?

        public var userId: String?

        public var username: String?

        public enum CodingKeys: String, CodingKey {
            case fullName = "full_name"

            case userId = "user_id"

            case username
        }

        public init(fullName: String?, username: String?, userId: String?) {
            self.fullName = fullName

            self.userId = userId

            self.username = username
        }

        public func duplicate() -> UserDetail {
            let dict = self.dictionary!
            let copy = UserDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                fullName = try container.decode(String.self, forKey: .fullName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode(String.self, forKey: .userId)

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

            try? container.encodeIfPresent(fullName, forKey: .fullName)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(username, forKey: .username)
        }
    }
}
