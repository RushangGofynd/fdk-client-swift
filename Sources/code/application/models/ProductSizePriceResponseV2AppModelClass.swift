import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: ProductSizePriceResponseV2
         Used By: Catalog
     */
    class ProductSizePriceResponseV2: Codable {
        public var pricePerPiece: ProductStockPriceV2?

        public var articleAssignment: ArticleAssignmentV2?

        public var quantity: Int?

        public var price: ProductStockPriceV2?

        public var pincode: Int?

        public var groupedAttributes: [SellerGroupAttributes]?

        public var sellerCount: Int?

        public var articleId: String?

        public var marketplaceAttributes: [MarketPlaceSttributesSchemaV2]?

        public var strategyWiseListing: [StrategyWiseListingSchemaV2]?

        public var returnConfig: ReturnConfigSchemaV2?

        public var discount: String?

        public var specialBadge: String?

        public var set: ProductSetV2?

        public var seller: SellerV2?

        public var store: StoreV2?

        public var itemType: String?

        public var longLat: [Double]?

        public enum CodingKeys: String, CodingKey {
            case pricePerPiece = "price_per_piece"

            case articleAssignment = "article_assignment"

            case quantity

            case price

            case pincode

            case groupedAttributes = "grouped_attributes"

            case sellerCount = "seller_count"

            case articleId = "article_id"

            case marketplaceAttributes = "marketplace_attributes"

            case strategyWiseListing = "strategy_wise_listing"

            case returnConfig = "return_config"

            case discount

            case specialBadge = "special_badge"

            case set

            case seller

            case store

            case itemType = "item_type"

            case longLat = "long_lat"
        }

        public init(articleAssignment: ArticleAssignmentV2?, articleId: String?, discount: String?, groupedAttributes: [SellerGroupAttributes]?, itemType: String?, longLat: [Double]?, marketplaceAttributes: [MarketPlaceSttributesSchemaV2]?, pincode: Int?, price: ProductStockPriceV2?, pricePerPiece: ProductStockPriceV2?, quantity: Int?, returnConfig: ReturnConfigSchemaV2?, seller: SellerV2?, sellerCount: Int?, set: ProductSetV2?, specialBadge: String?, store: StoreV2?, strategyWiseListing: [StrategyWiseListingSchemaV2]?) {
            self.pricePerPiece = pricePerPiece

            self.articleAssignment = articleAssignment

            self.quantity = quantity

            self.price = price

            self.pincode = pincode

            self.groupedAttributes = groupedAttributes

            self.sellerCount = sellerCount

            self.articleId = articleId

            self.marketplaceAttributes = marketplaceAttributes

            self.strategyWiseListing = strategyWiseListing

            self.returnConfig = returnConfig

            self.discount = discount

            self.specialBadge = specialBadge

            self.set = set

            self.seller = seller

            self.store = store

            self.itemType = itemType

            self.longLat = longLat
        }

        public func duplicate() -> ProductSizePriceResponseV2 {
            let dict = self.dictionary!
            let copy = ProductSizePriceResponseV2(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pricePerPiece = try container.decode(ProductStockPriceV2.self, forKey: .pricePerPiece)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleAssignment = try container.decode(ArticleAssignmentV2.self, forKey: .articleAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(ProductStockPriceV2.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pincode = try container.decode(Int.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                groupedAttributes = try container.decode([SellerGroupAttributes].self, forKey: .groupedAttributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellerCount = try container.decode(Int.self, forKey: .sellerCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleId = try container.decode(String.self, forKey: .articleId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marketplaceAttributes = try container.decode([MarketPlaceSttributesSchemaV2].self, forKey: .marketplaceAttributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                strategyWiseListing = try container.decode([StrategyWiseListingSchemaV2].self, forKey: .strategyWiseListing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnConfig = try container.decode(ReturnConfigSchemaV2.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discount = try container.decode(String.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                specialBadge = try container.decode(String.self, forKey: .specialBadge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                set = try container.decode(ProductSetV2.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                seller = try container.decode(SellerV2.self, forKey: .seller)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                store = try container.decode(StoreV2.self, forKey: .store)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemType = try container.decode(String.self, forKey: .itemType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                longLat = try container.decode([Double].self, forKey: .longLat)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pricePerPiece, forKey: .pricePerPiece)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)

            try? container.encodeIfPresent(sellerCount, forKey: .sellerCount)

            try? container.encodeIfPresent(articleId, forKey: .articleId)

            try? container.encodeIfPresent(marketplaceAttributes, forKey: .marketplaceAttributes)

            try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(specialBadge, forKey: .specialBadge)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(seller, forKey: .seller)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(longLat, forKey: .longLat)
        }
    }
}
