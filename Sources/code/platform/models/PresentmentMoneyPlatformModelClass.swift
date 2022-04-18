import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: PresentmentMoney
         Used By: Order
     */

    class PresentmentMoney: Codable {
        public var amount: String?

        public var currencyCode: String?

        public enum CodingKeys: String, CodingKey {
            case amount

            case currencyCode = "currency_code"
        }

        public init(amount: String?, currencyCode: String?) {
            self.amount = amount

            self.currencyCode = currencyCode
        }

        public func duplicate() -> PresentmentMoney {
            let dict = self.dictionary!
            let copy = PresentmentMoney(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                amount = try container.decode(String.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        }
    }
}
