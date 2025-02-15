// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var appClipAppStoreReviewDetails: AppClipAppStoreReviewDetails {
        AppClipAppStoreReviewDetails(path: path + "/appClipAppStoreReviewDetails")
    }

    public struct AppClipAppStoreReviewDetails {
        /// Path: `/v1/appClipAppStoreReviewDetails`
        public let path: String

        public func post(_ body: _Specification.AppClipAppStoreReviewDetailCreateRequest) -> Request<_Specification.AppClipAppStoreReviewDetailResponse> {
            Request(path: path, method: "POST", body: body, id: "appClipAppStoreReviewDetails-create_instance")
        }
    }
}
