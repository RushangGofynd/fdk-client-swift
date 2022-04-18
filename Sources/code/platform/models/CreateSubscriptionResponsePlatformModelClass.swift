import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: CreateSubscriptionResponse
         Used By: Billing
     */

    class CreateSubscriptionResponse: Codable {
        public var subscription: EntitySubscription?

        public var confirmUrl: String?

        public enum CodingKeys: String, CodingKey {
            case subscription

            case confirmUrl = "confirm_url"
        }

        public init(confirmUrl: String?, subscription: EntitySubscription?) {
            self.subscription = subscription

            self.confirmUrl = confirmUrl
        }

        public func duplicate() -> CreateSubscriptionResponse {
            let dict = self.dictionary!
            let copy = CreateSubscriptionResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                subscription = try container.decode(EntitySubscription.self, forKey: .subscription)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                confirmUrl = try container.decode(String.self, forKey: .confirmUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(subscription, forKey: .subscription)

            try? container.encodeIfPresent(confirmUrl, forKey: .confirmUrl)
        }
    }
}
