import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: ProductImage
         Used By: Cart
     */
    class ProductImage: Codable {
        public var url: String?

        public var secureUrl: String?

        public var aspectRatio: String?

        public enum CodingKeys: String, CodingKey {
            case url

            case secureUrl = "secure_url"

            case aspectRatio = "aspect_ratio"
        }

        public init(aspectRatio: String?, secureUrl: String?, url: String?) {
            self.url = url

            self.secureUrl = secureUrl

            self.aspectRatio = aspectRatio
        }

        public func duplicate() -> ProductImage {
            let dict = self.dictionary!
            let copy = ProductImage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                url = try container.decode(String.self, forKey: .url)

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

            do {
                aspectRatio = try container.decode(String.self, forKey: .aspectRatio)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)

            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
        }
    }
}
