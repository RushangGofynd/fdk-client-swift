

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: AssignStoreArticle
        Used By: Catalog
    */

    class AssignStoreArticle: Codable {
        
        
        public var query: ArticleQuery?
        
        public var groupId: String?
        
        public var articleAssignment: ArticleAssignment?
        
        public var quantity: Int?
        
        public var meta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case query = "query"
            
            case groupId = "group_id"
            
            case articleAssignment = "article_assignment"
            
            case quantity = "quantity"
            
            case meta = "meta"
            
        }

        public init(articleAssignment: ArticleAssignment? = nil, groupId: String? = nil, meta: [String: Any]? = nil, quantity: Int? = nil, query: ArticleQuery? = nil) {
            
            self.query = query
            
            self.groupId = groupId
            
            self.articleAssignment = articleAssignment
            
            self.quantity = quantity
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    query = try container.decode(ArticleQuery.self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    groupId = try container.decode(String.self, forKey: .groupId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    articleAssignment = try container.decode(ArticleAssignment.self, forKey: .articleAssignment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
            
            
            try? container.encodeIfPresent(groupId, forKey: .groupId)
            
            
            
            
            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: AssignStoreArticle
        Used By: Catalog
    */

    class AssignStoreArticle: Codable {
        
        
        public var query: ArticleQuery?
        
        public var groupId: String?
        
        public var articleAssignment: ArticleAssignment?
        
        public var quantity: Int?
        
        public var meta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case query = "query"
            
            case groupId = "group_id"
            
            case articleAssignment = "article_assignment"
            
            case quantity = "quantity"
            
            case meta = "meta"
            
        }

        public init(articleAssignment: ArticleAssignment? = nil, groupId: String? = nil, meta: [String: Any]? = nil, quantity: Int? = nil, query: ArticleQuery? = nil) {
            
            self.query = query
            
            self.groupId = groupId
            
            self.articleAssignment = articleAssignment
            
            self.quantity = quantity
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    query = try container.decode(ArticleQuery.self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    groupId = try container.decode(String.self, forKey: .groupId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    articleAssignment = try container.decode(ArticleAssignment.self, forKey: .articleAssignment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
            
            
            try? container.encodeIfPresent(groupId, forKey: .groupId)
            
            
            
            
            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}


