import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: UpdateMediaListRequest
         Used By: Feedback
     */
    class UpdateMediaListRequest: Codable {
        public var approve: Bool?

        public var archive: Bool?

        public var entityType: String?

        public var ids: [String]?

        public enum CodingKeys: String, CodingKey {
            case approve

            case archive

            case entityType = "entity_type"

            case ids
        }

        public init(approve: Bool?, archive: Bool?, entityType: String?, ids: [String]?) {
            self.approve = approve

            self.archive = archive

            self.entityType = entityType

            self.ids = ids
        }

        public func duplicate() -> UpdateMediaListRequest {
            let dict = self.dictionary!
            let copy = UpdateMediaListRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                approve = try container.decode(Bool.self, forKey: .approve)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                archive = try container.decode(Bool.self, forKey: .archive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                entityType = try container.decode(String.self, forKey: .entityType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ids = try container.decode([String].self, forKey: .ids)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(approve, forKey: .approve)

            try? container.encodeIfPresent(archive, forKey: .archive)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(ids, forKey: .ids)
        }
    }
}
