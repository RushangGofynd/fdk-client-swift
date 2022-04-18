import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: LandingPageSchema
         Used By: Content
     */
    class LandingPageSchema: Codable {
        public var slug: String?

        public var action: Action?

        public var platform: [String]?

        public var createdBy: CreatedBySchema?

        public var dateMeta: DateMeta?

        public var id: String?

        public var application: String?

        public var archived: Bool?

        public var customJson: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case slug

            case action

            case platform

            case createdBy = "created_by"

            case dateMeta = "date_meta"

            case id = "_id"

            case application

            case archived

            case customJson = "_custom_json"
        }

        public init(action: Action?, application: String?, archived: Bool?, createdBy: CreatedBySchema?, dateMeta: DateMeta?, platform: [String]?, slug: String?, customJson: [String: Any]?, id: String?) {
            self.slug = slug

            self.action = action

            self.platform = platform

            self.createdBy = createdBy

            self.dateMeta = dateMeta

            self.id = id

            self.application = application

            self.archived = archived

            self.customJson = customJson
        }

        public func duplicate() -> LandingPageSchema {
            let dict = self.dictionary!
            let copy = LandingPageSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(Action.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platform = try container.decode([String].self, forKey: .platform)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(CreatedBySchema.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dateMeta = try container.decode(DateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                application = try container.decode(String.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                archived = try container.decode(Bool.self, forKey: .archived)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(archived, forKey: .archived)

            try? container.encodeIfPresent(customJson, forKey: .customJson)
        }
    }
}
