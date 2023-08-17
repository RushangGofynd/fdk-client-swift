

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductDetailCustomOrder
        Used By: Catalog
    */
    class ProductDetailCustomOrder: Codable {
        
        public var manufacturingTime: Int?
        
        public var manufacturingTimeUnit: String?
        
        public var isCustomOrder: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case manufacturingTime = "manufacturing_time"
            
            case manufacturingTimeUnit = "manufacturing_time_unit"
            
            case isCustomOrder = "is_custom_order"
            
        }

        public init(isCustomOrder: Bool? = nil, manufacturingTime: Int? = nil, manufacturingTimeUnit: String? = nil) {
            
            self.manufacturingTime = manufacturingTime
            
            self.manufacturingTimeUnit = manufacturingTimeUnit
            
            self.isCustomOrder = isCustomOrder
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                manufacturingTime = try container.decode(Int.self, forKey: .manufacturingTime)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                manufacturingTimeUnit = try container.decode(String.self, forKey: .manufacturingTimeUnit)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isCustomOrder = try container.decode(Bool.self, forKey: .isCustomOrder)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(manufacturingTime, forKey: .manufacturingTime)
            
            
            
            
            try? container.encodeIfPresent(manufacturingTimeUnit, forKey: .manufacturingTimeUnit)
            
            
            
            
            try? container.encodeIfPresent(isCustomOrder, forKey: .isCustomOrder)
            
            
        }
        
    }
}
