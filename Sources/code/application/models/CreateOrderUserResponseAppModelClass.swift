

import Foundation
public extension ApplicationClient {
    /*
         Model: CreateOrderUserResponse
         Used By: Payment
     */
    class CreateOrderUserResponse: Codable {
        public var statusCode: Int

        public var data: CreateOrderUserData?

        public var callbackUrl: String?

        public var paymentConfirmUrl: String?

        public var success: Bool

        public var message: String

        public var orderId: String?

        public enum CodingKeys: String, CodingKey {
            case statusCode = "status_code"

            case data

            case callbackUrl = "callback_url"

            case paymentConfirmUrl = "payment_confirm_url"

            case success

            case message

            case orderId = "order_id"
        }

        public init(callbackUrl: String? = nil, data: CreateOrderUserData? = nil, message: String, orderId: String? = nil, paymentConfirmUrl: String? = nil, statusCode: Int, success: Bool) {
            self.statusCode = statusCode

            self.data = data

            self.callbackUrl = callbackUrl

            self.paymentConfirmUrl = paymentConfirmUrl

            self.success = success

            self.message = message

            self.orderId = orderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            do {
                data = try container.decode(CreateOrderUserData.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                callbackUrl = try container.decode(String.self, forKey: .callbackUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentConfirmUrl = try container.decode(String.self, forKey: .paymentConfirmUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            message = try container.decode(String.self, forKey: .message)

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encode(callbackUrl, forKey: .callbackUrl)

            try? container.encode(paymentConfirmUrl, forKey: .paymentConfirmUrl)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encode(orderId, forKey: .orderId)
        }
    }
}
