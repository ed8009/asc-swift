// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct CiStartConditionFileMatcher: Codable, Hashable {
    public var directory: String?
    public var fileExtension: String?
    public var fileName: String?

    public init(directory: String? = nil, fileExtension: String? = nil, fileName: String? = nil) {
        self.directory = directory
        self.fileExtension = fileExtension
        self.fileName = fileName
    }
}
