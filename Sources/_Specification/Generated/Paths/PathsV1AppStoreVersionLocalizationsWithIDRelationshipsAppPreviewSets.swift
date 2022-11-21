// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppStoreVersionLocalizations.WithID.Relationships {
    public var appPreviewSets: AppPreviewSets {
        AppPreviewSets(path: path + "/appPreviewSets")
    }

    public struct AppPreviewSets {
        /// Path: `/v1/appStoreVersionLocalizations/{id}/relationships/appPreviewSets`
        public let path: String
    }
}
