// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var appScreenshotSets: AppScreenshotSets {
        AppScreenshotSets(path: path + "/appScreenshotSets")
    }

    public struct AppScreenshotSets {
        /// Path: `/v1/appScreenshotSets`
        public let path: String

        public func post(_ body: _Specification.AppScreenshotSetCreateRequest) -> Request<_Specification.AppScreenshotSetResponse> {
            Request(method: "POST", url: path, body: body, id: "appScreenshotSets-create_instance")
        }
    }
}
