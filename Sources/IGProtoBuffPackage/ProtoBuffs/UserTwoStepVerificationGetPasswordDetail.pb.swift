// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: UserTwoStepVerificationGetPasswordDetail.proto
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

public struct IGPUserTwoStepVerificationGetPasswordDetail: SwiftProtobuf.RequestMessage {
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

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct IGPUserTwoStepVerificationGetPasswordDetailResponse: SwiftProtobuf.ResponseMessage {
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

  public var igpQuestionOne: String {
    get {return _storage._igpQuestionOne}
    set {_uniqueStorage()._igpQuestionOne = newValue}
  }

  public var igpQuestionTwo: String {
    get {return _storage._igpQuestionTwo}
    set {_uniqueStorage()._igpQuestionTwo = newValue}
  }

  public var igpHint: String {
    get {return _storage._igpHint}
    set {_uniqueStorage()._igpHint = newValue}
  }

  public var igpHasConfirmedRecoveryEmail: Bool {
    get {return _storage._igpHasConfirmedRecoveryEmail}
    set {_uniqueStorage()._igpHasConfirmedRecoveryEmail = newValue}
  }

  public var igpUnconfirmedEmailPattern: String {
    get {return _storage._igpUnconfirmedEmailPattern}
    set {_uniqueStorage()._igpUnconfirmedEmailPattern = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension IGPUserTwoStepVerificationGetPasswordDetail: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "IGPUserTwoStepVerificationGetPasswordDetail"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_request"),
  ]

  fileprivate class _StorageClass {
    var _igpRequest: IGPRequest? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpRequest = source._igpRequest
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
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IGPUserTwoStepVerificationGetPasswordDetail, rhs: IGPUserTwoStepVerificationGetPasswordDetail) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._igpRequest != rhs_storage._igpRequest {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension IGPUserTwoStepVerificationGetPasswordDetailResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "IGPUserTwoStepVerificationGetPasswordDetailResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_response"),
    2: .standard(proto: "IGP_question_one"),
    3: .standard(proto: "IGP_question_two"),
    4: .standard(proto: "IGP_hint"),
    5: .standard(proto: "IGP_has_confirmed_recovery_email"),
    6: .standard(proto: "IGP_unconfirmed_email_pattern"),
  ]

  fileprivate class _StorageClass {
    var _igpResponse: IGPResponse? = nil
    var _igpQuestionOne: String = String()
    var _igpQuestionTwo: String = String()
    var _igpHint: String = String()
    var _igpHasConfirmedRecoveryEmail: Bool = false
    var _igpUnconfirmedEmailPattern: String = String()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpResponse = source._igpResponse
      _igpQuestionOne = source._igpQuestionOne
      _igpQuestionTwo = source._igpQuestionTwo
      _igpHint = source._igpHint
      _igpHasConfirmedRecoveryEmail = source._igpHasConfirmedRecoveryEmail
      _igpUnconfirmedEmailPattern = source._igpUnconfirmedEmailPattern
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
        case 2: try decoder.decodeSingularStringField(value: &_storage._igpQuestionOne)
        case 3: try decoder.decodeSingularStringField(value: &_storage._igpQuestionTwo)
        case 4: try decoder.decodeSingularStringField(value: &_storage._igpHint)
        case 5: try decoder.decodeSingularBoolField(value: &_storage._igpHasConfirmedRecoveryEmail)
        case 6: try decoder.decodeSingularStringField(value: &_storage._igpUnconfirmedEmailPattern)
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
      if !_storage._igpQuestionOne.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpQuestionOne, fieldNumber: 2)
      }
      if !_storage._igpQuestionTwo.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpQuestionTwo, fieldNumber: 3)
      }
      if !_storage._igpHint.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpHint, fieldNumber: 4)
      }
      if _storage._igpHasConfirmedRecoveryEmail != false {
        try visitor.visitSingularBoolField(value: _storage._igpHasConfirmedRecoveryEmail, fieldNumber: 5)
      }
      if !_storage._igpUnconfirmedEmailPattern.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpUnconfirmedEmailPattern, fieldNumber: 6)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IGPUserTwoStepVerificationGetPasswordDetailResponse, rhs: IGPUserTwoStepVerificationGetPasswordDetailResponse) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._igpResponse != rhs_storage._igpResponse {return false}
        if _storage._igpQuestionOne != rhs_storage._igpQuestionOne {return false}
        if _storage._igpQuestionTwo != rhs_storage._igpQuestionTwo {return false}
        if _storage._igpHint != rhs_storage._igpHint {return false}
        if _storage._igpHasConfirmedRecoveryEmail != rhs_storage._igpHasConfirmedRecoveryEmail {return false}
        if _storage._igpUnconfirmedEmailPattern != rhs_storage._igpUnconfirmedEmailPattern {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
