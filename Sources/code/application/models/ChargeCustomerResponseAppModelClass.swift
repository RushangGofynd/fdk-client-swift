

import Foundation
public extension ApplicationClient {
    /*
         Model: ChargeCustomerResponse
         Used By: Payment
     */
    class ChargeCustomerResponse: Codable {
        public var orderId: String

        public var success: Bool

        public var deliveryAddressId: String?

        public var status: String

        public var message: String

        public var cartId: String?

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case success

            case deliveryAddressId = "delivery_address_id"

            case status

            case message

            case cartId = "cart_id"

            case aggregator
        }

        public init(aggregator: String, cartId: String? = nil, deliveryAddressId: String? = nil, message: String, orderId: String, status: String, success: Bool) {
            self.orderId = orderId

            self.success = success

            self.deliveryAddressId = deliveryAddressId

            self.status = status

            self.message = message

            self.cartId = cartId

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                deliveryAddressId = try container.decode(String.self, forKey: .deliveryAddressId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            message = try container.decode(String.self, forKey: .message)

            do {
                cartId = try container.decode(String.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(deliveryAddressId, forKey: .deliveryAddressId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encode(cartId, forKey: .cartId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}
