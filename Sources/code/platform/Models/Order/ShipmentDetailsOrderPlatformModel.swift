

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentDetails
         Used By: Order
     */

    class ShipmentDetails: Codable {
        public var dpId: Int?

        public var affiliateShipmentId: String

        public var boxType: String?

        public var shipments: Int

        public var meta: [String: Any]?

        public var articles: [ArticleDetails1]

        public var fulfillmentId: Int

        public enum CodingKeys: String, CodingKey {
            case dpId = "dp_id"

            case affiliateShipmentId = "affiliate_shipment_id"

            case boxType = "box_type"

            case shipments

            case meta

            case articles

            case fulfillmentId = "fulfillment_id"
        }

        public init(affiliateShipmentId: String, articles: [ArticleDetails1], boxType: String? = nil, dpId: Int? = nil, fulfillmentId: Int, meta: [String: Any]? = nil, shipments: Int) {
            self.dpId = dpId

            self.affiliateShipmentId = affiliateShipmentId

            self.boxType = boxType

            self.shipments = shipments

            self.meta = meta

            self.articles = articles

            self.fulfillmentId = fulfillmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dpId = try container.decode(Int.self, forKey: .dpId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            do {
                boxType = try container.decode(String.self, forKey: .boxType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipments = try container.decode(Int.self, forKey: .shipments)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articles = try container.decode([ArticleDetails1].self, forKey: .articles)

            fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(dpId, forKey: .dpId)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encode(boxType, forKey: .boxType)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentDetails
         Used By: Order
     */

    class ShipmentDetails: Codable {
        public var dpId: Int?

        public var affiliateShipmentId: String

        public var boxType: String?

        public var shipments: Int

        public var meta: [String: Any]?

        public var articles: [ArticleDetails1]

        public var fulfillmentId: Int

        public enum CodingKeys: String, CodingKey {
            case dpId = "dp_id"

            case affiliateShipmentId = "affiliate_shipment_id"

            case boxType = "box_type"

            case shipments

            case meta

            case articles

            case fulfillmentId = "fulfillment_id"
        }

        public init(affiliateShipmentId: String, articles: [ArticleDetails1], boxType: String? = nil, dpId: Int? = nil, fulfillmentId: Int, meta: [String: Any]? = nil, shipments: Int) {
            self.dpId = dpId

            self.affiliateShipmentId = affiliateShipmentId

            self.boxType = boxType

            self.shipments = shipments

            self.meta = meta

            self.articles = articles

            self.fulfillmentId = fulfillmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dpId = try container.decode(Int.self, forKey: .dpId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            do {
                boxType = try container.decode(String.self, forKey: .boxType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipments = try container.decode(Int.self, forKey: .shipments)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articles = try container.decode([ArticleDetails1].self, forKey: .articles)

            fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(dpId, forKey: .dpId)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encode(boxType, forKey: .boxType)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
        }
    }
}
