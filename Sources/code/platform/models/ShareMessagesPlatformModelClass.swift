import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ShareMessages
         Used By: Rewards
     */

    class ShareMessages: Codable {
        public var email: String?

        public var facebook: String?

        public var fallback: String?

        public var message: String?

        public var messenger: String?

        public var sms: String?

        public var text: String?

        public var twitter: String?

        public var whatsapp: String?

        public enum CodingKeys: String, CodingKey {
            case email

            case facebook

            case fallback

            case message

            case messenger

            case sms

            case text

            case twitter

            case whatsapp
        }

        public init(email: String?, facebook: String?, fallback: String?, message: String?, messenger: String?, sms: String?, text: String?, twitter: String?, whatsapp: String?) {
            self.email = email

            self.facebook = facebook

            self.fallback = fallback

            self.message = message

            self.messenger = messenger

            self.sms = sms

            self.text = text

            self.twitter = twitter

            self.whatsapp = whatsapp
        }

        public func duplicate() -> ShareMessages {
            let dict = self.dictionary!
            let copy = ShareMessages(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                facebook = try container.decode(String.self, forKey: .facebook)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fallback = try container.decode(String.self, forKey: .fallback)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                messenger = try container.decode(String.self, forKey: .messenger)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sms = try container.decode(String.self, forKey: .sms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                text = try container.decode(String.self, forKey: .text)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                twitter = try container.decode(String.self, forKey: .twitter)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                whatsapp = try container.decode(String.self, forKey: .whatsapp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(facebook, forKey: .facebook)

            try? container.encodeIfPresent(fallback, forKey: .fallback)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(messenger, forKey: .messenger)

            try? container.encodeIfPresent(sms, forKey: .sms)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(twitter, forKey: .twitter)

            try? container.encodeIfPresent(whatsapp, forKey: .whatsapp)
        }
    }
}
