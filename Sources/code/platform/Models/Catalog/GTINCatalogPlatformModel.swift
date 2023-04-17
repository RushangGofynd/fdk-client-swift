

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: GTIN
         Used By: Catalog
     */

    class GTIN: Codable {
        public var gtinType: String

        public var primary: Bool?

        public var gtinValue: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case gtinType = "gtin_type"

            case primary

            case gtinValue = "gtin_value"
        }

        public init(gtinType: String, gtinValue: [String: Any], primary: Bool? = nil) {
            self.gtinType = gtinType

            self.primary = primary

            self.gtinValue = gtinValue
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gtinType = try container.decode(String.self, forKey: .gtinType)

            do {
                primary = try container.decode(Bool.self, forKey: .primary)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gtinValue = try container.decode([String: Any].self, forKey: .gtinValue)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gtinType, forKey: .gtinType)

            try? container.encodeIfPresent(primary, forKey: .primary)

            try? container.encodeIfPresent(gtinValue, forKey: .gtinValue)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: GTIN
         Used By: Catalog
     */

    class GTIN: Codable {
        public var gtinType: String

        public var primary: Bool?

        public var gtinValue: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case gtinType = "gtin_type"

            case primary

            case gtinValue = "gtin_value"
        }

        public init(gtinType: String, gtinValue: [String: Any], primary: Bool? = nil) {
            self.gtinType = gtinType

            self.primary = primary

            self.gtinValue = gtinValue
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gtinType = try container.decode(String.self, forKey: .gtinType)

            do {
                primary = try container.decode(Bool.self, forKey: .primary)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gtinValue = try container.decode([String: Any].self, forKey: .gtinValue)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gtinType, forKey: .gtinType)

            try? container.encodeIfPresent(primary, forKey: .primary)

            try? container.encodeIfPresent(gtinValue, forKey: .gtinValue)
        }
    }
}
