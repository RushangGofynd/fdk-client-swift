import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ResponseEnvelopeString
         Used By: Inventory
     */

    class ResponseEnvelopeString: Codable {
        public var timestamp: String?

        public var status: Int?

        public var error: String?

        public var exception: String?

        public var message: String?

        public var totalTimeTakenInMillis: Int?

        public var httpStatus: String?

        public var items: String?

        public var payload: String?

        public var traceId: String?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case timestamp

            case status

            case error

            case exception

            case message

            case totalTimeTakenInMillis = "total_time_taken_in_millis"

            case httpStatus = "http_status"

            case items

            case payload

            case traceId = "trace_id"

            case page
        }

        public init(error: String?, exception: String?, httpStatus: String?, items: String?, message: String?, page: Page?, payload: String?, status: Int?, timestamp: String?, totalTimeTakenInMillis: Int?, traceId: String?) {
            self.timestamp = timestamp

            self.status = status

            self.error = error

            self.exception = exception

            self.message = message

            self.totalTimeTakenInMillis = totalTimeTakenInMillis

            self.httpStatus = httpStatus

            self.items = items

            self.payload = payload

            self.traceId = traceId

            self.page = page
        }

        public func duplicate() -> ResponseEnvelopeString {
            let dict = self.dictionary!
            let copy = ResponseEnvelopeString(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                timestamp = try container.decode(String.self, forKey: .timestamp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(Int.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                error = try container.decode(String.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                exception = try container.decode(String.self, forKey: .exception)

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
                totalTimeTakenInMillis = try container.decode(Int.self, forKey: .totalTimeTakenInMillis)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                httpStatus = try container.decode(String.self, forKey: .httpStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode(String.self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payload = try container.decode(String.self, forKey: .payload)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

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

            try? container.encodeIfPresent(timestamp, forKey: .timestamp)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(exception, forKey: .exception)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(totalTimeTakenInMillis, forKey: .totalTimeTakenInMillis)

            try? container.encodeIfPresent(httpStatus, forKey: .httpStatus)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(payload, forKey: .payload)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
