// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppStoreVersions.WithID.Relationships {
    public var routingAppCoverage: RoutingAppCoverage {
        RoutingAppCoverage(path: path + "/routingAppCoverage")
    }

    public struct RoutingAppCoverage {
        /// Path: `/v1/appStoreVersions/{id}/relationships/routingAppCoverage`
        public let path: String
    }
}
