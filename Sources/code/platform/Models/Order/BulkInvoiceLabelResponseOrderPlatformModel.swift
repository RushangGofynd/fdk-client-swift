

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BulkInvoiceLabelResponse
         Used By: Order
     */

    class BulkInvoiceLabelResponse: Codable {
        public var companyId: String?

        public var invoice: [String: Any]?

        public var batchId: String

        public var storeName: String?

        public var storeId: String?

        public var storeCode: String?

        public var data: [String: Any]?

        public var doInvoiceLabelGenerated: Bool

        public var label: [String: Any]?

        public var invoiceStatus: String?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case invoice

            case batchId = "batch_id"

            case storeName = "store_name"

            case storeId = "store_id"

            case storeCode = "store_code"

            case data

            case doInvoiceLabelGenerated = "do_invoice_label_generated"

            case label

            case invoiceStatus = "invoice_status"
        }

        public init(batchId: String, companyId: String? = nil, data: [String: Any]? = nil, doInvoiceLabelGenerated: Bool, invoice: [String: Any]? = nil, invoiceStatus: String? = nil, label: [String: Any]? = nil, storeCode: String? = nil, storeId: String? = nil, storeName: String? = nil) {
            self.companyId = companyId

            self.invoice = invoice

            self.batchId = batchId

            self.storeName = storeName

            self.storeId = storeId

            self.storeCode = storeCode

            self.data = data

            self.doInvoiceLabelGenerated = doInvoiceLabelGenerated

            self.label = label

            self.invoiceStatus = invoiceStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyId = try container.decode(String.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoice = try container.decode([String: Any].self, forKey: .invoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            batchId = try container.decode(String.self, forKey: .batchId)

            do {
                storeName = try container.decode(String.self, forKey: .storeName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeId = try container.decode(String.self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeCode = try container.decode(String.self, forKey: .storeCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode([String: Any].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            doInvoiceLabelGenerated = try container.decode(Bool.self, forKey: .doInvoiceLabelGenerated)

            do {
                label = try container.decode([String: Any].self, forKey: .label)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoiceStatus = try container.decode(String.self, forKey: .invoiceStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(doInvoiceLabelGenerated, forKey: .doInvoiceLabelGenerated)

            try? container.encodeIfPresent(label, forKey: .label)

            try? container.encodeIfPresent(invoiceStatus, forKey: .invoiceStatus)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BulkInvoiceLabelResponse
         Used By: Order
     */

    class BulkInvoiceLabelResponse: Codable {
        public var companyId: String?

        public var invoice: [String: Any]?

        public var batchId: String

        public var storeName: String?

        public var storeId: String?

        public var storeCode: String?

        public var data: [String: Any]?

        public var doInvoiceLabelGenerated: Bool

        public var label: [String: Any]?

        public var invoiceStatus: String?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case invoice

            case batchId = "batch_id"

            case storeName = "store_name"

            case storeId = "store_id"

            case storeCode = "store_code"

            case data

            case doInvoiceLabelGenerated = "do_invoice_label_generated"

            case label

            case invoiceStatus = "invoice_status"
        }

        public init(batchId: String, companyId: String? = nil, data: [String: Any]? = nil, doInvoiceLabelGenerated: Bool, invoice: [String: Any]? = nil, invoiceStatus: String? = nil, label: [String: Any]? = nil, storeCode: String? = nil, storeId: String? = nil, storeName: String? = nil) {
            self.companyId = companyId

            self.invoice = invoice

            self.batchId = batchId

            self.storeName = storeName

            self.storeId = storeId

            self.storeCode = storeCode

            self.data = data

            self.doInvoiceLabelGenerated = doInvoiceLabelGenerated

            self.label = label

            self.invoiceStatus = invoiceStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyId = try container.decode(String.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoice = try container.decode([String: Any].self, forKey: .invoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            batchId = try container.decode(String.self, forKey: .batchId)

            do {
                storeName = try container.decode(String.self, forKey: .storeName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeId = try container.decode(String.self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeCode = try container.decode(String.self, forKey: .storeCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode([String: Any].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            doInvoiceLabelGenerated = try container.decode(Bool.self, forKey: .doInvoiceLabelGenerated)

            do {
                label = try container.decode([String: Any].self, forKey: .label)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoiceStatus = try container.decode(String.self, forKey: .invoiceStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(doInvoiceLabelGenerated, forKey: .doInvoiceLabelGenerated)

            try? container.encodeIfPresent(label, forKey: .label)

            try? container.encodeIfPresent(invoiceStatus, forKey: .invoiceStatus)
        }
    }
}
