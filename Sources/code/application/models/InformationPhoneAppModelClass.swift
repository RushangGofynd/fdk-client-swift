import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: InformationPhone
         Used By: Configuration
     */
    class InformationPhone: Codable {
        public var code: String?

        public var number: String?

        public enum CodingKeys: String, CodingKey {
            case code

            case number
        }

        public init(code: String?, number: String?) {
            self.code = code

            self.number = number
        }

        public func duplicate() -> InformationPhone {
            let dict = self.dictionary!
            let copy = InformationPhone(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                number = try container.decode(String.self, forKey: .number)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(number, forKey: .number)
        }
    }
}
