// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct UserInvitation: Codable, Hashable, Identifiable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks

    public enum `Type`: String, Codable, CaseIterable {
        case userInvitations
    }

    public struct Attributes: Codable, Hashable {
        public var email: String?
        public var firstName: String?
        public var lastName: String?
        public var expirationDate: Date?
        public var roles: [UserRole]?
        public var isAllAppsVisible: Bool?
        public var isProvisioningAllowed: Bool?

        public init(email: String? = nil, firstName: String? = nil, lastName: String? = nil, expirationDate: Date? = nil, roles: [UserRole]? = nil, isAllAppsVisible: Bool? = nil, isProvisioningAllowed: Bool? = nil) {
            self.email = email
            self.firstName = firstName
            self.lastName = lastName
            self.expirationDate = expirationDate
            self.roles = roles
            self.isAllAppsVisible = isAllAppsVisible
            self.isProvisioningAllowed = isProvisioningAllowed
        }

        private enum CodingKeys: String, CodingKey {
            case email
            case firstName
            case lastName
            case expirationDate
            case roles
            case isAllAppsVisible = "allAppsVisible"
            case isProvisioningAllowed = "provisioningAllowed"
        }
    }

    public struct Relationships: Codable, Hashable {
        public var visibleApps: VisibleApps?

        public struct VisibleApps: Codable, Hashable {
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
                    case apps
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

        public init(visibleApps: VisibleApps? = nil) {
            self.visibleApps = visibleApps
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
