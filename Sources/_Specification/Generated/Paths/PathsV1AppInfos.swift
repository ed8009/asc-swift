// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var appInfos: AppInfos {
        AppInfos(path: path + "/appInfos")
    }

    public struct AppInfos {
        /// Path: `/v1/appInfos`
        public let path: String
    }
}
