// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct PrereleaseVersion: Codable, Hashable, Identifiable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks

    public enum `Type`: String, Codable, CaseIterable {
        case preReleaseVersions
    }

    public struct Attributes: Codable, Hashable {
        public var version: String?
        public var platform: Platform?

        public init(version: String? = nil, platform: Platform? = nil) {
            self.version = version
            self.platform = platform
        }
    }

    public struct Relationships: Codable, Hashable {
        public var builds: Builds?
        public var app: App?

        public struct Builds: Codable, Hashable {
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
                    case builds
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

        public struct App: Codable, Hashable {
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
                    case apps
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

        public init(builds: Builds? = nil, app: App? = nil) {
            self.builds = builds
            self.app = app
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
