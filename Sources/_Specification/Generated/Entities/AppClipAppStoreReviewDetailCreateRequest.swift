// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppClipAppStoreReviewDetailCreateRequest: Codable, Hashable {
    public var data: Data

    public struct Data: Codable, Hashable {
        public var type: `Type`
        public var attributes: Attributes?
        public var relationships: Relationships

        public enum `Type`: String, Codable, CaseIterable {
            case appClipAppStoreReviewDetails
        }

        public struct Attributes: Codable, Hashable {
            public var invocationURLs: [URL]?

            public init(invocationURLs: [URL]? = nil) {
                self.invocationURLs = invocationURLs
            }

            private enum CodingKeys: String, CodingKey {
                case invocationURLs = "invocationUrls"
            }
        }

        public struct Relationships: Codable, Hashable {
            public var appClipDefaultExperience: AppClipDefaultExperience

            public struct AppClipDefaultExperience: Codable, Hashable {
                public var data: Data

                public struct Data: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case appClipDefaultExperiences
                    }

                    public init(type: `Type`, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data) {
                    self.data = data
                }
            }

            public init(appClipDefaultExperience: AppClipDefaultExperience) {
                self.appClipDefaultExperience = appClipDefaultExperience
            }
        }

        public init(type: `Type`, attributes: Attributes? = nil, relationships: Relationships) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
