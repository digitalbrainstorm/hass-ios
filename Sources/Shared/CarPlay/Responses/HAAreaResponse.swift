import Foundation
import HAKit

public struct HAAreaResponse: HADataDecodable {
    public let aliases: [String]
    public let areaId: String
    public let name: String
    public let picture: String?

    public init(data: HAData) throws {
        self.init(
            aliases: try data.decode("aliases"),
            areaId: try data.decode("area_id"),
            name: try data.decode("name"),
            picture: try? data.decode("picture")
        )
    }

    internal init(aliases: [String], areaId: String, name: String, picture: String? = nil) {
        self.aliases = aliases
        self.areaId = areaId
        self.name = name
        self.picture = picture
    }
}

public struct HAEntityAreaResponse: HADataDecodable {
    public let areaId: String?
    public let entityId: String?
    public let deviceId: String?

    public init(data: HAData) throws {
        self.init(
            areaId: try? data.decode("area_id"),
            entityId: try? data.decode("entity_id"),
            deviceId: try? data.decode("device_id")
        )
    }

    internal init(areaId: String?, entityId: String?, deviceId: String?) {
        self.areaId = areaId
        self.entityId = entityId
        self.deviceId = deviceId
    }
}

public struct HADeviceAreaResponse: HADataDecodable {
    public let areaId: String?
    public let deviceId: String?

    public init(data: HAData) throws {
        self.init(
            areaId: try? data.decode("area_id"),
            deviceId: try? data.decode("id")
        )
    }

    internal init(areaId: String?, deviceId: String?) {
        self.areaId = areaId
        self.deviceId = deviceId
    }
}