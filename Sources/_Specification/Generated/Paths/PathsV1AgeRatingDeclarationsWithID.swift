// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AgeRatingDeclarations {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/ageRatingDeclarations/{id}`
        public let path: String

        public func patch(_ body: _Specification.AgeRatingDeclarationUpdateRequest) -> Request<_Specification.AgeRatingDeclarationResponse> {
            Request(method: "PATCH", url: path, body: body, id: "ageRatingDeclarations-update_instance")
        }
    }
}
