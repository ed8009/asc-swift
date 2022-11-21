// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct BetaGroupUpdateRequest: Codable, Hashable {
    public var data: Data

    public struct Data: Codable, Hashable, Identifiable {
        public var type: `Type`
        public var id: String
        public var attributes: Attributes?

        public enum `Type`: String, Codable, CaseIterable {
            case betaGroups
        }

        public struct Attributes: Codable, Hashable {
            public var name: String?
            public var isPublicLinkEnabled: Bool?
            public var isPublicLinkLimitEnabled: Bool?
            public var publicLinkLimit: Int?
            public var isFeedbackEnabled: Bool?
            public var isIosBuildsAvailableForAppleSiliconMac: Bool?

            public init(name: String? = nil, isPublicLinkEnabled: Bool? = nil, isPublicLinkLimitEnabled: Bool? = nil, publicLinkLimit: Int? = nil, isFeedbackEnabled: Bool? = nil, isIosBuildsAvailableForAppleSiliconMac: Bool? = nil) {
                self.name = name
                self.isPublicLinkEnabled = isPublicLinkEnabled
                self.isPublicLinkLimitEnabled = isPublicLinkLimitEnabled
                self.publicLinkLimit = publicLinkLimit
                self.isFeedbackEnabled = isFeedbackEnabled
                self.isIosBuildsAvailableForAppleSiliconMac = isIosBuildsAvailableForAppleSiliconMac
            }

            private enum CodingKeys: String, CodingKey {
                case name
                case isPublicLinkEnabled = "publicLinkEnabled"
                case isPublicLinkLimitEnabled = "publicLinkLimitEnabled"
                case publicLinkLimit
                case isFeedbackEnabled = "feedbackEnabled"
                case isIosBuildsAvailableForAppleSiliconMac = "iosBuildsAvailableForAppleSiliconMac"
            }
        }

        public init(type: `Type`, id: String, attributes: Attributes? = nil) {
            self.type = type
            self.id = id
            self.attributes = attributes
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
