// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct BuildUpdateRequest: Codable, Hashable {
    public var data: Data

    public struct Data: Codable, Hashable, Identifiable {
        public var type: `Type`
        public var id: String
        public var attributes: Attributes?
        public var relationships: Relationships?

        public enum `Type`: String, Codable, CaseIterable {
            case builds
        }

        public struct Attributes: Codable, Hashable {
            public var isExpired: Bool?
            public var usesNonExemptEncryption: Bool?

            public init(isExpired: Bool? = nil, usesNonExemptEncryption: Bool? = nil) {
                self.isExpired = isExpired
                self.usesNonExemptEncryption = usesNonExemptEncryption
            }

            private enum CodingKeys: String, CodingKey {
                case isExpired = "expired"
                case usesNonExemptEncryption
            }
        }

        public struct Relationships: Codable, Hashable {
            public var appEncryptionDeclaration: AppEncryptionDeclaration?

            public struct AppEncryptionDeclaration: Codable, Hashable {
                public var data: Data?

                public struct Data: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case appEncryptionDeclarations
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

            public init(appEncryptionDeclaration: AppEncryptionDeclaration? = nil) {
                self.appEncryptionDeclaration = appEncryptionDeclaration
            }
        }

        public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil) {
            self.type = type
            self.id = id
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
