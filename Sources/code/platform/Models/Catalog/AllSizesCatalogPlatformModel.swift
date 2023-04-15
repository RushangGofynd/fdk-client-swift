

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: AllSizes
         Used By: Catalog
     */

    class AllSizes: Codable {
        public var itemLength: Double

        public var itemDimensionsUnitOfMeasure: String

        public var itemHeight: Double

        public var itemWidth: Double

        public var itemWeight: Double

        public var itemWeightUnitOfMeasure: [String: Any]

        public var size: [String: Any]

        public var identifiers: [ValidateIdentifier]?

        public enum CodingKeys: String, CodingKey {
            case itemLength = "item_length"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case itemHeight = "item_height"

            case itemWidth = "item_width"

            case itemWeight = "item_weight"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case size

            case identifiers
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: [String: Any], itemWidth: Double, size: [String: Any]) {
            self.itemLength = itemLength

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.itemHeight = itemHeight

            self.itemWidth = itemWidth

            self.itemWeight = itemWeight

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.size = size

            self.identifiers = identifiers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemLength = try container.decode(Double.self, forKey: .itemLength)

            itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            itemWeightUnitOfMeasure = try container.decode([String: Any].self, forKey: .itemWeightUnitOfMeasure)

            size = try container.decode([String: Any].self, forKey: .size)

            do {
                identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: AllSizes
         Used By: Catalog
     */

    class AllSizes: Codable {
        public var itemLength: Double

        public var itemDimensionsUnitOfMeasure: String

        public var itemHeight: Double

        public var itemWidth: Double

        public var itemWeight: Double

        public var itemWeightUnitOfMeasure: [String: Any]

        public var size: [String: Any]

        public var identifiers: [ValidateIdentifier]?

        public enum CodingKeys: String, CodingKey {
            case itemLength = "item_length"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case itemHeight = "item_height"

            case itemWidth = "item_width"

            case itemWeight = "item_weight"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case size

            case identifiers
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: [String: Any], itemWidth: Double, size: [String: Any]) {
            self.itemLength = itemLength

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.itemHeight = itemHeight

            self.itemWidth = itemWidth

            self.itemWeight = itemWeight

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.size = size

            self.identifiers = identifiers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemLength = try container.decode(Double.self, forKey: .itemLength)

            itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            itemWeightUnitOfMeasure = try container.decode([String: Any].self, forKey: .itemWeightUnitOfMeasure)

            size = try container.decode([String: Any].self, forKey: .size)

            do {
                identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
        }
    }
}
