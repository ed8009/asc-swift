// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.Builds.WithID {
    public var diagnosticSignatures: DiagnosticSignatures {
        DiagnosticSignatures(path: path + "/diagnosticSignatures")
    }

    public struct DiagnosticSignatures {
        /// Path: `/v1/builds/{id}/diagnosticSignatures`
        public let path: String

        public func get(filterDiagnosticType: [FilterDiagnosticType]? = nil, fieldsDiagnosticSignatures: [FieldsDiagnosticSignatures]? = nil, limit: Int? = nil) -> Request<_Specification.DiagnosticSignaturesResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(filterDiagnosticType, fieldsDiagnosticSignatures, limit), id: "builds-diagnosticSignatures-get_to_many_related")
        }

        private func makeGetQuery(_ filterDiagnosticType: [FilterDiagnosticType]?, _ fieldsDiagnosticSignatures: [FieldsDiagnosticSignatures]?, _ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterDiagnosticType, forKey: "filter[diagnosticType]")
            encoder.encode(fieldsDiagnosticSignatures, forKey: "fields[diagnosticSignatures]")
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }

        public enum FilterDiagnosticType: String, Codable, CaseIterable {
            case diskWrites = "DISK_WRITES"
            case hangs = "HANGS"
        }

        public enum FieldsDiagnosticSignatures: String, Codable, CaseIterable {
            case diagnosticType
            case logs
            case signature
            case weight
        }
    }
}
