

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ReturnConfigResponse
        Used By: Catalog
    */

    class ReturnConfigResponse: Codable {
        
        
        public var returnable: Bool?
        
        public var unit: String?
        
        public var time: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case returnable = "returnable"
            
            case unit = "unit"
            
            case time = "time"
            
        }

        public init(returnable: Bool? = nil, time: Int? = nil, unit: String? = nil) {
            
            self.returnable = returnable
            
            self.unit = unit
            
            self.time = time
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    returnable = try container.decode(Bool.self, forKey: .returnable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    unit = try container.decode(String.self, forKey: .unit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    time = try container.decode(Int.self, forKey: .time)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(returnable, forKey: .returnable)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
            
            
            try? container.encodeIfPresent(time, forKey: .time)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ReturnConfigResponse
        Used By: Catalog
    */

    class ReturnConfigResponse: Codable {
        
        
        public var returnable: Bool?
        
        public var unit: String?
        
        public var time: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case returnable = "returnable"
            
            case unit = "unit"
            
            case time = "time"
            
        }

        public init(returnable: Bool? = nil, time: Int? = nil, unit: String? = nil) {
            
            self.returnable = returnable
            
            self.unit = unit
            
            self.time = time
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    returnable = try container.decode(Bool.self, forKey: .returnable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    unit = try container.decode(String.self, forKey: .unit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    time = try container.decode(Int.self, forKey: .time)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(returnable, forKey: .returnable)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
            
            
            try? container.encodeIfPresent(time, forKey: .time)
            
            
        }
        
    }
}


