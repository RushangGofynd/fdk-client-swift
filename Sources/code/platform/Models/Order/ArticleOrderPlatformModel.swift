

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Article
         Used By: Order
     */

    class Article: Codable {
        public var rawMeta: [String: Any]?

        public var id: String

        public var size: String

        public var sellerIdentifier: String

        public var isSet: Bool?

        public var dimensions: Dimensions?

        public var code: String?

        public var uid: String

        public var identifiers: Identifier

        public var espModified: [String: Any]?

        public var childDetails: [String: Any]?

        public var aSet: [String: Any]?

        public var returnConfig: ReturnConfig?

        public var weight: Weight?

        public enum CodingKeys: String, CodingKey {
            case rawMeta = "raw_meta"

            case id = "_id"

            case size

            case sellerIdentifier = "seller_identifier"

            case isSet = "is_set"

            case dimensions

            case code

            case uid

            case identifiers

            case espModified = "esp_modified"

            case childDetails = "child_details"

            case aSet = "a_set"

            case returnConfig = "return_config"

            case weight
        }

        public init(aSet: [String: Any]? = nil, childDetails: [String: Any]? = nil, code: String? = nil, dimensions: Dimensions? = nil, espModified: [String: Any]? = nil, identifiers: Identifier, isSet: Bool? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig? = nil, sellerIdentifier: String, size: String, uid: String, weight: Weight? = nil, id: String) {
            self.rawMeta = rawMeta

            self.id = id

            self.size = size

            self.sellerIdentifier = sellerIdentifier

            self.isSet = isSet

            self.dimensions = dimensions

            self.code = code

            self.uid = uid

            self.identifiers = identifiers

            self.espModified = espModified

            self.childDetails = childDetails

            self.aSet = aSet

            self.returnConfig = returnConfig

            self.weight = weight
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            size = try container.decode(String.self, forKey: .size)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                espModified = try container.decode([String: Any].self, forKey: .espModified)

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

            do {
                aSet = try container.decode([String: Any].self, forKey: .aSet)

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
                weight = try container.decode(Weight.self, forKey: .weight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(dimensions, forKey: .dimensions)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encode(espModified, forKey: .espModified)

            try? container.encode(childDetails, forKey: .childDetails)

            try? container.encode(aSet, forKey: .aSet)

            try? container.encode(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(weight, forKey: .weight)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Article
         Used By: Order
     */

    class Article: Codable {
        public var rawMeta: [String: Any]?

        public var id: String

        public var size: String

        public var sellerIdentifier: String

        public var isSet: Bool?

        public var dimensions: Dimensions?

        public var code: String?

        public var uid: String

        public var identifiers: Identifier

        public var espModified: [String: Any]?

        public var childDetails: [String: Any]?

        public var aSet: [String: Any]?

        public var returnConfig: ReturnConfig?

        public var weight: Weight?

        public enum CodingKeys: String, CodingKey {
            case rawMeta = "raw_meta"

            case id = "_id"

            case size

            case sellerIdentifier = "seller_identifier"

            case isSet = "is_set"

            case dimensions

            case code

            case uid

            case identifiers

            case espModified = "esp_modified"

            case childDetails = "child_details"

            case aSet = "a_set"

            case returnConfig = "return_config"

            case weight
        }

        public init(aSet: [String: Any]? = nil, childDetails: [String: Any]? = nil, code: String? = nil, dimensions: Dimensions? = nil, espModified: [String: Any]? = nil, identifiers: Identifier, isSet: Bool? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig? = nil, sellerIdentifier: String, size: String, uid: String, weight: Weight? = nil, id: String) {
            self.rawMeta = rawMeta

            self.id = id

            self.size = size

            self.sellerIdentifier = sellerIdentifier

            self.isSet = isSet

            self.dimensions = dimensions

            self.code = code

            self.uid = uid

            self.identifiers = identifiers

            self.espModified = espModified

            self.childDetails = childDetails

            self.aSet = aSet

            self.returnConfig = returnConfig

            self.weight = weight
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            size = try container.decode(String.self, forKey: .size)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                espModified = try container.decode([String: Any].self, forKey: .espModified)

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

            do {
                aSet = try container.decode([String: Any].self, forKey: .aSet)

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
                weight = try container.decode(Weight.self, forKey: .weight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(dimensions, forKey: .dimensions)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encode(espModified, forKey: .espModified)

            try? container.encode(childDetails, forKey: .childDetails)

            try? container.encode(aSet, forKey: .aSet)

            try? container.encode(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(weight, forKey: .weight)
        }
    }
}
