// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppClipDefaultExperienceCreateRequest: Codable, Hashable {
    public var data: Data

    public struct Data: Codable, Hashable {
        public var type: `Type`
        public var attributes: Attributes?
        public var relationships: Relationships

        public enum `Type`: String, Codable, CaseIterable {
            case appClipDefaultExperiences
        }

        public struct Attributes: Codable, Hashable {
            public var action: AppClipAction?

            public init(action: AppClipAction? = nil) {
                self.action = action
            }
        }

        public struct Relationships: Codable, Hashable {
            public var appClip: AppClip
            public var releaseWithAppStoreVersion: ReleaseWithAppStoreVersion?
            public var appClipDefaultExperienceTemplate: AppClipDefaultExperienceTemplate?

            public struct AppClip: Codable, Hashable {
                public var data: Data

                public struct Data: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case appClips
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

            public struct ReleaseWithAppStoreVersion: Codable, Hashable {
                public var data: Data?

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

                public init(data: Data? = nil) {
                    self.data = data
                }
            }

            public struct AppClipDefaultExperienceTemplate: Codable, Hashable {
                public var data: Data?

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

                public init(data: Data? = nil) {
                    self.data = data
                }
            }

            public init(appClip: AppClip, releaseWithAppStoreVersion: ReleaseWithAppStoreVersion? = nil, appClipDefaultExperienceTemplate: AppClipDefaultExperienceTemplate? = nil) {
                self.appClip = appClip
                self.releaseWithAppStoreVersion = releaseWithAppStoreVersion
                self.appClipDefaultExperienceTemplate = appClipDefaultExperienceTemplate
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
