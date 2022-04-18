import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: MediaMeta
         Used By: Feedback
     */
    class MediaMeta: Codable {
        public var cloud: Cloud?

        public var comment: [String]?

        public var description: String?

        public var id: String?

        public var type: String?

        public var url: Url?

        public enum CodingKeys: String, CodingKey {
            case cloud

            case comment

            case description

            case id

            case type

            case url
        }

        public init(cloud: Cloud?, comment: [String]?, description: String?, id: String?, type: String?, url: Url?) {
            self.cloud = cloud

            self.comment = comment

            self.description = description

            self.id = id

            self.type = type

            self.url = url
        }

        public func duplicate() -> MediaMeta {
            let dict = self.dictionary!
            let copy = MediaMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cloud = try container.decode(Cloud.self, forKey: .cloud)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode([String].self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                url = try container.decode(Url.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cloud, forKey: .cloud)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }
}
