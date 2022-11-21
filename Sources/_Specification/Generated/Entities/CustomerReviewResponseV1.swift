// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct CustomerReviewResponseV1: Codable, Hashable, Identifiable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks

    public enum `Type`: String, Codable, CaseIterable {
        case customerReviewResponses
    }

    public struct Attributes: Codable, Hashable {
        public var responseBody: String?
        public var lastModifiedDate: Date?
        public var state: State?

        public enum State: String, Codable, CaseIterable {
            case published = "PUBLISHED"
            case pendingPublish = "PENDING_PUBLISH"
        }

        public init(responseBody: String? = nil, lastModifiedDate: Date? = nil, state: State? = nil) {
            self.responseBody = responseBody
            self.lastModifiedDate = lastModifiedDate
            self.state = state
        }
    }

    public struct Relationships: Codable, Hashable {
        public var review: Review?

        public struct Review: Codable, Hashable {
            public var links: Links?
            public var data: Data?

            public struct Links: Codable, Hashable {
                public var this: URL?
                public var related: URL?

                public init(this: URL? = nil, related: URL? = nil) {
                    self.this = this
                    self.related = related
                }

                private enum CodingKeys: String, CodingKey {
                    case this = "self"
                    case related
                }
            }

            public struct Data: Codable, Hashable, Identifiable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, Codable, CaseIterable {
                    case customerReviews
                }

                public init(type: `Type`, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public init(review: Review? = nil) {
            self.review = review
        }
    }

    public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
