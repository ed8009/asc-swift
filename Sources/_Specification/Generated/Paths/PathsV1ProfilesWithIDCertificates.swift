// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.Profiles.WithID {
    public var certificates: Certificates {
        Certificates(path: path + "/certificates")
    }

    public struct Certificates {
        /// Path: `/v1/profiles/{id}/certificates`
        public let path: String

        public func get(fieldsCertificates: [FieldsCertificates]? = nil, limit: Int? = nil) -> Request<_Specification.CertificatesResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsCertificates, limit), id: "profiles-certificates-get_to_many_related")
        }

        private func makeGetQuery(_ fieldsCertificates: [FieldsCertificates]?, _ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsCertificates, forKey: "fields[certificates]", explode: false)
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }

        public enum FieldsCertificates: String, Codable, CaseIterable {
            case certificateContent
            case certificateType
            case csrContent
            case displayName
            case expirationDate
            case name
            case platform
            case serialNumber
        }
    }
}
