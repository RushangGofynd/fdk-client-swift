

import Foundation
public extension PlatformClient {
    /*
         Model: CreateUpdateAddressSerializer
         Used By: CompanyProfile
     */

    class CreateUpdateAddressSerializer: Codable {
        public var longitude: Double

        public var countryCode: String?

        public var country: String

        public var address1: String

        public var addressType: String

        public var city: String

        public var pincode: Int

        public var state: String

        public var landmark: String?

        public var address2: String?

        public var latitude: Double

        public enum CodingKeys: String, CodingKey {
            case longitude

            case countryCode = "country_code"

            case country

            case address1

            case addressType = "address_type"

            case city

            case pincode

            case state

            case landmark

            case address2

            case latitude
        }

        public init(address1: String, address2: String? = nil, addressType: String, city: String, country: String, countryCode: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, pincode: Int, state: String) {
            self.longitude = longitude

            self.countryCode = countryCode

            self.country = country

            self.address1 = address1

            self.addressType = addressType

            self.city = city

            self.pincode = pincode

            self.state = state

            self.landmark = landmark

            self.address2 = address2

            self.latitude = latitude
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            address1 = try container.decode(String.self, forKey: .address1)

            addressType = try container.decode(String.self, forKey: .addressType)

            city = try container.decode(String.self, forKey: .city)

            pincode = try container.decode(Int.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(latitude, forKey: .latitude)
        }
    }
}
