

import Foundation
public extension PlatformClient {
    /*
         Model: CouponAdd
         Used By: Cart
     */

    class CouponAdd: Codable {
        public var tags: [String]?

        public var author: CouponAuthor?

        public var restrictions: Restrictions?

        public var ruleDefinition: RuleDefinition

        public var code: String

        public var ownership: Ownership

        public var action: CouponAction?

        public var rule: [Rule]

        public var typeSlug: String

        public var validation: Validation?

        public var identifiers: Identifier

        public var schedule: CouponSchedule?

        public var dateMeta: CouponDateMeta?

        public var validity: Validity

        public var displayMeta: DisplayMeta

        public var state: State?

        public enum CodingKeys: String, CodingKey {
            case tags

            case author

            case restrictions

            case ruleDefinition = "rule_definition"

            case code

            case ownership

            case action

            case rule

            case typeSlug = "type_slug"

            case validation

            case identifiers

            case schedule = "_schedule"

            case dateMeta = "date_meta"

            case validity

            case displayMeta = "display_meta"

            case state
        }

        public init(action: CouponAction? = nil, author: CouponAuthor? = nil, code: String, dateMeta: CouponDateMeta? = nil, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions? = nil, rule: [Rule], ruleDefinition: RuleDefinition, state: State? = nil, tags: [String]? = nil, typeSlug: String, validation: Validation? = nil, validity: Validity, schedule: CouponSchedule? = nil) {
            self.tags = tags

            self.author = author

            self.restrictions = restrictions

            self.ruleDefinition = ruleDefinition

            self.code = code

            self.ownership = ownership

            self.action = action

            self.rule = rule

            self.typeSlug = typeSlug

            self.validation = validation

            self.identifiers = identifiers

            self.schedule = schedule

            self.dateMeta = dateMeta

            self.validity = validity

            self.displayMeta = displayMeta

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                author = try container.decode(CouponAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                restrictions = try container.decode(Restrictions.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)

            code = try container.decode(String.self, forKey: .code)

            ownership = try container.decode(Ownership.self, forKey: .ownership)

            do {
                action = try container.decode(CouponAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            rule = try container.decode([Rule].self, forKey: .rule)

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            do {
                validation = try container.decode(Validation.self, forKey: .validation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                schedule = try container.decode(CouponSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dateMeta = try container.decode(CouponDateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            validity = try container.decode(Validity.self, forKey: .validity)

            displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)

            do {
                state = try container.decode(State.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(state, forKey: .state)
        }
    }
}
