import Foundation
import FlatBuffers
import FlatSerialization
import Postbox

#if DEBUG
public var flatBuffers_checkedGet: Bool = true
#else
public var flatBuffers_checkedGet: Bool = false
#endif

@inline(__always)
public func FlatBuffers_getRoot<T: FlatBufferObject & Verifiable>(
    byteBuffer: inout ByteBuffer,
    fileId: String? = nil,
    options: VerifierOptions = .init()
) -> T {
    if flatBuffers_checkedGet {
        return try! getCheckedRoot(byteBuffer: &byteBuffer, fileId: fileId, options: options)
    } else {
        return getRoot(byteBuffer: &byteBuffer)
    }
}

public enum FlatBuffersError: Error {
    case value_missingRequiredField(file: String, line: Int)
    case invalidUnionType
    
    public static func missingRequiredField(file: String = #file, line: Int = #line) -> FlatBuffersError {
        if flatBuffers_checkedGet {
            preconditionFailure()
        }
        
        return .value_missingRequiredField(file: file, line: line)
    }
}

public extension PeerId {
    init(_ id: TelegramCore_PeerId) {
        self.init(namespace: PeerId.Namespace._internalFromInt32Value(id.namespace), id: PeerId.Id._internalFromInt64Value(id.id))
    }

    func asFlatBuffersObject() -> TelegramCore_PeerId {
        return TelegramCore_PeerId(namespace: self.namespace._internalGetInt32Value(), id: self.id._internalGetInt64Value())
    }
}

public extension MediaId {
    init(_ id: TelegramCore_MediaId) {
        self.init(namespace: id.namespace, id: id.id)
    }

    func asFlatBuffersObject() -> TelegramCore_MediaId {
        return TelegramCore_MediaId(namespace: self.namespace, id: self.id)
    }
}

public extension PixelDimensions {
    init(_ dimensions: TelegramCore_PixelDimensions) {
        self.init(width: dimensions.width, height: dimensions.height)
    }

    func asFlatBuffersObject() -> TelegramCore_PixelDimensions {
        return TelegramCore_PixelDimensions(width: self.width, height: self.height)
    }
}

public extension ItemCollectionId {
    init(_ id: TelegramCore_ItemCollectionId) {
        self.init(namespace: id.namespace, id: id.id)
    }

    func asFlatBuffersObject() -> TelegramCore_ItemCollectionId {
        return TelegramCore_ItemCollectionId(namespace: self.namespace, id: self.id)
    }
}
