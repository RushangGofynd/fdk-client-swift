

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var media: [Media1]?

        public var customJson: [String: Any]?

        public var teaserTag: TeaserTag?

        public var variants: [String: Any]?

        public var variantMedia: [String: Any]?

        public var requester: String?

        public var attributes: [String: Any]?

        public var trader: [Trader]

        public var name: String

        public var bulkJobId: String?

        public var itemCode: String

        public var productPublish: ProductPublish?

        public var netQuantity: NetQuantity?

        public var uid: Int?

        public var sizeGuide: String?

        public var description: String?

        public var shortDescription: String?

        public var multiSize: Bool?

        public var countryOfOrigin: String

        public var productGroupTag: [String]?

        public var companyId: Int

        public var departments: [Int]

        public var customOrder: CustomOrder?

        public var brandUid: Int

        public var highlights: [String]?

        public var slug: String

        public var itemType: String

        public var currency: String

        public var isDependent: Bool?

        public var taxIdentifier: TaxIdentifier

        public var templateTag: String

        public var isSet: Bool?

        public var isActive: Bool?

        public var noOfBoxes: Int?

        public var action: String?

        public var sizes: [[String: Any]]

        public var variantGroup: [String: Any]?

        public var tags: [String]?

        public var changeRequestId: [String: Any]?

        public var isImageLessProduct: Bool?

        public var returnConfig: ReturnConfig

        public var categorySlug: String

        public enum CodingKeys: String, CodingKey {
            case media

            case customJson = "_custom_json"

            case teaserTag = "teaser_tag"

            case variants

            case variantMedia = "variant_media"

            case requester

            case attributes

            case trader

            case name

            case bulkJobId = "bulk_job_id"

            case itemCode = "item_code"

            case productPublish = "product_publish"

            case netQuantity = "net_quantity"

            case uid

            case sizeGuide = "size_guide"

            case description

            case shortDescription = "short_description"

            case multiSize = "multi_size"

            case countryOfOrigin = "country_of_origin"

            case productGroupTag = "product_group_tag"

            case companyId = "company_id"

            case departments

            case customOrder = "custom_order"

            case brandUid = "brand_uid"

            case highlights

            case slug

            case itemType = "item_type"

            case currency

            case isDependent = "is_dependent"

            case taxIdentifier = "tax_identifier"

            case templateTag = "template_tag"

            case isSet = "is_set"

            case isActive = "is_active"

            case noOfBoxes = "no_of_boxes"

            case action

            case sizes

            case variantGroup = "variant_group"

            case tags

            case changeRequestId = "change_request_id"

            case isImageLessProduct = "is_image_less_product"

            case returnConfig = "return_config"

            case categorySlug = "category_slug"
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.media = media

            self.customJson = customJson

            self.teaserTag = teaserTag

            self.variants = variants

            self.variantMedia = variantMedia

            self.requester = requester

            self.attributes = attributes

            self.trader = trader

            self.name = name

            self.bulkJobId = bulkJobId

            self.itemCode = itemCode

            self.productPublish = productPublish

            self.netQuantity = netQuantity

            self.uid = uid

            self.sizeGuide = sizeGuide

            self.description = description

            self.shortDescription = shortDescription

            self.multiSize = multiSize

            self.countryOfOrigin = countryOfOrigin

            self.productGroupTag = productGroupTag

            self.companyId = companyId

            self.departments = departments

            self.customOrder = customOrder

            self.brandUid = brandUid

            self.highlights = highlights

            self.slug = slug

            self.itemType = itemType

            self.currency = currency

            self.isDependent = isDependent

            self.taxIdentifier = taxIdentifier

            self.templateTag = templateTag

            self.isSet = isSet

            self.isActive = isActive

            self.noOfBoxes = noOfBoxes

            self.action = action

            self.sizes = sizes

            self.variantGroup = variantGroup

            self.tags = tags

            self.changeRequestId = changeRequestId

            self.isImageLessProduct = isImageLessProduct

            self.returnConfig = returnConfig

            self.categorySlug = categorySlug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                media = try container.decode([Media1].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requester = try container.decode(String.self, forKey: .requester)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attributes = try container.decode([String: Any].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trader = try container.decode([Trader].self, forKey: .trader)

            name = try container.decode(String.self, forKey: .name)

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemCode = try container.decode(String.self, forKey: .itemCode)

            do {
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            itemType = try container.decode(String.self, forKey: .itemType)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            do {
                variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var media: [Media1]?

        public var customJson: [String: Any]?

        public var teaserTag: TeaserTag?

        public var variants: [String: Any]?

        public var variantMedia: [String: Any]?

        public var requester: String?

        public var attributes: [String: Any]?

        public var trader: [Trader]

        public var name: String

        public var bulkJobId: String?

        public var itemCode: String

        public var productPublish: ProductPublish?

        public var netQuantity: NetQuantity?

        public var uid: Int?

        public var sizeGuide: String?

        public var description: String?

        public var shortDescription: String?

        public var multiSize: Bool?

        public var countryOfOrigin: String

        public var productGroupTag: [String]?

        public var companyId: Int

        public var departments: [Int]

        public var customOrder: CustomOrder?

        public var brandUid: Int

        public var highlights: [String]?

        public var slug: String

        public var itemType: String

        public var currency: String

        public var isDependent: Bool?

        public var taxIdentifier: TaxIdentifier

        public var templateTag: String

        public var isSet: Bool?

        public var isActive: Bool?

        public var noOfBoxes: Int?

        public var action: String?

        public var sizes: [[String: Any]]

        public var variantGroup: [String: Any]?

        public var tags: [String]?

        public var changeRequestId: [String: Any]?

        public var isImageLessProduct: Bool?

        public var returnConfig: ReturnConfig

        public var categorySlug: String

        public enum CodingKeys: String, CodingKey {
            case media

            case customJson = "_custom_json"

            case teaserTag = "teaser_tag"

            case variants

            case variantMedia = "variant_media"

            case requester

            case attributes

            case trader

            case name

            case bulkJobId = "bulk_job_id"

            case itemCode = "item_code"

            case productPublish = "product_publish"

            case netQuantity = "net_quantity"

            case uid

            case sizeGuide = "size_guide"

            case description

            case shortDescription = "short_description"

            case multiSize = "multi_size"

            case countryOfOrigin = "country_of_origin"

            case productGroupTag = "product_group_tag"

            case companyId = "company_id"

            case departments

            case customOrder = "custom_order"

            case brandUid = "brand_uid"

            case highlights

            case slug

            case itemType = "item_type"

            case currency

            case isDependent = "is_dependent"

            case taxIdentifier = "tax_identifier"

            case templateTag = "template_tag"

            case isSet = "is_set"

            case isActive = "is_active"

            case noOfBoxes = "no_of_boxes"

            case action

            case sizes

            case variantGroup = "variant_group"

            case tags

            case changeRequestId = "change_request_id"

            case isImageLessProduct = "is_image_less_product"

            case returnConfig = "return_config"

            case categorySlug = "category_slug"
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.media = media

            self.customJson = customJson

            self.teaserTag = teaserTag

            self.variants = variants

            self.variantMedia = variantMedia

            self.requester = requester

            self.attributes = attributes

            self.trader = trader

            self.name = name

            self.bulkJobId = bulkJobId

            self.itemCode = itemCode

            self.productPublish = productPublish

            self.netQuantity = netQuantity

            self.uid = uid

            self.sizeGuide = sizeGuide

            self.description = description

            self.shortDescription = shortDescription

            self.multiSize = multiSize

            self.countryOfOrigin = countryOfOrigin

            self.productGroupTag = productGroupTag

            self.companyId = companyId

            self.departments = departments

            self.customOrder = customOrder

            self.brandUid = brandUid

            self.highlights = highlights

            self.slug = slug

            self.itemType = itemType

            self.currency = currency

            self.isDependent = isDependent

            self.taxIdentifier = taxIdentifier

            self.templateTag = templateTag

            self.isSet = isSet

            self.isActive = isActive

            self.noOfBoxes = noOfBoxes

            self.action = action

            self.sizes = sizes

            self.variantGroup = variantGroup

            self.tags = tags

            self.changeRequestId = changeRequestId

            self.isImageLessProduct = isImageLessProduct

            self.returnConfig = returnConfig

            self.categorySlug = categorySlug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                media = try container.decode([Media1].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requester = try container.decode(String.self, forKey: .requester)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attributes = try container.decode([String: Any].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trader = try container.decode([Trader].self, forKey: .trader)

            name = try container.decode(String.self, forKey: .name)

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemCode = try container.decode(String.self, forKey: .itemCode)

            do {
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            itemType = try container.decode(String.self, forKey: .itemType)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            do {
                variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)
        }
    }
}
