// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.Subscriptions.WithID.Relationships {
    public var appStoreReviewScreenshot: AppStoreReviewScreenshot {
        AppStoreReviewScreenshot(path: path + "/appStoreReviewScreenshot")
    }

    public struct AppStoreReviewScreenshot {
        /// Path: `/v1/subscriptions/{id}/relationships/appStoreReviewScreenshot`
        public let path: String
    }
}
