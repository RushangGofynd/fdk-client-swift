

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: RuleDefinition
         Used By: Cart
     */

    class RuleDefinition: Codable {
        public var isExact: Bool?

        public var valueType: String

        public var applicableOn: String

        public var type: String

        public var calculateOn: String

        public var autoApply: Bool?

        public var scope: [String]?

        public var currencyCode: String?

        public enum CodingKeys: String, CodingKey {
            case isExact = "is_exact"

            case valueType = "value_type"

            case applicableOn = "applicable_on"

            case type

            case calculateOn = "calculate_on"

            case autoApply = "auto_apply"

            case scope

            case currencyCode = "currency_code"
        }

        public init(applicableOn: String, autoApply: Bool? = nil, calculateOn: String, currencyCode: String? = nil, isExact: Bool? = nil, scope: [String]? = nil, type: String, valueType: String) {
            self.isExact = isExact

            self.valueType = valueType

            self.applicableOn = applicableOn

            self.type = type

            self.calculateOn = calculateOn

            self.autoApply = autoApply

            self.scope = scope

            self.currencyCode = currencyCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isExact = try container.decode(Bool.self, forKey: .isExact)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            valueType = try container.decode(String.self, forKey: .valueType)

            applicableOn = try container.decode(String.self, forKey: .applicableOn)

            type = try container.decode(String.self, forKey: .type)

            calculateOn = try container.decode(String.self, forKey: .calculateOn)

            do {
                autoApply = try container.decode(Bool.self, forKey: .autoApply)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                scope = try container.decode([String].self, forKey: .scope)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isExact, forKey: .isExact)

            try? container.encodeIfPresent(valueType, forKey: .valueType)

            try? container.encodeIfPresent(applicableOn, forKey: .applicableOn)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)

            try? container.encodeIfPresent(autoApply, forKey: .autoApply)

            try? container.encodeIfPresent(scope, forKey: .scope)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        }
    }
}
