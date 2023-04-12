

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: UserDetail
         Used By: Catalog
     */

    class UserDetail: Codable {
        public var contact: String?

        public var userId: String

        public var username: String

        public var superUser: Bool?

        public enum CodingKeys: String, CodingKey {
            case contact

            case userId = "user_id"

            case username

            case superUser = "super_user"
        }

        public init(contact: String? = nil, superUser: Bool? = nil, username: String, userId: String) {
            self.contact = contact

            self.userId = userId

            self.username = username

            self.superUser = superUser
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                contact = try container.decode(String.self, forKey: .contact)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userId = try container.decode(String.self, forKey: .userId)

            username = try container.decode(String.self, forKey: .username)

            do {
                superUser = try container.decode(Bool.self, forKey: .superUser)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(superUser, forKey: .superUser)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: UserDetail
         Used By: Catalog
     */

    class UserDetail: Codable {
        public var contact: String?

        public var userId: String

        public var username: String

        public var superUser: Bool?

        public enum CodingKeys: String, CodingKey {
            case contact

            case userId = "user_id"

            case username

            case superUser = "super_user"
        }

        public init(contact: String? = nil, superUser: Bool? = nil, username: String, userId: String) {
            self.contact = contact

            self.userId = userId

            self.username = username

            self.superUser = superUser
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                contact = try container.decode(String.self, forKey: .contact)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userId = try container.decode(String.self, forKey: .userId)

            username = try container.decode(String.self, forKey: .username)

            do {
                superUser = try container.decode(Bool.self, forKey: .superUser)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(superUser, forKey: .superUser)
        }
    }
}
