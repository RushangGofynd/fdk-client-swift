

import Foundation
public extension PlatformClient {
    /*
         Model: GetLocationSerializer
         Used By: Catalog
     */

    class GetLocationSerializer: Codable {
        public var documents: [Document]?

        public var modifiedBy: UserSerializer1?

        public var name: String

        public var address: GetAddressSerializer

        public var phoneNumber: String

        public var uid: Int?

        public var verifiedOn: String?

        public var createdBy: UserSerializer1?

        public var storeType: String?

        public var integrationType: LocationIntegrationType?

        public var createdOn: String?

        public var notificationEmails: [String]?

        public var warnings: [String: Any]?

        public var timing: [LocationDayWiseSerializer]?

        public var company: GetCompanySerializer?

        public var gstCredentials: InvoiceDetailsSerializer?

        public var productReturnConfig: ProductReturnConfigSerializer?

        public var modifiedOn: String?

        public var manager: LocationManagerSerializer?

        public var customJson: [String: Any]?

        public var displayName: String

        public var verifiedBy: UserSerializer1?

        public var code: String

        public var stage: String?

        public var contactNumbers: [SellerPhoneNumber]?

        public enum CodingKeys: String, CodingKey {
            case documents

            case modifiedBy = "modified_by"

            case name

            case address

            case phoneNumber = "phone_number"

            case uid

            case verifiedOn = "verified_on"

            case createdBy = "created_by"

            case storeType = "store_type"

            case integrationType = "integration_type"

            case createdOn = "created_on"

            case notificationEmails = "notification_emails"

            case warnings

            case timing

            case company

            case gstCredentials = "gst_credentials"

            case productReturnConfig = "product_return_config"

            case modifiedOn = "modified_on"

            case manager

            case customJson = "_custom_json"

            case displayName = "display_name"

            case verifiedBy = "verified_by"

            case code

            case stage

            case contactNumbers = "contact_numbers"
        }

        public init(address: GetAddressSerializer, code: String, company: GetCompanySerializer? = nil, contactNumbers: [SellerPhoneNumber]? = nil, createdBy: UserSerializer1? = nil, createdOn: String? = nil, displayName: String, documents: [Document]? = nil, gstCredentials: InvoiceDetailsSerializer? = nil, integrationType: LocationIntegrationType? = nil, manager: LocationManagerSerializer? = nil, modifiedBy: UserSerializer1? = nil, modifiedOn: String? = nil, name: String, notificationEmails: [String]? = nil, phoneNumber: String, productReturnConfig: ProductReturnConfigSerializer? = nil, stage: String? = nil, storeType: String? = nil, timing: [LocationDayWiseSerializer]? = nil, uid: Int? = nil, verifiedBy: UserSerializer1? = nil, verifiedOn: String? = nil, warnings: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.documents = documents

            self.modifiedBy = modifiedBy

            self.name = name

            self.address = address

            self.phoneNumber = phoneNumber

            self.uid = uid

            self.verifiedOn = verifiedOn

            self.createdBy = createdBy

            self.storeType = storeType

            self.integrationType = integrationType

            self.createdOn = createdOn

            self.notificationEmails = notificationEmails

            self.warnings = warnings

            self.timing = timing

            self.company = company

            self.gstCredentials = gstCredentials

            self.productReturnConfig = productReturnConfig

            self.modifiedOn = modifiedOn

            self.manager = manager

            self.customJson = customJson

            self.displayName = displayName

            self.verifiedBy = verifiedBy

            self.code = code

            self.stage = stage

            self.contactNumbers = contactNumbers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                documents = try container.decode([Document].self, forKey: .documents)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(UserSerializer1.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            address = try container.decode(GetAddressSerializer.self, forKey: .address)

            phoneNumber = try container.decode(String.self, forKey: .phoneNumber)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifiedOn = try container.decode(String.self, forKey: .verifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserSerializer1.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeType = try container.decode(String.self, forKey: .storeType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                integrationType = try container.decode(LocationIntegrationType.self, forKey: .integrationType)

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
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                warnings = try container.decode([String: Any].self, forKey: .warnings)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timing = try container.decode([LocationDayWiseSerializer].self, forKey: .timing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                company = try container.decode(GetCompanySerializer.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstCredentials = try container.decode(InvoiceDetailsSerializer.self, forKey: .gstCredentials)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productReturnConfig = try container.decode(ProductReturnConfigSerializer.self, forKey: .productReturnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                manager = try container.decode(LocationManagerSerializer.self, forKey: .manager)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                verifiedBy = try container.decode(UserSerializer1.self, forKey: .verifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            code = try container.decode(String.self, forKey: .code)

            do {
                stage = try container.decode(String.self, forKey: .stage)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(integrationType, forKey: .integrationType)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)

            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(manager, forKey: .manager)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)
        }
    }
}
