

import Foundation
public extension ApplicationClient {
    /*
         Model: ProductSize
         Used By: Catalog
     */
    class ProductSize: Codable {
        public var sellerIdentifiers: [String]?

        public var weight: Weight?

        public var dimension: Dimension?

        public var value: String?

        public var quantity: Int?

        public var isAvailable: Bool?

        public var display: String?

        public enum CodingKeys: String, CodingKey {
            case sellerIdentifiers = "seller_identifiers"

            case weight

            case dimension

            case value

            case quantity

            case isAvailable = "is_available"

            case display
        }

        public init(dimension: Dimension? = nil, display: String? = nil, isAvailable: Bool? = nil, quantity: Int? = nil, sellerIdentifiers: [String]? = nil, value: String? = nil, weight: Weight? = nil) {
            self.sellerIdentifiers = sellerIdentifiers

            self.weight = weight

            self.dimension = dimension

            self.value = value

            self.quantity = quantity

            self.isAvailable = isAvailable

            self.display = display
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sellerIdentifiers = try container.decode([String].self, forKey: .sellerIdentifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                weight = try container.decode(Weight.self, forKey: .weight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dimension = try container.decode(Dimension.self, forKey: .dimension)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

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
                isAvailable = try container.decode(Bool.self, forKey: .isAvailable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerIdentifiers, forKey: .sellerIdentifiers)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)

            try? container.encodeIfPresent(display, forKey: .display)
        }
    }
}
