// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var reviewSubmissionItems: ReviewSubmissionItems {
        ReviewSubmissionItems(path: path + "/reviewSubmissionItems")
    }

    public struct ReviewSubmissionItems {
        /// Path: `/v1/reviewSubmissionItems`
        public let path: String

        public func post(_ body: _Specification.ReviewSubmissionItemCreateRequest) -> Request<_Specification.ReviewSubmissionItemResponse> {
            Request(method: "POST", url: path, body: body, id: "reviewSubmissionItems-create_instance")
        }
    }
}
