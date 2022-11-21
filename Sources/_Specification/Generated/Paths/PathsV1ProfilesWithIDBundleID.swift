// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.Profiles.WithID {
    public var bundleID: BundleID {
        BundleID(path: path + "/bundleId")
    }

    public struct BundleID {
        /// Path: `/v1/profiles/{id}/bundleId`
        public let path: String

        public func get(fieldsBundleIDs: [FieldsBundleIDs]? = nil) -> Request<_Specification.BundleIDResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(fieldsBundleIDs), id: "profiles-bundleId-get_to_one_related")
        }

        private func makeGetQuery(_ fieldsBundleIDs: [FieldsBundleIDs]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsBundleIDs, forKey: "fields[bundleIds]", explode: false)
            return encoder.items
        }

        public enum FieldsBundleIDs: String, Codable, CaseIterable {
            case app
            case bundleIDCapabilities = "bundleIdCapabilities"
            case identifier
            case name
            case platform
            case profiles
            case seedID = "seedId"
        }
    }
}
