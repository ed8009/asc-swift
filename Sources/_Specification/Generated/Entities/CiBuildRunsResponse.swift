// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct CiBuildRunsResponse: Codable, Hashable {
    public var data: [CiBuildRun]
    public var included: [IncludedItem]?
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public enum IncludedItem: Codable, Hashable {
        case build(Build)
        case ciWorkflow(CiWorkflow)
        case ciProduct(CiProduct)
        case scmGitReference(ScmGitReference)
        case scmPullRequest(ScmPullRequest)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(Build.self) {
                self = .build(value)
            } else if let value = try? container.decode(CiWorkflow.self) {
                self = .ciWorkflow(value)
            } else if let value = try? container.decode(CiProduct.self) {
                self = .ciProduct(value)
            } else if let value = try? container.decode(ScmGitReference.self) {
                self = .scmGitReference(value)
            } else if let value = try? container.decode(ScmPullRequest.self) {
                self = .scmPullRequest(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (Build, CiWorkflow, CiProduct, ScmGitReference, ScmPullRequest)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .build(let value): try container.encode(value)
            case .ciWorkflow(let value): try container.encode(value)
            case .ciProduct(let value): try container.encode(value)
            case .scmGitReference(let value): try container.encode(value)
            case .scmPullRequest(let value): try container.encode(value)
            }
        }
    }

    public init(data: [CiBuildRun], included: [IncludedItem]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }
}
