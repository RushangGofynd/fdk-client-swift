

import Foundation
public extension ApplicationClient {
    /*
         Model: StoreDetails
         Used By: Catalog
     */
    class StoreDetails: Codable {
        public var customJson: [String: Any]?

        public var uid: Int?

        public var contactNumbers: [SellerPhoneNumber]?

        public var manager: StoreManagerSerializer?

        public var company: CompanyStore?

        public var name: String?

        public var address: StoreAddressSerializer?

        public var departments: [StoreDepartments]?

        public var timing: [StoreTiming]?

        public enum CodingKeys: String, CodingKey {
            case customJson = "_custom_json"

            case uid

            case contactNumbers = "contact_numbers"

            case manager

            case company

            case name

            case address

            case departments

            case timing
        }

        public init(address: StoreAddressSerializer? = nil, company: CompanyStore? = nil, contactNumbers: [SellerPhoneNumber]? = nil, departments: [StoreDepartments]? = nil, manager: StoreManagerSerializer? = nil, name: String? = nil, timing: [StoreTiming]? = nil, uid: Int? = nil, customJson: [String: Any]? = nil) {
            self.customJson = customJson

            self.uid = uid

            self.contactNumbers = contactNumbers

            self.manager = manager

            self.company = company

            self.name = name

            self.address = address

            self.departments = departments

            self.timing = timing
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contactNumbers = try container.decode([SellerPhoneNumber].self, forKey: .contactNumbers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                manager = try container.decode(StoreManagerSerializer.self, forKey: .manager)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                company = try container.decode(CompanyStore.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode(StoreAddressSerializer.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                departments = try container.decode([StoreDepartments].self, forKey: .departments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timing = try container.decode([StoreTiming].self, forKey: .timing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)

            try? container.encodeIfPresent(manager, forKey: .manager)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(timing, forKey: .timing)
        }
    }
}
