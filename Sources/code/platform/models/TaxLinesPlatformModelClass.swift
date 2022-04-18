import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: TaxLines
         Used By: Order
     */

    class TaxLines: Codable {
        public var title: String?

        public var price: String?

        public var rate: Int?

        public var priceSet: TaxLinesPriceSet?

        public enum CodingKeys: String, CodingKey {
            case title

            case price

            case rate

            case priceSet = "price_set"
        }

        public init(price: String?, priceSet: TaxLinesPriceSet?, rate: Int?, title: String?) {
            self.title = title

            self.price = price

            self.rate = rate

            self.priceSet = priceSet
        }

        public func duplicate() -> TaxLines {
            let dict = self.dictionary!
            let copy = TaxLines(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(String.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rate = try container.decode(Int.self, forKey: .rate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceSet = try container.decode(TaxLinesPriceSet.self, forKey: .priceSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(rate, forKey: .rate)

            try? container.encodeIfPresent(priceSet, forKey: .priceSet)
        }
    }
}
