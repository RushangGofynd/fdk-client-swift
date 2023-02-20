

import Foundation
public extension PlatformClient {
    /*
         Model: Article
         Used By: Order
     */

    class Article: Codable {
        public var weight: Weight?

        public var isSet: Bool?

        public var espModified: [String: Any]?

        public var code: String?

        public var uid: String

        public var id: String

        public var rawMeta: [String: Any]?

        public var identifiers: Identifier

        public var size: String

        public var sellerIdentifier: String

        public var aSet: [String: Any]?

        public var dimensions: Dimensions?

        public var returnConfig: ReturnConfig?

        public var childDetails: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case weight

            case isSet = "is_set"

            case espModified = "esp_modified"

            case code

            case uid

            case id = "_id"

            case rawMeta = "raw_meta"

            case identifiers

            case size

            case sellerIdentifier = "seller_identifier"

            case aSet = "a_set"

            case dimensions

            case returnConfig = "return_config"

            case childDetails = "child_details"
        }

        public init(aSet: [String: Any]? = nil, childDetails: [String: Any]? = nil, code: String? = nil, dimensions: Dimensions? = nil, espModified: [String: Any]? = nil, identifiers: Identifier, isSet: Bool? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig? = nil, sellerIdentifier: String, size: String, uid: String, weight: Weight? = nil, id: String) {
            self.weight = weight

            self.isSet = isSet

            self.espModified = espModified

            self.code = code

            self.uid = uid

            self.id = id

            self.rawMeta = rawMeta

            self.identifiers = identifiers

            self.size = size

            self.sellerIdentifier = sellerIdentifier

            self.aSet = aSet

            self.dimensions = dimensions

            self.returnConfig = returnConfig

            self.childDetails = childDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                weight = try container.decode(Weight.self, forKey: .weight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                espModified = try container.decode([String: Any].self, forKey: .espModified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            id = try container.decode(String.self, forKey: .id)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            size = try container.decode(String.self, forKey: .size)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                aSet = try container.decode([String: Any].self, forKey: .aSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dimensions = try container.decode(Dimensions.self, forKey: .dimensions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                childDetails = try container.decode([String: Any].self, forKey: .childDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(espModified, forKey: .espModified)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(aSet, forKey: .aSet)

            try? container.encodeIfPresent(dimensions, forKey: .dimensions)

            try? container.encode(returnConfig, forKey: .returnConfig)

            try? container.encode(childDetails, forKey: .childDetails)
        }
    }
}
