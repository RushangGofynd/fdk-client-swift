

import Foundation
public extension PlatformClient {
    /*
         Model: AppConfiguration
         Used By: Catalog
     */

    class AppConfiguration: Codable {
        public var modifiedBy: [String: Any]?

        public var appId: String

        public var modifiedOn: String?

        public var listing: ConfigurationListing?

        public var product: ConfigurationProduct?

        public var configType: String

        public var type: String?

        public var createdOn: String?

        public var createdBy: [String: Any]?

        public var configId: String?

        public enum CodingKeys: String, CodingKey {
            case modifiedBy = "modified_by"

            case appId = "app_id"

            case modifiedOn = "modified_on"

            case listing

            case product

            case configType = "config_type"

            case type

            case createdOn = "created_on"

            case createdBy = "created_by"

            case configId = "config_id"
        }

        public init(appId: String, configId: String? = nil, configType: String, createdBy: [String: Any]? = nil, createdOn: String? = nil, listing: ConfigurationListing? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, product: ConfigurationProduct? = nil, type: String? = nil) {
            self.modifiedBy = modifiedBy

            self.appId = appId

            self.modifiedOn = modifiedOn

            self.listing = listing

            self.product = product

            self.configType = configType

            self.type = type

            self.createdOn = createdOn

            self.createdBy = createdBy

            self.configId = configId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                listing = try container.decode(ConfigurationListing.self, forKey: .listing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                product = try container.decode(ConfigurationProduct.self, forKey: .product)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            configType = try container.decode(String.self, forKey: .configType)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                configId = try container.decode(String.self, forKey: .configId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(listing, forKey: .listing)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(configId, forKey: .configId)
        }
    }
}
