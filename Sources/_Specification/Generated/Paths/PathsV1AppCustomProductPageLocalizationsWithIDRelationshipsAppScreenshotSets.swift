// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppCustomProductPageLocalizations.WithID.Relationships {
    public var appScreenshotSets: AppScreenshotSets {
        AppScreenshotSets(path: path + "/appScreenshotSets")
    }

    public struct AppScreenshotSets {
        /// Path: `/v1/appCustomProductPageLocalizations/{id}/relationships/appScreenshotSets`
        public let path: String
    }
}
