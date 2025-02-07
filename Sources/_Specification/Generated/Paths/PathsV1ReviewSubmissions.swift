// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var reviewSubmissions: ReviewSubmissions {
        ReviewSubmissions(path: path + "/reviewSubmissions")
    }

    public struct ReviewSubmissions {
        /// Path: `/v1/reviewSubmissions`
        public let path: String

        public func get(filterPlatform: [FilterPlatform]? = nil, filterState: [FilterState]? = nil, filterApp: [String], fieldsReviewSubmissions: [FieldsReviewSubmissions]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsReviewSubmissionItems: [FieldsReviewSubmissionItems]? = nil, limitItems: Int? = nil) -> Request<_Specification.ReviewSubmissionsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterPlatform, filterState, filterApp, fieldsReviewSubmissions, limit, include, fieldsReviewSubmissionItems, limitItems), id: "reviewSubmissions-get_collection")
        }

        private func makeGetQuery(_ filterPlatform: [FilterPlatform]?, _ filterState: [FilterState]?, _ filterApp: [String], _ fieldsReviewSubmissions: [FieldsReviewSubmissions]?, _ limit: Int?, _ include: [Include]?, _ fieldsReviewSubmissionItems: [FieldsReviewSubmissionItems]?, _ limitItems: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterPlatform, forKey: "filter[platform]")
            encoder.encode(filterState, forKey: "filter[state]")
            encoder.encode(filterApp, forKey: "filter[app]")
            encoder.encode(fieldsReviewSubmissions, forKey: "fields[reviewSubmissions]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsReviewSubmissionItems, forKey: "fields[reviewSubmissionItems]")
            encoder.encode(limitItems, forKey: "limit[items]")
            return encoder.items
        }

        public enum FilterPlatform: String, Codable, CaseIterable {
            case ios = "IOS"
            case macOs = "MAC_OS"
            case tvOs = "TV_OS"
        }

        public enum FilterState: String, Codable, CaseIterable {
            case readyForReview = "READY_FOR_REVIEW"
            case waitingForReview = "WAITING_FOR_REVIEW"
            case inReview = "IN_REVIEW"
            case unresolvedIssues = "UNRESOLVED_ISSUES"
            case canceling = "CANCELING"
            case completing = "COMPLETING"
            case complete = "COMPLETE"
        }

        public enum FieldsReviewSubmissions: String, Codable, CaseIterable {
            case app
            case appStoreVersionForReview
            case canceled
            case items
            case lastUpdatedByActor
            case platform
            case state
            case submitted
            case submittedByActor
            case submittedDate
        }

        public enum Include: String, Codable, CaseIterable {
            case app
            case appStoreVersionForReview
            case items
            case lastUpdatedByActor
            case submittedByActor
        }

        public enum FieldsReviewSubmissionItems: String, Codable, CaseIterable {
            case appCustomProductPageVersion
            case appEvent
            case appStoreVersion
            case appStoreVersionExperiment
            case appStoreVersionExperimentV2
            case removed
            case resolved
            case reviewSubmission
            case state
        }

        public func post(_ body: _Specification.ReviewSubmissionCreateRequest) -> Request<_Specification.ReviewSubmissionResponse> {
            Request(path: path, method: "POST", body: body, id: "reviewSubmissions-create_instance")
        }
    }
}
