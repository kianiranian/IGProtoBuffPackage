// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: FileUploadStatus.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct IGPFileUploadStatus: SwiftProtobuf.RequestMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var igpRequest: IGPRequest {
    get {return _storage._igpRequest ?? IGPRequest()}
    set {_uniqueStorage()._igpRequest = newValue}
  }
  /// Returns true if `igpRequest` has been explicitly set.
  public var hasIgpRequest: Bool {return _storage._igpRequest != nil}
  /// Clears the value of `igpRequest`. Subsequent reads from it will return its default value.
  public mutating func clearIgpRequest() {_uniqueStorage()._igpRequest = nil}

  public var igpToken: String {
    get {return _storage._igpToken}
    set {_uniqueStorage()._igpToken = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct IGPFileUploadStatusResponse: SwiftProtobuf.ResponseMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var igpResponse: IGPResponse {
    get {return _storage._igpResponse ?? IGPResponse()}
    set {_uniqueStorage()._igpResponse = newValue}
  }
  /// Returns true if `igpResponse` has been explicitly set.
  public var hasIgpResponse: Bool {return _storage._igpResponse != nil}
  /// Clears the value of `igpResponse`. Subsequent reads from it will return its default value.
  public mutating func clearIgpResponse() {_uniqueStorage()._igpResponse = nil}

  public var igpStatus: IGPFileUploadStatusResponse.IGPStatus {
    get {return _storage._igpStatus}
    set {_uniqueStorage()._igpStatus = newValue}
  }

  public var igpProgress: Double {
    get {return _storage._igpProgress}
    set {_uniqueStorage()._igpProgress = newValue}
  }

  public var igpRecheckDelayMs: Int32 {
    get {return _storage._igpRecheckDelayMs}
    set {_uniqueStorage()._igpRecheckDelayMs = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum IGPStatus: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case uploading // = 0
    case processing // = 1
    case processed // = 2
    case corrupted // = 3
    case UNRECOGNIZED(Int)

    public init() {
      self = .uploading
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .uploading
      case 1: self = .processing
      case 2: self = .processed
      case 3: self = .corrupted
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .uploading: return 0
      case .processing: return 1
      case .processed: return 2
      case .corrupted: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

#if swift(>=4.2)

extension IGPFileUploadStatusResponse.IGPStatus: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [IGPFileUploadStatusResponse.IGPStatus] = [
    .uploading,
    .processing,
    .processed,
    .corrupted,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension IGPFileUploadStatus: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "IGPFileUploadStatus"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_request"),
    2: .standard(proto: "IGP_token"),
  ]

  fileprivate class _StorageClass {
    var _igpRequest: IGPRequest? = nil
    var _igpToken: String = String()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpRequest = source._igpRequest
      _igpToken = source._igpToken
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._igpRequest)
        case 2: try decoder.decodeSingularStringField(value: &_storage._igpToken)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._igpRequest {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if !_storage._igpToken.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpToken, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IGPFileUploadStatus, rhs: IGPFileUploadStatus) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._igpRequest != rhs_storage._igpRequest {return false}
        if _storage._igpToken != rhs_storage._igpToken {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension IGPFileUploadStatusResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "IGPFileUploadStatusResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_response"),
    2: .standard(proto: "IGP_status"),
    3: .standard(proto: "IGP_progress"),
    4: .standard(proto: "IGP_recheck_delay_ms"),
  ]

  fileprivate class _StorageClass {
    var _igpResponse: IGPResponse? = nil
    var _igpStatus: IGPFileUploadStatusResponse.IGPStatus = .uploading
    var _igpProgress: Double = 0
    var _igpRecheckDelayMs: Int32 = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpResponse = source._igpResponse
      _igpStatus = source._igpStatus
      _igpProgress = source._igpProgress
      _igpRecheckDelayMs = source._igpRecheckDelayMs
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._igpResponse)
        case 2: try decoder.decodeSingularEnumField(value: &_storage._igpStatus)
        case 3: try decoder.decodeSingularDoubleField(value: &_storage._igpProgress)
        case 4: try decoder.decodeSingularInt32Field(value: &_storage._igpRecheckDelayMs)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._igpResponse {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if _storage._igpStatus != .uploading {
        try visitor.visitSingularEnumField(value: _storage._igpStatus, fieldNumber: 2)
      }
      if _storage._igpProgress != 0 {
        try visitor.visitSingularDoubleField(value: _storage._igpProgress, fieldNumber: 3)
      }
      if _storage._igpRecheckDelayMs != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpRecheckDelayMs, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IGPFileUploadStatusResponse, rhs: IGPFileUploadStatusResponse) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._igpResponse != rhs_storage._igpResponse {return false}
        if _storage._igpStatus != rhs_storage._igpStatus {return false}
        if _storage._igpProgress != rhs_storage._igpProgress {return false}
        if _storage._igpRecheckDelayMs != rhs_storage._igpRecheckDelayMs {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension IGPFileUploadStatusResponse.IGPStatus: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UPLOADING"),
    1: .same(proto: "PROCESSING"),
    2: .same(proto: "PROCESSED"),
    3: .same(proto: "CORRUPTED"),
  ]
}
