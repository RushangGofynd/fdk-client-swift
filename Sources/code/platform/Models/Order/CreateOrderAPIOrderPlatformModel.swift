

import Foundation

public extension PlatformClient.Order {
    /*
         Model: CreateOrderAPI
         Used By: Order
     */

    class CreateOrderAPI: Codable {
        public var currencyInfo: [String: Any]?

        public var billingInfo: BillingInfo

        public var paymentInfo: PaymentInfo

        public var shipments: [Shipment]

        public var shippingInfo: ShippingInfo

        public var externalCreationDate: String?

        public var taxInfo: TaxInfo?

        public var charges: [Charge]?

        public var config: [String: Any]?

        public var externalOrderId: String?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case currencyInfo = "currency_info"

            case billingInfo = "billing_info"

            case paymentInfo = "payment_info"

            case shipments

            case shippingInfo = "shipping_info"

            case externalCreationDate = "external_creation_date"

            case taxInfo = "tax_info"

            case charges

            case config

            case externalOrderId = "external_order_id"

            case meta
        }

        public init(billingInfo: BillingInfo, charges: [Charge]? = nil, config: [String: Any]? = nil, currencyInfo: [String: Any]? = nil, externalCreationDate: String? = nil, externalOrderId: String? = nil, meta: [String: Any]? = nil, paymentInfo: PaymentInfo, shipments: [Shipment], shippingInfo: ShippingInfo, taxInfo: TaxInfo? = nil) {
            self.currencyInfo = currencyInfo

            self.billingInfo = billingInfo

            self.paymentInfo = paymentInfo

            self.shipments = shipments

            self.shippingInfo = shippingInfo

            self.externalCreationDate = externalCreationDate

            self.taxInfo = taxInfo

            self.charges = charges

            self.config = config

            self.externalOrderId = externalOrderId

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                currencyInfo = try container.decode([String: Any].self, forKey: .currencyInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            billingInfo = try container.decode(BillingInfo.self, forKey: .billingInfo)

            paymentInfo = try container.decode(PaymentInfo.self, forKey: .paymentInfo)

            shipments = try container.decode([Shipment].self, forKey: .shipments)

            shippingInfo = try container.decode(ShippingInfo.self, forKey: .shippingInfo)

            do {
                externalCreationDate = try container.decode(String.self, forKey: .externalCreationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxInfo = try container.decode(TaxInfo.self, forKey: .taxInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                charges = try container.decode([Charge].self, forKey: .charges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                config = try container.decode([String: Any].self, forKey: .config)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)

            try? container.encodeIfPresent(billingInfo, forKey: .billingInfo)

            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(shippingInfo, forKey: .shippingInfo)

            try? container.encodeIfPresent(externalCreationDate, forKey: .externalCreationDate)

            try? container.encodeIfPresent(taxInfo, forKey: .taxInfo)

            try? container.encodeIfPresent(charges, forKey: .charges)

            try? container.encodeIfPresent(config, forKey: .config)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: CreateOrderAPI
         Used By: Order
     */

    class CreateOrderAPI: Codable {
        public var currencyInfo: [String: Any]?

        public var billingInfo: BillingInfo

        public var paymentInfo: PaymentInfo

        public var shipments: [Shipment]

        public var shippingInfo: ShippingInfo

        public var externalCreationDate: String?

        public var taxInfo: TaxInfo?

        public var charges: [Charge]?

        public var config: [String: Any]?

        public var externalOrderId: String?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case currencyInfo = "currency_info"

            case billingInfo = "billing_info"

            case paymentInfo = "payment_info"

            case shipments

            case shippingInfo = "shipping_info"

            case externalCreationDate = "external_creation_date"

            case taxInfo = "tax_info"

            case charges

            case config

            case externalOrderId = "external_order_id"

            case meta
        }

        public init(billingInfo: BillingInfo, charges: [Charge]? = nil, config: [String: Any]? = nil, currencyInfo: [String: Any]? = nil, externalCreationDate: String? = nil, externalOrderId: String? = nil, meta: [String: Any]? = nil, paymentInfo: PaymentInfo, shipments: [Shipment], shippingInfo: ShippingInfo, taxInfo: TaxInfo? = nil) {
            self.currencyInfo = currencyInfo

            self.billingInfo = billingInfo

            self.paymentInfo = paymentInfo

            self.shipments = shipments

            self.shippingInfo = shippingInfo

            self.externalCreationDate = externalCreationDate

            self.taxInfo = taxInfo

            self.charges = charges

            self.config = config

            self.externalOrderId = externalOrderId

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                currencyInfo = try container.decode([String: Any].self, forKey: .currencyInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            billingInfo = try container.decode(BillingInfo.self, forKey: .billingInfo)

            paymentInfo = try container.decode(PaymentInfo.self, forKey: .paymentInfo)

            shipments = try container.decode([Shipment].self, forKey: .shipments)

            shippingInfo = try container.decode(ShippingInfo.self, forKey: .shippingInfo)

            do {
                externalCreationDate = try container.decode(String.self, forKey: .externalCreationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxInfo = try container.decode(TaxInfo.self, forKey: .taxInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                charges = try container.decode([Charge].self, forKey: .charges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                config = try container.decode([String: Any].self, forKey: .config)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)

            try? container.encodeIfPresent(billingInfo, forKey: .billingInfo)

            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(shippingInfo, forKey: .shippingInfo)

            try? container.encodeIfPresent(externalCreationDate, forKey: .externalCreationDate)

            try? container.encodeIfPresent(taxInfo, forKey: .taxInfo)

            try? container.encodeIfPresent(charges, forKey: .charges)

            try? container.encodeIfPresent(config, forKey: .config)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
