import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: OtherSellerCompany
         Used By: Configuration
     */

    class OtherSellerCompany: Codable {
        public var uid: Int?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case name
        }

        public init(name: String?, uid: Int?) {
            self.uid = uid

            self.name = name
        }

        public func duplicate() -> OtherSellerCompany {
            let dict = self.dictionary!
            let copy = OtherSellerCompany(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
