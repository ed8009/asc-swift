// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct ImageAsset: Codable, Hashable {
    public var templateURL: String?
    public var width: Int?
    public var height: Int?

    public init(templateURL: String? = nil, width: Int? = nil, height: Int? = nil) {
        self.templateURL = templateURL
        self.width = width
        self.height = height
    }

    private enum CodingKeys: String, CodingKey {
        case templateURL = "templateUrl"
        case width
        case height
    }
}
