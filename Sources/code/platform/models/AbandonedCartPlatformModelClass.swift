

import Foundation
public extension PlatformClient {
    /*
         Model: AbandonedCart
         Used By: Cart
     */

    class AbandonedCart: Codable {
        public var comment: String?

        public var checkoutMode: String?

        public var meta: [String: Any]?

        public var paymentMethods: [[String: Any]]?

        public var cashback: [String: Any]

        public var isArchive: Bool?

        public var mergeQty: Bool?

        public var expireAt: String

        public var deliveryCharges: [String: Any]?

        public var buyNow: Bool?

        public var uid: Int

        public var shipments: [[String: Any]]?

        public var createdOn: String

        public var codCharges: [String: Any]?

        public var lastModified: String

        public var isDefault: Bool

        public var isActive: Bool?

        public var fcIndexMap: [Int]?

        public var articles: [[String: Any]]

        public var id: String

        public var fyndCredits: [String: Any]?

        public var paymentMode: String?

        public var pickUpCustomerDetails: [String: Any]?

        public var userId: String

        public var coupon: [String: Any]?

        public var gstin: String?

        public var discount: Double?

        public var appId: String?

        public var payments: [String: Any]?

        public var cartValue: Double?

        public var orderId: String?

        public var promotion: [String: Any]?

        public var bulkCouponDiscount: Double?

        public enum CodingKeys: String, CodingKey {
            case comment

            case checkoutMode = "checkout_mode"

            case meta

            case paymentMethods = "payment_methods"

            case cashback

            case isArchive = "is_archive"

            case mergeQty = "merge_qty"

            case expireAt = "expire_at"

            case deliveryCharges = "delivery_charges"

            case buyNow = "buy_now"

            case uid

            case shipments

            case createdOn = "created_on"

            case codCharges = "cod_charges"

            case lastModified = "last_modified"

            case isDefault = "is_default"

            case isActive = "is_active"

            case fcIndexMap = "fc_index_map"

            case articles

            case id = "_id"

            case fyndCredits = "fynd_credits"

            case paymentMode = "payment_mode"

            case pickUpCustomerDetails = "pick_up_customer_details"

            case userId = "user_id"

            case coupon

            case gstin

            case discount

            case appId = "app_id"

            case payments

            case cartValue = "cart_value"

            case orderId = "order_id"

            case promotion

            case bulkCouponDiscount = "bulk_coupon_discount"
        }

        public init(appId: String? = nil, articles: [[String: Any]], bulkCouponDiscount: Double? = nil, buyNow: Bool? = nil, cartValue: Double? = nil, cashback: [String: Any], checkoutMode: String? = nil, codCharges: [String: Any]? = nil, comment: String? = nil, coupon: [String: Any]? = nil, createdOn: String, deliveryCharges: [String: Any]? = nil, discount: Double? = nil, expireAt: String, fcIndexMap: [Int]? = nil, fyndCredits: [String: Any]? = nil, gstin: String? = nil, isActive: Bool? = nil, isArchive: Bool? = nil, isDefault: Bool, lastModified: String, mergeQty: Bool? = nil, meta: [String: Any]? = nil, orderId: String? = nil, payments: [String: Any]? = nil, paymentMethods: [[String: Any]]? = nil, paymentMode: String? = nil, pickUpCustomerDetails: [String: Any]? = nil, promotion: [String: Any]? = nil, shipments: [[String: Any]]? = nil, uid: Int, userId: String, id: String) {
            self.comment = comment

            self.checkoutMode = checkoutMode

            self.meta = meta

            self.paymentMethods = paymentMethods

            self.cashback = cashback

            self.isArchive = isArchive

            self.mergeQty = mergeQty

            self.expireAt = expireAt

            self.deliveryCharges = deliveryCharges

            self.buyNow = buyNow

            self.uid = uid

            self.shipments = shipments

            self.createdOn = createdOn

            self.codCharges = codCharges

            self.lastModified = lastModified

            self.isDefault = isDefault

            self.isActive = isActive

            self.fcIndexMap = fcIndexMap

            self.articles = articles

            self.id = id

            self.fyndCredits = fyndCredits

            self.paymentMode = paymentMode

            self.pickUpCustomerDetails = pickUpCustomerDetails

            self.userId = userId

            self.coupon = coupon

            self.gstin = gstin

            self.discount = discount

            self.appId = appId

            self.payments = payments

            self.cartValue = cartValue

            self.orderId = orderId

            self.promotion = promotion

            self.bulkCouponDiscount = bulkCouponDiscount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                comment = try container.decode(String.self, forKey: .comment)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentMethods = try container.decode([[String: Any]].self, forKey: .paymentMethods)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashback = try container.decode([String: Any].self, forKey: .cashback)

            do {
                isArchive = try container.decode(Bool.self, forKey: .isArchive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mergeQty = try container.decode(Bool.self, forKey: .mergeQty)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            expireAt = try container.decode(String.self, forKey: .expireAt)

            do {
                deliveryCharges = try container.decode([String: Any].self, forKey: .deliveryCharges)

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

            uid = try container.decode(Int.self, forKey: .uid)

            do {
                shipments = try container.decode([[String: Any]].self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                codCharges = try container.decode([String: Any].self, forKey: .codCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lastModified = try container.decode(String.self, forKey: .lastModified)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fcIndexMap = try container.decode([Int].self, forKey: .fcIndexMap)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articles = try container.decode([[String: Any]].self, forKey: .articles)

            id = try container.decode(String.self, forKey: .id)

            do {
                fyndCredits = try container.decode([String: Any].self, forKey: .fyndCredits)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pickUpCustomerDetails = try container.decode([String: Any].self, forKey: .pickUpCustomerDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userId = try container.decode(String.self, forKey: .userId)

            do {
                coupon = try container.decode([String: Any].self, forKey: .coupon)

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
                discount = try container.decode(Double.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appId = try container.decode(String.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payments = try container.decode([String: Any].self, forKey: .payments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartValue = try container.decode(Double.self, forKey: .cartValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promotion = try container.decode([String: Any].self, forKey: .promotion)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bulkCouponDiscount = try container.decode(Double.self, forKey: .bulkCouponDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(comment, forKey: .comment)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(isArchive, forKey: .isArchive)

            try? container.encode(mergeQty, forKey: .mergeQty)

            try? container.encodeIfPresent(expireAt, forKey: .expireAt)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(buyNow, forKey: .buyNow)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(lastModified, forKey: .lastModified)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(fcIndexMap, forKey: .fcIndexMap)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encode(paymentMode, forKey: .paymentMode)

            try? container.encode(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encode(gstin, forKey: .gstin)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encode(payments, forKey: .payments)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(promotion, forKey: .promotion)

            try? container.encode(bulkCouponDiscount, forKey: .bulkCouponDiscount)
        }
    }
}
