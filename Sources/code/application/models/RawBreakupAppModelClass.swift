

import Foundation
public extension ApplicationClient {
    /*
         Model: RawBreakup
         Used By: Cart
     */
    class RawBreakup: Codable {
        public var gstCharges: Double?

        public var coupon: Double?

        public var total: Double?

        public var convenienceFee: Double?

        public var subtotal: Double?

        public var vog: Double?

        public var fyndCash: Double?

        public var codCharge: Double?

        public var youSaved: Double?

        public var deliveryCharge: Double?

        public var discount: Double?

        public var mrpTotal: Double?

        public enum CodingKeys: String, CodingKey {
            case gstCharges = "gst_charges"

            case coupon

            case total

            case convenienceFee = "convenience_fee"

            case subtotal

            case vog

            case fyndCash = "fynd_cash"

            case codCharge = "cod_charge"

            case youSaved = "you_saved"

            case deliveryCharge = "delivery_charge"

            case discount

            case mrpTotal = "mrp_total"
        }

        public init(codCharge: Double? = nil, convenienceFee: Double? = nil, coupon: Double? = nil, deliveryCharge: Double? = nil, discount: Double? = nil, fyndCash: Double? = nil, gstCharges: Double? = nil, mrpTotal: Double? = nil, subtotal: Double? = nil, total: Double? = nil, vog: Double? = nil, youSaved: Double? = nil) {
            self.gstCharges = gstCharges

            self.coupon = coupon

            self.total = total

            self.convenienceFee = convenienceFee

            self.subtotal = subtotal

            self.vog = vog

            self.fyndCash = fyndCash

            self.codCharge = codCharge

            self.youSaved = youSaved

            self.deliveryCharge = deliveryCharge

            self.discount = discount

            self.mrpTotal = mrpTotal
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                gstCharges = try container.decode(Double.self, forKey: .gstCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                coupon = try container.decode(Double.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                total = try container.decode(Double.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                convenienceFee = try container.decode(Double.self, forKey: .convenienceFee)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subtotal = try container.decode(Double.self, forKey: .subtotal)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                vog = try container.decode(Double.self, forKey: .vog)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fyndCash = try container.decode(Double.self, forKey: .fyndCash)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                codCharge = try container.decode(Double.self, forKey: .codCharge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                youSaved = try container.decode(Double.self, forKey: .youSaved)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

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
                mrpTotal = try container.decode(Double.self, forKey: .mrpTotal)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstCharges, forKey: .gstCharges)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(convenienceFee, forKey: .convenienceFee)

            try? container.encodeIfPresent(subtotal, forKey: .subtotal)

            try? container.encodeIfPresent(vog, forKey: .vog)

            try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)

            try? container.encodeIfPresent(codCharge, forKey: .codCharge)

            try? container.encodeIfPresent(youSaved, forKey: .youSaved)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(mrpTotal, forKey: .mrpTotal)
        }
    }
}
