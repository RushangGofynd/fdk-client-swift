import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: Card
         Used By: Payment
     */
    class Card: Codable {
        public var aggregatorName: String

        public var cardIsin: String?

        public var expYear: Int?

        public var cardBrandImage: String?

        public var cardBrand: String?

        public var cardIssuer: String?

        public var cardReference: String?

        public var cardType: String?

        public var nickname: String?

        public var cardName: String?

        public var expired: Bool?

        public var expMonth: Int?

        public var cardFingerprint: String?

        public var cardId: String?

        public var cardToken: String?

        public var cardNumber: String?

        public enum CodingKeys: String, CodingKey {
            case aggregatorName = "aggregator_name"

            case cardIsin = "card_isin"

            case expYear = "exp_year"

            case cardBrandImage = "card_brand_image"

            case cardBrand = "card_brand"

            case cardIssuer = "card_issuer"

            case cardReference = "card_reference"

            case cardType = "card_type"

            case nickname

            case cardName = "card_name"

            case expired

            case expMonth = "exp_month"

            case cardFingerprint = "card_fingerprint"

            case cardId = "card_id"

            case cardToken = "card_token"

            case cardNumber = "card_number"
        }

        public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, expired: Bool?, expMonth: Int?, expYear: Int?, nickname: String?) {
            self.aggregatorName = aggregatorName

            self.cardIsin = cardIsin

            self.expYear = expYear

            self.cardBrandImage = cardBrandImage

            self.cardBrand = cardBrand

            self.cardIssuer = cardIssuer

            self.cardReference = cardReference

            self.cardType = cardType

            self.nickname = nickname

            self.cardName = cardName

            self.expired = expired

            self.expMonth = expMonth

            self.cardFingerprint = cardFingerprint

            self.cardId = cardId

            self.cardToken = cardToken

            self.cardNumber = cardNumber
        }

        public func duplicate() -> Card {
            let dict = self.dictionary!
            let copy = Card(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            do {
                cardIsin = try container.decode(String.self, forKey: .cardIsin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expYear = try container.decode(Int.self, forKey: .expYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardBrand = try container.decode(String.self, forKey: .cardBrand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardIssuer = try container.decode(String.self, forKey: .cardIssuer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardReference = try container.decode(String.self, forKey: .cardReference)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardType = try container.decode(String.self, forKey: .cardType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nickname = try container.decode(String.self, forKey: .nickname)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardName = try container.decode(String.self, forKey: .cardName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expired = try container.decode(Bool.self, forKey: .expired)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expMonth = try container.decode(Int.self, forKey: .expMonth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardFingerprint = try container.decode(String.self, forKey: .cardFingerprint)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardId = try container.decode(String.self, forKey: .cardId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardToken = try container.decode(String.self, forKey: .cardToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardNumber = try container.decode(String.self, forKey: .cardNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encode(cardIsin, forKey: .cardIsin)

            try? container.encode(expYear, forKey: .expYear)

            try? container.encode(cardBrandImage, forKey: .cardBrandImage)

            try? container.encode(cardBrand, forKey: .cardBrand)

            try? container.encode(cardIssuer, forKey: .cardIssuer)

            try? container.encode(cardReference, forKey: .cardReference)

            try? container.encode(cardType, forKey: .cardType)

            try? container.encode(nickname, forKey: .nickname)

            try? container.encode(cardName, forKey: .cardName)

            try? container.encode(expired, forKey: .expired)

            try? container.encode(expMonth, forKey: .expMonth)

            try? container.encode(cardFingerprint, forKey: .cardFingerprint)

            try? container.encode(cardId, forKey: .cardId)

            try? container.encode(cardToken, forKey: .cardToken)

            try? container.encode(cardNumber, forKey: .cardNumber)
        }
    }
}
