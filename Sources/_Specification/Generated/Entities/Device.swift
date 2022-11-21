// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct Device: Codable, Hashable, Identifiable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var links: ResourceLinks

    public enum `Type`: String, Codable, CaseIterable {
        case devices
    }

    public struct Attributes: Codable, Hashable {
        public var name: String?
        public var platform: BundleIDPlatform?
        public var udid: String?
        public var deviceClass: DeviceClass?
        public var status: Status?
        public var model: String?
        public var addedDate: Date?

        public enum DeviceClass: String, Codable, CaseIterable {
            case appleWatch = "APPLE_WATCH"
            case ipad = "IPAD"
            case iphone = "IPHONE"
            case ipod = "IPOD"
            case appleTv = "APPLE_TV"
            case mac = "MAC"
        }

        public enum Status: String, Codable, CaseIterable {
            case enabled = "ENABLED"
            case disabled = "DISABLED"
        }

        public init(name: String? = nil, platform: BundleIDPlatform? = nil, udid: String? = nil, deviceClass: DeviceClass? = nil, status: Status? = nil, model: String? = nil, addedDate: Date? = nil) {
            self.name = name
            self.platform = platform
            self.udid = udid
            self.deviceClass = deviceClass
            self.status = status
            self.model = model
            self.addedDate = addedDate
        }
    }

    public init(type: `Type`, id: String, attributes: Attributes? = nil, links: ResourceLinks) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.links = links
    }
}
