

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var optLevel: String

        public var brandIds: [Int]

        public var modifiedBy: [String: Any]?

        public var createdBy: [String: Any]?

        public var storeIds: [Int]

        public var enabled: Bool

        public var platform: String

        public var companyId: Int

        public var modifiedOn: Int

        public var createdOn: Int

        public enum CodingKeys: String, CodingKey {
            case optLevel = "opt_level"

            case brandIds = "brand_ids"

            case modifiedBy = "modified_by"

            case createdBy = "created_by"

            case storeIds = "store_ids"

            case enabled

            case platform

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case createdOn = "created_on"
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.optLevel = optLevel

            self.brandIds = brandIds

            self.modifiedBy = modifiedBy

            self.createdBy = createdBy

            self.storeIds = storeIds

            self.enabled = enabled

            self.platform = platform

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            optLevel = try container.decode(String.self, forKey: .optLevel)

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

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

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            platform = try container.decode(String.self, forKey: .platform)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            createdOn = try container.decode(Int.self, forKey: .createdOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var optLevel: String

        public var brandIds: [Int]

        public var modifiedBy: [String: Any]?

        public var createdBy: [String: Any]?

        public var storeIds: [Int]

        public var enabled: Bool

        public var platform: String

        public var companyId: Int

        public var modifiedOn: Int

        public var createdOn: Int

        public enum CodingKeys: String, CodingKey {
            case optLevel = "opt_level"

            case brandIds = "brand_ids"

            case modifiedBy = "modified_by"

            case createdBy = "created_by"

            case storeIds = "store_ids"

            case enabled

            case platform

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case createdOn = "created_on"
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.optLevel = optLevel

            self.brandIds = brandIds

            self.modifiedBy = modifiedBy

            self.createdBy = createdBy

            self.storeIds = storeIds

            self.enabled = enabled

            self.platform = platform

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            optLevel = try container.decode(String.self, forKey: .optLevel)

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

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

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            platform = try container.decode(String.self, forKey: .platform)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            createdOn = try container.decode(Int.self, forKey: .createdOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}
