

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBrandName
         Used By: Order
     */

    class OrderBrandName: Codable {
        public var id: Int

        public var createdOn: String

        public var company: String?

        public var brandName: String

        public var modifiedOn: String?

        public var logo: String

        public enum CodingKeys: String, CodingKey {
            case id

            case createdOn = "created_on"

            case company

            case brandName = "brand_name"

            case modifiedOn = "modified_on"

            case logo
        }

        public init(brandName: String, company: String? = nil, createdOn: String, id: Int, logo: String, modifiedOn: String? = nil) {
            self.id = id

            self.createdOn = createdOn

            self.company = company

            self.brandName = brandName

            self.modifiedOn = modifiedOn

            self.logo = logo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(Int.self, forKey: .id)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                company = try container.decode(String.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandName = try container.decode(String.self, forKey: .brandName)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            logo = try container.decode(String.self, forKey: .logo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }
}
