import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: UnauthenticatedSchema
         Used By: User
     */
    class UnauthenticatedSchema: Codable {
        public var authenticated: Bool?

        public enum CodingKeys: String, CodingKey {
            case authenticated
        }

        public init(authenticated: Bool?) {
            self.authenticated = authenticated
        }

        public func duplicate() -> UnauthenticatedSchema {
            let dict = self.dictionary!
            let copy = UnauthenticatedSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                authenticated = try container.decode(Bool.self, forKey: .authenticated)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(authenticated, forKey: .authenticated)
        }
    }
}
