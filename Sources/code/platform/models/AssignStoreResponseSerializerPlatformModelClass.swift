

import Foundation
public extension PlatformClient {
    /*
         Model: AssignStoreResponseSerializer
         Used By: CompanyProfile
     */

    class AssignStoreResponseSerializer: Codable {
        public var sCity: String?

        public var storeId: Int?

        public var articleAssignment: _ArticleAssignment?

        public var uid: String?

        public var itemId: Int?

        public var companyId: Int?

        public var quantity: Int?

        public var id: String?

        public var priceMarked: Double?

        public var status: Bool?

        public var index: Int?

        public var preiceEffective: Double?

        public var storePincode: String?

        public var size: String?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case sCity = "s_city"

            case storeId = "store_id"

            case articleAssignment = "article_assignment"

            case uid

            case itemId = "item_id"

            case companyId = "company_id"

            case quantity

            case id = "_id"

            case priceMarked = "price_marked"

            case status

            case index

            case preiceEffective = "preice_effective"

            case storePincode = "store_pincode"

            case size

            case meta
        }

        public init(articleAssignment: _ArticleAssignment? = nil, companyId: Int? = nil, index: Int? = nil, itemId: Int? = nil, meta: [String: Any]? = nil, preiceEffective: Double? = nil, priceMarked: Double? = nil, quantity: Int? = nil, size: String? = nil, status: Bool? = nil, storeId: Int? = nil, storePincode: String? = nil, sCity: String? = nil, uid: String? = nil, id: String? = nil) {
            self.sCity = sCity

            self.storeId = storeId

            self.articleAssignment = articleAssignment

            self.uid = uid

            self.itemId = itemId

            self.companyId = companyId

            self.quantity = quantity

            self.id = id

            self.priceMarked = priceMarked

            self.status = status

            self.index = index

            self.preiceEffective = preiceEffective

            self.storePincode = storePincode

            self.size = size

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sCity = try container.decode(String.self, forKey: .sCity)

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
                articleAssignment = try container.decode(_ArticleAssignment.self, forKey: .articleAssignment)

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

            do {
                itemId = try container.decode(Int.self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

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
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(Bool.self, forKey: .status)

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

            do {
                preiceEffective = try container.decode(Double.self, forKey: .preiceEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storePincode = try container.decode(String.self, forKey: .storePincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                size = try container.decode(String.self, forKey: .size)

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

            try? container.encodeIfPresent(sCity, forKey: .sCity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(index, forKey: .index)

            try? container.encodeIfPresent(preiceEffective, forKey: .preiceEffective)

            try? container.encodeIfPresent(storePincode, forKey: .storePincode)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
