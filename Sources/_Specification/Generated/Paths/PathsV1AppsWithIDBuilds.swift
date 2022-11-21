// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.Apps.WithID {
    public var builds: Builds {
        Builds(path: path + "/builds")
    }

    public struct Builds {
        /// Path: `/v1/apps/{id}/builds`
        public let path: String

        public func get(fieldsBuilds: [FieldsBuilds]? = nil, limit: Int? = nil) -> Request<_Specification.BuildsResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(fieldsBuilds, limit), id: "apps-builds-get_to_many_related")
        }

        private func makeGetQuery(_ fieldsBuilds: [FieldsBuilds]?, _ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsBuilds, forKey: "fields[builds]", explode: false)
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }

        public enum FieldsBuilds: String, Codable, CaseIterable {
            case app
            case appEncryptionDeclaration
            case appStoreVersion
            case betaAppReviewSubmission
            case betaBuildLocalizations
            case betaGroups
            case buildAudienceType
            case buildBetaDetail
            case buildBundles
            case computedMinMacOsVersion
            case diagnosticSignatures
            case expirationDate
            case expired
            case iconAssetToken
            case icons
            case individualTesters
            case lsMinimumSystemVersion
            case minOsVersion
            case perfPowerMetrics
            case preReleaseVersion
            case processingState
            case uploadedDate
            case usesNonExemptEncryption
            case version
        }
    }
}
