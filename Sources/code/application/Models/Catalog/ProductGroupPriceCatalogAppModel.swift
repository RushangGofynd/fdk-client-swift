

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: ProductGroupPrice
         Used By: Catalog
     */
    class ProductGroupPrice: Codable {
        public var currency: [String: Any]?

        public var minMarked: Double?

        public var minEffective: Double?

        public var maxEffective: Double?

        public var maxMarked: Double?

        public enum CodingKeys: String, CodingKey {
            case currency

            case minMarked = "min_marked"

            case minEffective = "min_effective"

            case maxEffective = "max_effective"

            case maxMarked = "max_marked"
        }

        public init(currency: [String: Any]? = nil, maxEffective: Double? = nil, maxMarked: Double? = nil, minEffective: Double? = nil, minMarked: Double? = nil) {
            self.currency = currency

            self.minMarked = minMarked

            self.minEffective = minEffective

            self.maxEffective = maxEffective

            self.maxMarked = maxMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                currency = try container.decode([String: Any].self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                minMarked = try container.decode(Double.self, forKey: .minMarked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                minEffective = try container.decode(Double.self, forKey: .minEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                maxEffective = try container.decode(Double.self, forKey: .maxEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                maxMarked = try container.decode(Double.self, forKey: .maxMarked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(minMarked, forKey: .minMarked)

            try? container.encodeIfPresent(minEffective, forKey: .minEffective)

            try? container.encodeIfPresent(maxEffective, forKey: .maxEffective)

            try? container.encodeIfPresent(maxMarked, forKey: .maxMarked)
        }
    }
}
