import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: CreateFaqCategorySchema
         Used By: Content
     */
    class CreateFaqCategorySchema: Codable {
        public var category: CategorySchema?

        public enum CodingKeys: String, CodingKey {
            case category
        }

        public init(category: CategorySchema?) {
            self.category = category
        }

        public func duplicate() -> CreateFaqCategorySchema {
            let dict = self.dictionary!
            let copy = CreateFaqCategorySchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                category = try container.decode(CategorySchema.self, forKey: .category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(category, forKey: .category)
        }
    }
}
