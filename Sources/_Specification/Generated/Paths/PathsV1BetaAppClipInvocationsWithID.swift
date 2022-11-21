// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.BetaAppClipInvocations {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/betaAppClipInvocations/{id}`
        public let path: String

        public func get(fieldsBetaAppClipInvocations: [FieldsBetaAppClipInvocations]? = nil, include: [Include]? = nil, limitBetaAppClipInvocationLocalizations: Int? = nil) -> Request<_Specification.BetaAppClipInvocationResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(fieldsBetaAppClipInvocations, include, limitBetaAppClipInvocationLocalizations), id: "betaAppClipInvocations-get_instance")
        }

        private func makeGetQuery(_ fieldsBetaAppClipInvocations: [FieldsBetaAppClipInvocations]?, _ include: [Include]?, _ limitBetaAppClipInvocationLocalizations: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsBetaAppClipInvocations, forKey: "fields[betaAppClipInvocations]")
            encoder.encode(include, forKey: "include")
            encoder.encode(limitBetaAppClipInvocationLocalizations, forKey: "limit[betaAppClipInvocationLocalizations]")
            return encoder.items
        }

        public enum FieldsBetaAppClipInvocations: String, Codable, CaseIterable {
            case betaAppClipInvocationLocalizations
            case buildBundle
            case url
        }

        public enum Include: String, Codable, CaseIterable {
            case betaAppClipInvocationLocalizations
        }

        public func patch(_ body: _Specification.BetaAppClipInvocationUpdateRequest) -> Request<_Specification.BetaAppClipInvocationResponse> {
            Request(method: "PATCH", url: path, body: body, id: "betaAppClipInvocations-update_instance")
        }

        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "betaAppClipInvocations-delete_instance")
        }
    }
}
