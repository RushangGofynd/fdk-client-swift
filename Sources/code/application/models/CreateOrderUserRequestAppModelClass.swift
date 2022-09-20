

import Foundation
public extension ApplicationClient {
    /*
         Model: CreateOrderUserRequest
         Used By: Payment
     */
    class CreateOrderUserRequest: Codable {
        public var failureCallbackUrl: String

        public var successCallbackUrl: String

        public var paymentLinkId: String

        public var paymentMethods: CreateOrderUserPaymentMethods

        public var meta: [String: Any]?

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case failureCallbackUrl = "failure_callback_url"

            case successCallbackUrl = "success_callback_url"

            case paymentLinkId = "payment_link_id"

            case paymentMethods = "payment_methods"

            case meta

            case currency
        }

        public init(currency: String, failureCallbackUrl: String, meta: [String: Any]? = nil, paymentLinkId: String, paymentMethods: CreateOrderUserPaymentMethods, successCallbackUrl: String) {
            self.failureCallbackUrl = failureCallbackUrl

            self.successCallbackUrl = successCallbackUrl

            self.paymentLinkId = paymentLinkId

            self.paymentMethods = paymentMethods

            self.meta = meta

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            failureCallbackUrl = try container.decode(String.self, forKey: .failureCallbackUrl)

            successCallbackUrl = try container.decode(String.self, forKey: .successCallbackUrl)

            paymentLinkId = try container.decode(String.self, forKey: .paymentLinkId)

            paymentMethods = try container.decode(CreateOrderUserPaymentMethods.self, forKey: .paymentMethods)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(failureCallbackUrl, forKey: .failureCallbackUrl)

            try? container.encodeIfPresent(successCallbackUrl, forKey: .successCallbackUrl)

            try? container.encodeIfPresent(paymentLinkId, forKey: .paymentLinkId)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}
