import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: InvoicePaymentMethod
         Used By: Billing
     */

    class InvoicePaymentMethod: Codable {
        public var pgPaymentMethodId: String?

        public enum CodingKeys: String, CodingKey {
            case pgPaymentMethodId = "pg_payment_method_id"
        }

        public init(pgPaymentMethodId: String?) {
            self.pgPaymentMethodId = pgPaymentMethodId
        }

        public func duplicate() -> InvoicePaymentMethod {
            let dict = self.dictionary!
            let copy = InvoicePaymentMethod(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pgPaymentMethodId = try container.decode(String.self, forKey: .pgPaymentMethodId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pgPaymentMethodId, forKey: .pgPaymentMethodId)
        }
    }
}
