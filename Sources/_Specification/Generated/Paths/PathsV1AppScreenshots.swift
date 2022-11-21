// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var appScreenshots: AppScreenshots {
        AppScreenshots(path: path + "/appScreenshots")
    }

    public struct AppScreenshots {
        /// Path: `/v1/appScreenshots`
        public let path: String

        public func post(_ body: _Specification.AppScreenshotCreateRequest) -> Request<_Specification.AppScreenshotResponse> {
            Request(method: "POST", url: path, body: body, id: "appScreenshots-create_instance")
        }
    }
}
