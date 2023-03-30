

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sku: String

        public var avlQty: Int

        public var affiliateMeta: [String: Any]

        public var affiliateStoreId: String

        public var deliveryCharge: Double

        public var itemSize: String

        public var fyndStoreId: String

        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public var transferPrice: Int

        public var amountPaid: Double

        public var quantity: Int

        public var pdfLinks: MarketPlacePdf?

        public var companyId: Int

        public var priceMarked: Double

        public var storeId: Int

        public var priceEffective: Double

        public var modifiedOn: String

        public var discount: Double

        public var itemId: Int

        public var hsnCodeId: String

        public var unitPrice: Double

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case sku

            case avlQty = "avl_qty"

            case affiliateMeta = "affiliate_meta"

            case affiliateStoreId = "affiliate_store_id"

            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case fyndStoreId = "fynd_store_id"

            case sellerIdentifier = "seller_identifier"

            case identifier

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case quantity

            case pdfLinks = "pdf_links"

            case companyId = "company_id"

            case priceMarked = "price_marked"

            case storeId = "store_id"

            case priceEffective = "price_effective"

            case modifiedOn = "modified_on"

            case discount

            case itemId = "item_id"

            case hsnCodeId = "hsn_code_id"

            case unitPrice = "unit_price"

            case id = "_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sku = sku

            self.avlQty = avlQty

            self.affiliateMeta = affiliateMeta

            self.affiliateStoreId = affiliateStoreId

            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.fyndStoreId = fyndStoreId

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.quantity = quantity

            self.pdfLinks = pdfLinks

            self.companyId = companyId

            self.priceMarked = priceMarked

            self.storeId = storeId

            self.priceEffective = priceEffective

            self.modifiedOn = modifiedOn

            self.discount = discount

            self.itemId = itemId

            self.hsnCodeId = hsnCodeId

            self.unitPrice = unitPrice

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sku = try container.decode(String.self, forKey: .sku)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            storeId = try container.decode(Int.self, forKey: .storeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            discount = try container.decode(Double.self, forKey: .discount)

            itemId = try container.decode(Int.self, forKey: .itemId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sku: String

        public var avlQty: Int

        public var affiliateMeta: [String: Any]

        public var affiliateStoreId: String

        public var deliveryCharge: Double

        public var itemSize: String

        public var fyndStoreId: String

        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public var transferPrice: Int

        public var amountPaid: Double

        public var quantity: Int

        public var pdfLinks: MarketPlacePdf?

        public var companyId: Int

        public var priceMarked: Double

        public var storeId: Int

        public var priceEffective: Double

        public var modifiedOn: String

        public var discount: Double

        public var itemId: Int

        public var hsnCodeId: String

        public var unitPrice: Double

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case sku

            case avlQty = "avl_qty"

            case affiliateMeta = "affiliate_meta"

            case affiliateStoreId = "affiliate_store_id"

            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case fyndStoreId = "fynd_store_id"

            case sellerIdentifier = "seller_identifier"

            case identifier

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case quantity

            case pdfLinks = "pdf_links"

            case companyId = "company_id"

            case priceMarked = "price_marked"

            case storeId = "store_id"

            case priceEffective = "price_effective"

            case modifiedOn = "modified_on"

            case discount

            case itemId = "item_id"

            case hsnCodeId = "hsn_code_id"

            case unitPrice = "unit_price"

            case id = "_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sku = sku

            self.avlQty = avlQty

            self.affiliateMeta = affiliateMeta

            self.affiliateStoreId = affiliateStoreId

            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.fyndStoreId = fyndStoreId

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.quantity = quantity

            self.pdfLinks = pdfLinks

            self.companyId = companyId

            self.priceMarked = priceMarked

            self.storeId = storeId

            self.priceEffective = priceEffective

            self.modifiedOn = modifiedOn

            self.discount = discount

            self.itemId = itemId

            self.hsnCodeId = hsnCodeId

            self.unitPrice = unitPrice

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sku = try container.decode(String.self, forKey: .sku)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            storeId = try container.decode(Int.self, forKey: .storeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            discount = try container.decode(Double.self, forKey: .discount)

            itemId = try container.decode(Int.self, forKey: .itemId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
