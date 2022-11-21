// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.BetaAppReviewSubmissions {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/betaAppReviewSubmissions/{id}`
        public let path: String

        public func get(fieldsBetaAppReviewSubmissions: [FieldsBetaAppReviewSubmissions]? = nil, include: [Include]? = nil, fieldsBuilds: [FieldsBuilds]? = nil) -> Request<_Specification.BetaAppReviewSubmissionResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(fieldsBetaAppReviewSubmissions, include, fieldsBuilds), id: "betaAppReviewSubmissions-get_instance")
        }

        private func makeGetQuery(_ fieldsBetaAppReviewSubmissions: [FieldsBetaAppReviewSubmissions]?, _ include: [Include]?, _ fieldsBuilds: [FieldsBuilds]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsBetaAppReviewSubmissions, forKey: "fields[betaAppReviewSubmissions]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsBuilds, forKey: "fields[builds]")
            return encoder.items
        }

        public enum FieldsBetaAppReviewSubmissions: String, Codable, CaseIterable {
            case betaReviewState
            case build
            case submittedDate
        }

        public enum Include: String, Codable, CaseIterable {
            case build
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
