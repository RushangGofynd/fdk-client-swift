import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: BagStatusBagStateMapper
         Used By: Order
     */

    class BagStatusBagStateMapper: Codable {
        public var isActive: Bool?

        public var displayName: String?

        public var name: String?

        public var appDisplayName: String?

        public var appStateName: String?

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case displayName = "display_name"

            case name

            case appDisplayName = "app_display_name"

            case appStateName = "app_state_name"
        }

        public init(appDisplayName: String?, appStateName: String?, displayName: String?, isActive: Bool?, name: String?) {
            self.isActive = isActive

            self.displayName = displayName

            self.name = name

            self.appDisplayName = appDisplayName

            self.appStateName = appStateName
        }

        public func duplicate() -> BagStatusBagStateMapper {
            let dict = self.dictionary!
            let copy = BagStatusBagStateMapper(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appDisplayName = try container.decode(String.self, forKey: .appDisplayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appStateName = try container.decode(String.self, forKey: .appStateName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)

            try? container.encodeIfPresent(appStateName, forKey: .appStateName)
        }
    }
}
