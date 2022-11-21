// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var ciTestResults: CiTestResults {
        CiTestResults(path: path + "/ciTestResults")
    }

    public struct CiTestResults {
        /// Path: `/v1/ciTestResults`
        public let path: String
    }
}
