

import Foundation
public extension PlatformClient {
    /*
         Model: BulkJob
         Used By: Catalog
     */

    class BulkJob: Codable {
        public var cancelled: Int?

        public var createdBy: UserInfo1?

        public var templateTag: String?

        public var failedRecords: [[String: Any]]?

        public var isActive: Bool?

        public var trackingUrl: String?

        public var createdOn: String

        public var companyId: Int

        public var failed: Int?

        public var succeed: Int?

        public var filePath: String?

        public var total: Int

        public var customTemplateTag: String?

        public var cancelledRecords: [[String: Any]]?

        public var modifiedOn: String?

        public var stage: String?

        public var modifiedBy: UserInfo1?

        public enum CodingKeys: String, CodingKey {
            case cancelled

            case createdBy = "created_by"

            case templateTag = "template_tag"

            case failedRecords = "failed_records"

            case isActive = "is_active"

            case trackingUrl = "tracking_url"

            case createdOn = "created_on"

            case companyId = "company_id"

            case failed

            case succeed

            case filePath = "file_path"

            case total

            case customTemplateTag = "custom_template_tag"

            case cancelledRecords = "cancelled_records"

            case modifiedOn = "modified_on"

            case stage

            case modifiedBy = "modified_by"
        }

        public init(cancelled: Int? = nil, cancelledRecords: [[String: Any]]? = nil, companyId: Int, createdBy: UserInfo1? = nil, createdOn: String, customTemplateTag: String? = nil, failed: Int? = nil, failedRecords: [[String: Any]]? = nil, filePath: String? = nil, isActive: Bool? = nil, modifiedBy: UserInfo1? = nil, modifiedOn: String? = nil, stage: String? = nil, succeed: Int? = nil, templateTag: String? = nil, total: Int, trackingUrl: String? = nil) {
            self.cancelled = cancelled

            self.createdBy = createdBy

            self.templateTag = templateTag

            self.failedRecords = failedRecords

            self.isActive = isActive

            self.trackingUrl = trackingUrl

            self.createdOn = createdOn

            self.companyId = companyId

            self.failed = failed

            self.succeed = succeed

            self.filePath = filePath

            self.total = total

            self.customTemplateTag = customTemplateTag

            self.cancelledRecords = cancelledRecords

            self.modifiedOn = modifiedOn

            self.stage = stage

            self.modifiedBy = modifiedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cancelled = try container.decode(Int.self, forKey: .cancelled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserInfo1.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                templateTag = try container.decode(String.self, forKey: .templateTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                failedRecords = try container.decode([[String: Any]].self, forKey: .failedRecords)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                failed = try container.decode(Int.self, forKey: .failed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                succeed = try container.decode(Int.self, forKey: .succeed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filePath = try container.decode(String.self, forKey: .filePath)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            total = try container.decode(Int.self, forKey: .total)

            do {
                customTemplateTag = try container.decode(String.self, forKey: .customTemplateTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cancelledRecords = try container.decode([[String: Any]].self, forKey: .cancelledRecords)

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
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(UserInfo1.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(succeed, forKey: .succeed)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(customTemplateTag, forKey: .customTemplateTag)

            try? container.encodeIfPresent(cancelledRecords, forKey: .cancelledRecords)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encode(modifiedBy, forKey: .modifiedBy)
        }
    }
}
