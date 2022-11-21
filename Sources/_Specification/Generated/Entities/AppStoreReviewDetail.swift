// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppStoreReviewDetail: Codable, Hashable, Identifiable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks

    public enum `Type`: String, Codable, CaseIterable {
        case appStoreReviewDetails
    }

    public struct Attributes: Codable, Hashable {
        public var contactFirstName: String?
        public var contactLastName: String?
        public var contactPhone: String?
        public var contactEmail: String?
        public var demoAccountName: String?
        public var demoAccountPassword: String?
        public var isDemoAccountRequired: Bool?
        public var notes: String?

        public init(contactFirstName: String? = nil, contactLastName: String? = nil, contactPhone: String? = nil, contactEmail: String? = nil, demoAccountName: String? = nil, demoAccountPassword: String? = nil, isDemoAccountRequired: Bool? = nil, notes: String? = nil) {
            self.contactFirstName = contactFirstName
            self.contactLastName = contactLastName
            self.contactPhone = contactPhone
            self.contactEmail = contactEmail
            self.demoAccountName = demoAccountName
            self.demoAccountPassword = demoAccountPassword
            self.isDemoAccountRequired = isDemoAccountRequired
            self.notes = notes
        }

        private enum CodingKeys: String, CodingKey {
            case contactFirstName
            case contactLastName
            case contactPhone
            case contactEmail
            case demoAccountName
            case demoAccountPassword
            case isDemoAccountRequired = "demoAccountRequired"
            case notes
        }
    }

    public struct Relationships: Codable, Hashable {
        public var appStoreVersion: AppStoreVersion?
        public var appStoreReviewAttachments: AppStoreReviewAttachments?

        public struct AppStoreVersion: Codable, Hashable {
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
                    case appStoreVersions
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

        public struct AppStoreReviewAttachments: Codable, Hashable {
            public var links: Links?
            public var meta: PagingInformation?
            public var data: [Datum]?

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

            public struct Datum: Codable, Hashable, Identifiable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, Codable, CaseIterable {
                    case appStoreReviewAttachments
                }

                public init(type: `Type`, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
                self.links = links
                self.meta = meta
                self.data = data
            }
        }

        public init(appStoreVersion: AppStoreVersion? = nil, appStoreReviewAttachments: AppStoreReviewAttachments? = nil) {
            self.appStoreVersion = appStoreVersion
            self.appStoreReviewAttachments = appStoreReviewAttachments
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
