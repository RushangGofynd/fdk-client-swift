

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateAppConfig
         Used By: Order
     */

    class AffiliateAppConfig: Codable {
        public var token: String

        public var description: String?

        public var name: String

        public var id: String

        public var createdAt: String

        public var secret: String

        public var updatedAt: String

        public var meta: [AffiliateAppConfigMeta]?

        public var owner: String

        public enum CodingKeys: String, CodingKey {
            case token

            case description

            case name

            case id

            case createdAt = "created_at"

            case secret

            case updatedAt = "updated_at"

            case meta

            case owner
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.token = token

            self.description = description

            self.name = name

            self.id = id

            self.createdAt = createdAt

            self.secret = secret

            self.updatedAt = updatedAt

            self.meta = meta

            self.owner = owner
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            token = try container.decode(String.self, forKey: .token)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            id = try container.decode(String.self, forKey: .id)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            secret = try container.decode(String.self, forKey: .secret)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            do {
                meta = try container.decode([AffiliateAppConfigMeta].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            owner = try container.decode(String.self, forKey: .owner)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(owner, forKey: .owner)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateAppConfig
         Used By: Order
     */

    class AffiliateAppConfig: Codable {
        public var token: String

        public var description: String?

        public var name: String

        public var id: String

        public var createdAt: String

        public var secret: String

        public var updatedAt: String

        public var meta: [AffiliateAppConfigMeta]?

        public var owner: String

        public enum CodingKeys: String, CodingKey {
            case token

            case description

            case name

            case id

            case createdAt = "created_at"

            case secret

            case updatedAt = "updated_at"

            case meta

            case owner
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.token = token

            self.description = description

            self.name = name

            self.id = id

            self.createdAt = createdAt

            self.secret = secret

            self.updatedAt = updatedAt

            self.meta = meta

            self.owner = owner
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            token = try container.decode(String.self, forKey: .token)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            id = try container.decode(String.self, forKey: .id)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            secret = try container.decode(String.self, forKey: .secret)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            do {
                meta = try container.decode([AffiliateAppConfigMeta].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            owner = try container.decode(String.self, forKey: .owner)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(owner, forKey: .owner)
        }
    }
}
