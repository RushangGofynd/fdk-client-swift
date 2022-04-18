import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: SearchLogRes
         Used By: Analytics
     */

    class SearchLogRes: Codable {
        public var items: [LogInfo]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [LogInfo]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> SearchLogRes {
            let dict = self.dictionary!
            let copy = SearchLogRes(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([LogInfo].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
