// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.Apps.WithID.Relationships {
    public var betaGroups: BetaGroups {
        BetaGroups(path: path + "/betaGroups")
    }

    public struct BetaGroups {
        /// Path: `/v1/apps/{id}/relationships/betaGroups`
        public let path: String
    }
}
