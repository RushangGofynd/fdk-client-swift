import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: Stats
         Used By: Communication
     */

    class Stats: Codable {
        public var id: String?

        public var imported: [String: Any]?

        public var processed: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case imported

            case processed
        }

        public init(imported: [String: Any]?, processed: [String: Any]?, id: String?) {
            self.id = id

            self.imported = imported

            self.processed = processed
        }

        public func duplicate() -> Stats {
            let dict = self.dictionary!
            let copy = Stats(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                imported = try container.decode([String: Any].self, forKey: .imported)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                processed = try container.decode([String: Any].self, forKey: .processed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(imported, forKey: .imported)

            try? container.encodeIfPresent(processed, forKey: .processed)
        }
    }
}
