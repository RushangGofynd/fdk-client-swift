

import Foundation
public extension PlatformClient {
    /*
         Model: StoreAssignResponse
         Used By: Catalog
     */

    class StoreAssignResponse: Codable {
        public var itemId: Int

        public var sCity: String?

        public var meta: [String: Any]?

        public var index: Int?

        public var status: Bool

        public var size: String

        public var id: String?

        public var priceMarked: Int?

        public var quantity: Int

        public var uid: String?

        public var storePincode: Int?

        public var storeId: Int?

        public var groupId: String?

        public var strategyWiseListing: [[String: Any]]?

        public var priceEffective: Int?

        public var articleAssignment: ArticleAssignment1

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case sCity = "s_city"

            case meta

            case index

            case status

            case size

            case id = "_id"

            case priceMarked = "price_marked"

            case quantity

            case uid

            case storePincode = "store_pincode"

            case storeId = "store_id"

            case groupId = "group_id"

            case strategyWiseListing = "strategy_wise_listing"

            case priceEffective = "price_effective"

            case articleAssignment = "article_assignment"

            case companyId = "company_id"
        }

        public init(articleAssignment: ArticleAssignment1, companyId: Int? = nil, groupId: String? = nil, index: Int? = nil, itemId: Int, meta: [String: Any]? = nil, priceEffective: Int? = nil, priceMarked: Int? = nil, quantity: Int, size: String, status: Bool, storeId: Int? = nil, storePincode: Int? = nil, strategyWiseListing: [[String: Any]]? = nil, sCity: String? = nil, uid: String? = nil, id: String? = nil) {
            self.itemId = itemId

            self.sCity = sCity

            self.meta = meta

            self.index = index

            self.status = status

            self.size = size

            self.id = id

            self.priceMarked = priceMarked

            self.quantity = quantity

            self.uid = uid

            self.storePincode = storePincode

            self.storeId = storeId

            self.groupId = groupId

            self.strategyWiseListing = strategyWiseListing

            self.priceEffective = priceEffective

            self.articleAssignment = articleAssignment

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                sCity = try container.decode(String.self, forKey: .sCity)

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
                index = try container.decode(Int.self, forKey: .index)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(Bool.self, forKey: .status)

            size = try container.decode(String.self, forKey: .size)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storePincode = try container.decode(Int.self, forKey: .storePincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeId = try container.decode(Int.self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                groupId = try container.decode(String.self, forKey: .groupId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                strategyWiseListing = try container.decode([[String: Any]].self, forKey: .strategyWiseListing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articleAssignment = try container.decode(ArticleAssignment1.self, forKey: .articleAssignment)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sCity, forKey: .sCity)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(index, forKey: .index)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(storePincode, forKey: .storePincode)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(groupId, forKey: .groupId)

            try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
