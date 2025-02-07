// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppStoreReviewDetails.WithID {
    public var appStoreReviewAttachments: AppStoreReviewAttachments {
        AppStoreReviewAttachments(path: path + "/appStoreReviewAttachments")
    }

    public struct AppStoreReviewAttachments {
        /// Path: `/v1/appStoreReviewDetails/{id}/appStoreReviewAttachments`
        public let path: String

        public func get(fieldsAppStoreReviewDetails: [FieldsAppStoreReviewDetails]? = nil, fieldsAppStoreReviewAttachments: [FieldsAppStoreReviewAttachments]? = nil, limit: Int? = nil, include: [Include]? = nil) -> Request<_Specification.AppStoreReviewAttachmentsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsAppStoreReviewDetails, fieldsAppStoreReviewAttachments, limit, include), id: "appStoreReviewDetails-appStoreReviewAttachments-get_to_many_related")
        }

        private func makeGetQuery(_ fieldsAppStoreReviewDetails: [FieldsAppStoreReviewDetails]?, _ fieldsAppStoreReviewAttachments: [FieldsAppStoreReviewAttachments]?, _ limit: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsAppStoreReviewDetails, forKey: "fields[appStoreReviewDetails]")
            encoder.encode(fieldsAppStoreReviewAttachments, forKey: "fields[appStoreReviewAttachments]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsAppStoreReviewDetails: String, Codable, CaseIterable {
            case appStoreReviewAttachments
            case appStoreVersion
            case contactEmail
            case contactFirstName
            case contactLastName
            case contactPhone
            case demoAccountName
            case demoAccountPassword
            case demoAccountRequired
            case notes
        }

        public enum FieldsAppStoreReviewAttachments: String, Codable, CaseIterable {
            case appStoreReviewDetail
            case assetDeliveryState
            case fileName
            case fileSize
            case sourceFileChecksum
            case uploadOperations
            case uploaded
        }

        public enum Include: String, Codable, CaseIterable {
            case appStoreReviewDetail
        }
    }
}
