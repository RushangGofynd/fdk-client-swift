

import Foundation
public extension PublicClient.Webhook {
    /*
        Model: TransformEventRequest
        Used By: Webhook
    */

    class TransformEventRequest: Codable {
        
        
        public var eventName: String?
        
        public var eventType: String?
        
        public var eventCategory: String?
        
        public var eventVersion: String?
        
        public var event: EventSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case eventName = "event_name"
            
            case eventType = "event_type"
            
            case eventCategory = "event_category"
            
            case eventVersion = "event_version"
            
            case event = "event"
            
        }

        public init(event: EventSchema? = nil, eventCategory: String? = nil, eventName: String? = nil, eventType: String? = nil, eventVersion: String? = nil) {
            
            self.eventName = eventName
            
            self.eventType = eventType
            
            self.eventCategory = eventCategory
            
            self.eventVersion = eventVersion
            
            self.event = event
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    eventName = try container.decode(String.self, forKey: .eventName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    eventType = try container.decode(String.self, forKey: .eventType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    eventCategory = try container.decode(String.self, forKey: .eventCategory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    eventVersion = try container.decode(String.self, forKey: .eventVersion)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    event = try container.decode(EventSchema.self, forKey: .event)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(eventName, forKey: .eventName)
            
            
            
            try? container.encodeIfPresent(eventType, forKey: .eventType)
            
            
            
            try? container.encodeIfPresent(eventCategory, forKey: .eventCategory)
            
            
            
            try? container.encodeIfPresent(eventVersion, forKey: .eventVersion)
            
            
            
            try? container.encodeIfPresent(event, forKey: .event)
            
            
        }
        
    }
}
