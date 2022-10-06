

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var status: String

        public var method: String

        public var contact: String

        public var email: String

        public var vpa: String

        public var amount: Int

        public var merchantOrderId: String

        public var currency: String

        public var aggregator: String

        public var customerId: String

        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case status

            case method

            case contact

            case email

            case vpa

            case amount

            case merchantOrderId = "merchant_order_id"

            case currency

            case aggregator

            case customerId = "customer_id"

            case orderId = "order_id"
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.status = status

            self.method = method

            self.contact = contact

            self.email = email

            self.vpa = vpa

            self.amount = amount

            self.merchantOrderId = merchantOrderId

            self.currency = currency

            self.aggregator = aggregator

            self.customerId = customerId

            self.orderId = orderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            method = try container.decode(String.self, forKey: .method)

            contact = try container.decode(String.self, forKey: .contact)

            email = try container.decode(String.self, forKey: .email)

            vpa = try container.decode(String.self, forKey: .vpa)

            amount = try container.decode(Int.self, forKey: .amount)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            currency = try container.decode(String.self, forKey: .currency)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            customerId = try container.decode(String.self, forKey: .customerId)

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}
