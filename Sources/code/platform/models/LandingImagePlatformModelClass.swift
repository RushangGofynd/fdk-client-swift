import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: LandingImage
         Used By: Configuration
     */

    class LandingImage: Codable {
        public var aspectRatio: String?

        public var secureUrl: String?

        public enum CodingKeys: String, CodingKey {
            case aspectRatio = "aspect_ratio"

            case secureUrl = "secure_url"
        }

        public init(aspectRatio: String?, secureUrl: String?) {
            self.aspectRatio = aspectRatio

            self.secureUrl = secureUrl
        }

        public func duplicate() -> LandingImage {
            let dict = self.dictionary!
            let copy = LandingImage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aspectRatio = try container.decode(String.self, forKey: .aspectRatio)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                secureUrl = try container.decode(String.self, forKey: .secureUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)

            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
        }
    }
}
