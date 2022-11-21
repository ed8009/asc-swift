// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.InAppPurchaseAppStoreReviewScreenshots {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/inAppPurchaseAppStoreReviewScreenshots/{id}`
        public let path: String

        public func get(fieldsInAppPurchaseAppStoreReviewScreenshots: [FieldsInAppPurchaseAppStoreReviewScreenshots]? = nil, include: [Include]? = nil) -> Request<_Specification.InAppPurchaseAppStoreReviewScreenshotResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(fieldsInAppPurchaseAppStoreReviewScreenshots, include), id: "inAppPurchaseAppStoreReviewScreenshots-get_instance")
        }

        private func makeGetQuery(_ fieldsInAppPurchaseAppStoreReviewScreenshots: [FieldsInAppPurchaseAppStoreReviewScreenshots]?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsInAppPurchaseAppStoreReviewScreenshots, forKey: "fields[inAppPurchaseAppStoreReviewScreenshots]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsInAppPurchaseAppStoreReviewScreenshots: String, Codable, CaseIterable {
            case assetDeliveryState
            case assetToken
            case assetType
            case fileName
            case fileSize
            case imageAsset
            case inAppPurchaseV2
            case sourceFileChecksum
            case uploadOperations
            case uploaded
        }

        public enum Include: String, Codable, CaseIterable {
            case inAppPurchaseV2
        }

        public func patch(_ body: _Specification.InAppPurchaseAppStoreReviewScreenshotUpdateRequest) -> Request<_Specification.InAppPurchaseAppStoreReviewScreenshotResponse> {
            Request(method: "PATCH", url: path, body: body, id: "inAppPurchaseAppStoreReviewScreenshots-update_instance")
        }

        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "inAppPurchaseAppStoreReviewScreenshots-delete_instance")
        }
    }
}
