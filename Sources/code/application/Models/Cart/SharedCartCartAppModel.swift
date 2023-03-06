

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: SharedCart
         Used By: Cart
     */
    class SharedCart: Codable {
        public var paymentSelectionLock: PaymentSelectionLock?

        public var buyNow: Bool?

        public var currency: CartCurrency?

        public var gstin: String?

        public var id: String?

        public var cartId: Int?

        public var deliveryPromise: ShipmentPromise?

        public var sharedCartDetails: SharedCartDetails?

        public var checkoutMode: String?

        public var message: String?

        public var items: [CartProductInfo]?

        public var couponText: String?

        public var isValid: Bool?

        public var lastModified: String?

        public var comment: String?

        public var restrictCheckout: Bool?

        public var breakupValues: CartBreakup?

        public var deliveryChargeInfo: String?

        public var uid: String?

        public enum CodingKeys: String, CodingKey {
            case paymentSelectionLock = "payment_selection_lock"

            case buyNow = "buy_now"

            case currency

            case gstin

            case id

            case cartId = "cart_id"

            case deliveryPromise = "delivery_promise"

            case sharedCartDetails = "shared_cart_details"

            case checkoutMode = "checkout_mode"

            case message

            case items

            case couponText = "coupon_text"

            case isValid = "is_valid"

            case lastModified = "last_modified"

            case comment

            case restrictCheckout = "restrict_checkout"

            case breakupValues = "breakup_values"

            case deliveryChargeInfo = "delivery_charge_info"

            case uid
        }

        public init(breakupValues: CartBreakup? = nil, buyNow: Bool? = nil, cartId: Int? = nil, checkoutMode: String? = nil, comment: String? = nil, couponText: String? = nil, currency: CartCurrency? = nil, deliveryChargeInfo: String? = nil, deliveryPromise: ShipmentPromise? = nil, gstin: String? = nil, id: String? = nil, isValid: Bool? = nil, items: [CartProductInfo]? = nil, lastModified: String? = nil, message: String? = nil, paymentSelectionLock: PaymentSelectionLock? = nil, restrictCheckout: Bool? = nil, sharedCartDetails: SharedCartDetails? = nil, uid: String? = nil) {
            self.paymentSelectionLock = paymentSelectionLock

            self.buyNow = buyNow

            self.currency = currency

            self.gstin = gstin

            self.id = id

            self.cartId = cartId

            self.deliveryPromise = deliveryPromise

            self.sharedCartDetails = sharedCartDetails

            self.checkoutMode = checkoutMode

            self.message = message

            self.items = items

            self.couponText = couponText

            self.isValid = isValid

            self.lastModified = lastModified

            self.comment = comment

            self.restrictCheckout = restrictCheckout

            self.breakupValues = breakupValues

            self.deliveryChargeInfo = deliveryChargeInfo

            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentSelectionLock = try container.decode(PaymentSelectionLock.self, forKey: .paymentSelectionLock)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buyNow = try container.decode(Bool.self, forKey: .buyNow)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(CartCurrency.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstin = try container.decode(String.self, forKey: .gstin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartId = try container.decode(Int.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sharedCartDetails = try container.decode(SharedCartDetails.self, forKey: .sharedCartDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([CartProductInfo].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponText = try container.decode(String.self, forKey: .couponText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isValid = try container.decode(Bool.self, forKey: .isValid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lastModified = try container.decode(String.self, forKey: .lastModified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                restrictCheckout = try container.decode(Bool.self, forKey: .restrictCheckout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryChargeInfo = try container.decode(String.self, forKey: .deliveryChargeInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)

            try? container.encodeIfPresent(buyNow, forKey: .buyNow)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)

            try? container.encodeIfPresent(sharedCartDetails, forKey: .sharedCartDetails)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(couponText, forKey: .couponText)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(lastModified, forKey: .lastModified)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}
