import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: VerifyEmailOTPSuccess
         Used By: User
     */
    class VerifyEmailOTPSuccess: Codable {
        public var user: UserSchema?

        public var verifyEmailLink: Bool?

        public enum CodingKeys: String, CodingKey {
            case user

            case verifyEmailLink = "verify_email_link"
        }

        public init(user: UserSchema?, verifyEmailLink: Bool?) {
            self.user = user

            self.verifyEmailLink = verifyEmailLink
        }

        public func duplicate() -> VerifyEmailOTPSuccess {
            let dict = self.dictionary!
            let copy = VerifyEmailOTPSuccess(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                user = try container.decode(UserSchema.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifyEmailLink = try container.decode(Bool.self, forKey: .verifyEmailLink)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(verifyEmailLink, forKey: .verifyEmailLink)
        }
    }
}
