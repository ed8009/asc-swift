// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct ScmGitReferenceResponse: Codable, Hashable {
    /// ScmGitReference
    public var data: ScmGitReference
    public var included: [ScmRepository]?
    public var links: DocumentLinks

    public init(data: ScmGitReference, included: [ScmRepository]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
