

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceMarked: Double

        public var priceEffective: Double

        public var storeId: Int

        public var amountPaid: Double

        public var affiliateMeta: [String: Any]

        public var companyId: Int

        public var deliveryCharge: Double

        public var affiliateStoreId: String

        public var quantity: Int

        public var pdfLinks: MarketPlacePdf?

        public var id: String

        public var itemSize: String

        public var modifiedOn: String

        public var itemId: Int

        public var sku: String

        public var hsnCodeId: String

        public var transferPrice: Int

        public var sellerIdentifier: String

        public var avlQty: Int

        public var discount: Double

        public var identifier: [String: Any]

        public var unitPrice: Double

        public var fyndStoreId: String

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case priceEffective = "price_effective"

            case storeId = "store_id"

            case amountPaid = "amount_paid"

            case affiliateMeta = "affiliate_meta"

            case companyId = "company_id"

            case deliveryCharge = "delivery_charge"

            case affiliateStoreId = "affiliate_store_id"

            case quantity

            case pdfLinks = "pdf_links"

            case id = "_id"

            case itemSize = "item_size"

            case modifiedOn = "modified_on"

            case itemId = "item_id"

            case sku

            case hsnCodeId = "hsn_code_id"

            case transferPrice = "transfer_price"

            case sellerIdentifier = "seller_identifier"

            case avlQty = "avl_qty"

            case discount

            case identifier

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceMarked = priceMarked

            self.priceEffective = priceEffective

            self.storeId = storeId

            self.amountPaid = amountPaid

            self.affiliateMeta = affiliateMeta

            self.companyId = companyId

            self.deliveryCharge = deliveryCharge

            self.affiliateStoreId = affiliateStoreId

            self.quantity = quantity

            self.pdfLinks = pdfLinks

            self.id = id

            self.itemSize = itemSize

            self.modifiedOn = modifiedOn

            self.itemId = itemId

            self.sku = sku

            self.hsnCodeId = hsnCodeId

            self.transferPrice = transferPrice

            self.sellerIdentifier = sellerIdentifier

            self.avlQty = avlQty

            self.discount = discount

            self.identifier = identifier

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            storeId = try container.decode(Int.self, forKey: .storeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            companyId = try container.decode(Int.self, forKey: .companyId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sku = try container.decode(String.self, forKey: .sku)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            discount = try container.decode(Double.self, forKey: .discount)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)
        }
    }
}
