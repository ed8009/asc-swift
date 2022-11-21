// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct BetaTesterBetaGroupsLinkagesRequest: Codable, Hashable {
    public var data: [Datum]

    public struct Datum: Codable, Hashable, Identifiable {
        public var type: `Type`
        public var id: String

        public enum `Type`: String, Codable, CaseIterable {
            case betaGroups
        }

        public init(type: `Type`, id: String) {
            self.type = type
            self.id = id
        }
    }

    public init(data: [Datum]) {
        self.data = data
    }
}
