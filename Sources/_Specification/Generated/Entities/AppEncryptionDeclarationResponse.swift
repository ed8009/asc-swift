// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppEncryptionDeclarationResponse: Codable, Hashable {
    /// AppEncryptionDeclaration
    public var data: AppEncryptionDeclaration
    public var included: [App]?
    public var links: DocumentLinks

    public init(data: AppEncryptionDeclaration, included: [App]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
