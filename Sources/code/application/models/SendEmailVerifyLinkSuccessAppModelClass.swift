import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: SendEmailVerifyLinkSuccess
         Used By: User
     */
    class SendEmailVerifyLinkSuccess: Codable {
        public var verifyEmailLink: Bool?

        public enum CodingKeys: String, CodingKey {
            case verifyEmailLink = "verify_email_link"
        }

        public init(verifyEmailLink: Bool?) {
            self.verifyEmailLink = verifyEmailLink
        }

        public func duplicate() -> SendEmailVerifyLinkSuccess {
            let dict = self.dictionary!
            let copy = SendEmailVerifyLinkSuccess(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                verifyEmailLink = try container.decode(Bool.self, forKey: .verifyEmailLink)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(verifyEmailLink, forKey: .verifyEmailLink)
        }
    }
}
