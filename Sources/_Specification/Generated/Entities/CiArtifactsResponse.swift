// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct CiArtifactsResponse: Codable, Hashable {
    public var data: [CiArtifact]
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [CiArtifact], links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.links = links
        self.meta = meta
    }
}
