import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: CreateApplicationRequest
         Used By: Configuration
     */

    class CreateApplicationRequest: Codable {
        public var app: App?

        public var configuration: AppInventory?

        public var domain: AppDomain?

        public enum CodingKeys: String, CodingKey {
            case app

            case configuration

            case domain
        }

        public init(app: App?, configuration: AppInventory?, domain: AppDomain?) {
            self.app = app

            self.configuration = configuration

            self.domain = domain
        }

        public func duplicate() -> CreateApplicationRequest {
            let dict = self.dictionary!
            let copy = CreateApplicationRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                app = try container.decode(App.self, forKey: .app)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                configuration = try container.decode(AppInventory.self, forKey: .configuration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                domain = try container.decode(AppDomain.self, forKey: .domain)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(app, forKey: .app)

            try? container.encodeIfPresent(configuration, forKey: .configuration)

            try? container.encodeIfPresent(domain, forKey: .domain)
        }
    }
}
