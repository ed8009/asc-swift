// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.CiBuildRuns {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/ciBuildRuns/{id}`
        public let path: String

        public func get(fieldsCiBuildRuns: [FieldsCiBuildRuns]? = nil, include: [Include]? = nil, fieldsCiBuildActions: [FieldsCiBuildActions]? = nil, fieldsBuilds: [FieldsBuilds]? = nil, limitBuilds: Int? = nil) -> Request<_Specification.CiBuildRunResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsCiBuildRuns, include, fieldsCiBuildActions, fieldsBuilds, limitBuilds), id: "ciBuildRuns-get_instance")
        }

        private func makeGetQuery(_ fieldsCiBuildRuns: [FieldsCiBuildRuns]?, _ include: [Include]?, _ fieldsCiBuildActions: [FieldsCiBuildActions]?, _ fieldsBuilds: [FieldsBuilds]?, _ limitBuilds: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsCiBuildRuns, forKey: "fields[ciBuildRuns]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsCiBuildActions, forKey: "fields[ciBuildActions]")
            encoder.encode(fieldsBuilds, forKey: "fields[builds]")
            encoder.encode(limitBuilds, forKey: "limit[builds]")
            return encoder.items
        }

        public enum FieldsCiBuildRuns: String, Codable, CaseIterable {
            case actions
            case buildRun
            case builds
            case cancelReason
            case clean
            case completionStatus
            case createdDate
            case destinationBranch
            case destinationCommit
            case executionProgress
            case finishedDate
            case isPullRequestBuild
            case issueCounts
            case number
            case product
            case pullRequest
            case sourceBranchOrTag
            case sourceCommit
            case startReason
            case startedDate
            case workflow
        }

        public enum Include: String, Codable, CaseIterable {
            case builds
            case destinationBranch
            case product
            case pullRequest
            case sourceBranchOrTag
            case workflow
        }

        public enum FieldsCiBuildActions: String, Codable, CaseIterable {
            case actionType
            case artifacts
            case buildRun
            case completionStatus
            case executionProgress
            case finishedDate
            case isRequiredToPass
            case issueCounts
            case issues
            case name
            case startedDate
            case testResults
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
