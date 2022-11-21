// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct CiWorkflowCreateRequest: Codable, Hashable {
    public var data: Data

    public struct Data: Codable, Hashable {
        public var type: `Type`
        public var attributes: Attributes
        public var relationships: Relationships

        public enum `Type`: String, Codable, CaseIterable {
            case ciWorkflows
        }

        public struct Attributes: Codable, Hashable {
            public var name: String
            public var description: String
            public var branchStartCondition: CiBranchStartCondition?
            public var tagStartCondition: CiTagStartCondition?
            public var pullRequestStartCondition: CiPullRequestStartCondition?
            public var scheduledStartCondition: CiScheduledStartCondition?
            public var actions: [CiAction]
            public var isEnabled: Bool
            public var isLockedForEditing: Bool?
            public var isClean: Bool
            public var containerFilePath: String

            public init(name: String, description: String, branchStartCondition: CiBranchStartCondition? = nil, tagStartCondition: CiTagStartCondition? = nil, pullRequestStartCondition: CiPullRequestStartCondition? = nil, scheduledStartCondition: CiScheduledStartCondition? = nil, actions: [CiAction], isEnabled: Bool, isLockedForEditing: Bool? = nil, isClean: Bool, containerFilePath: String) {
                self.name = name
                self.description = description
                self.branchStartCondition = branchStartCondition
                self.tagStartCondition = tagStartCondition
                self.pullRequestStartCondition = pullRequestStartCondition
                self.scheduledStartCondition = scheduledStartCondition
                self.actions = actions
                self.isEnabled = isEnabled
                self.isLockedForEditing = isLockedForEditing
                self.isClean = isClean
                self.containerFilePath = containerFilePath
            }

            private enum CodingKeys: String, CodingKey {
                case name
                case description
                case branchStartCondition
                case tagStartCondition
                case pullRequestStartCondition
                case scheduledStartCondition
                case actions
                case isEnabled
                case isLockedForEditing
                case isClean = "clean"
                case containerFilePath
            }
        }

        public struct Relationships: Codable, Hashable {
            public var product: Product
            public var repository: Repository
            public var xcodeVersion: XcodeVersion
            public var macOsVersion: MacOsVersion

            public struct Product: Codable, Hashable {
                public var data: Data

                public struct Data: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case ciProducts
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

            public struct Repository: Codable, Hashable {
                public var data: Data

                public struct Data: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case scmRepositories
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

            public struct XcodeVersion: Codable, Hashable {
                public var data: Data

                public struct Data: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case ciXcodeVersions
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

            public struct MacOsVersion: Codable, Hashable {
                public var data: Data

                public struct Data: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case ciMacOsVersions
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

            public init(product: Product, repository: Repository, xcodeVersion: XcodeVersion, macOsVersion: MacOsVersion) {
                self.product = product
                self.repository = repository
                self.xcodeVersion = xcodeVersion
                self.macOsVersion = macOsVersion
            }
        }

        public init(type: `Type`, attributes: Attributes, relationships: Relationships) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
