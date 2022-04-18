import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: Cloud
         Used By: Feedback
     */
    class Cloud: Codable {
        public var id: String?

        public var name: String?

        public var provider: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case name

            case provider
        }

        public init(id: String?, name: String?, provider: String?) {
            self.id = id

            self.name = name

            self.provider = provider
        }

        public func duplicate() -> Cloud {
            let dict = self.dictionary!
            let copy = Cloud(dictionary: dict)!
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
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                provider = try container.decode(String.self, forKey: .provider)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(provider, forKey: .provider)
        }
    }
}
