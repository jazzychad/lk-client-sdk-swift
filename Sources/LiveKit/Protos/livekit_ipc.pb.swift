// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: livekit_ipc.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
private struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
    struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
    typealias Version = _2
}

public struct IPCMessage {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var type: IPCMessage.OneOf_Type?

    public var buffer: IPCMessage.Buffer {
        get {
            if case .buffer(let v)? = type {return v}
            return IPCMessage.Buffer()
        }
        set {type = .buffer(newValue)}
    }

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public enum OneOf_Type: Equatable {
        case buffer(IPCMessage.Buffer)

        #if !swift(>=4.1)
        public static func ==(lhs: IPCMessage.OneOf_Type, rhs: IPCMessage.OneOf_Type) -> Bool {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch (lhs, rhs) {
            case (.buffer, .buffer): return {
                guard case .buffer(let l) = lhs, case .buffer(let r) = rhs else { preconditionFailure() }
                return l == r
            }()
            }
        }
        #endif
    }

    public struct Buffer {
        // SwiftProtobuf.Message conformance is added in an extension below. See the
        // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
        // methods supported on all messages.

        public var timestampNs: UInt64 = 0

        public var buffer: Data = Data()

        public var type: IPCMessage.Buffer.OneOf_Type?

        public var video: IPCMessage.Buffer.Video {
            get {
                if case .video(let v)? = type {return v}
                return IPCMessage.Buffer.Video()
            }
            set {type = .video(newValue)}
        }

        public var audioApp: IPCMessage.Buffer.AudioApp {
            get {
                if case .audioApp(let v)? = type {return v}
                return IPCMessage.Buffer.AudioApp()
            }
            set {type = .audioApp(newValue)}
        }

        public var audioMic: IPCMessage.Buffer.AudioMic {
            get {
                if case .audioMic(let v)? = type {return v}
                return IPCMessage.Buffer.AudioMic()
            }
            set {type = .audioMic(newValue)}
        }

        public var unknownFields = SwiftProtobuf.UnknownStorage()

        public enum OneOf_Type: Equatable {
            case video(IPCMessage.Buffer.Video)
            case audioApp(IPCMessage.Buffer.AudioApp)
            case audioMic(IPCMessage.Buffer.AudioMic)

            #if !swift(>=4.1)
            public static func ==(lhs: IPCMessage.Buffer.OneOf_Type, rhs: IPCMessage.Buffer.OneOf_Type) -> Bool {
                // The use of inline closures is to circumvent an issue where the compiler
                // allocates stack space for every case branch when no optimizations are
                // enabled. https://github.com/apple/swift-protobuf/issues/1034
                switch (lhs, rhs) {
                case (.video, .video): return {
                    guard case .video(let l) = lhs, case .video(let r) = rhs else { preconditionFailure() }
                    return l == r
                }()
                case (.audioApp, .audioApp): return {
                    guard case .audioApp(let l) = lhs, case .audioApp(let r) = rhs else { preconditionFailure() }
                    return l == r
                }()
                case (.audioMic, .audioMic): return {
                    guard case .audioMic(let l) = lhs, case .audioMic(let r) = rhs else { preconditionFailure() }
                    return l == r
                }()
                default: return false
                }
            }
            #endif
        }

        public struct Video {
            // SwiftProtobuf.Message conformance is added in an extension below. See the
            // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
            // methods supported on all messages.

            /// CVPixelBuffer's FormatType
            public var format: UInt32 = 0

            /// RTCVideoRotation
            public var rotation: UInt32 = 0

            public var width: UInt32 = 0

            public var height: UInt32 = 0

            public var unknownFields = SwiftProtobuf.UnknownStorage()

            public init() {}
        }

        public struct AudioApp {
            // SwiftProtobuf.Message conformance is added in an extension below. See the
            // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
            // methods supported on all messages.

            public var unknownFields = SwiftProtobuf.UnknownStorage()

            public init() {}
        }

        public struct AudioMic {
            // SwiftProtobuf.Message conformance is added in an extension below. See the
            // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
            // methods supported on all messages.

            public var unknownFields = SwiftProtobuf.UnknownStorage()

            public init() {}
        }

        public init() {}
    }

    public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension IPCMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    public static let protoMessageName: String = "IPCMessage"
    public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "buffer")
    ]

    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try {
                var v: IPCMessage.Buffer?
                var hadOneofValue = false
                if let current = self.type {
                    hadOneofValue = true
                    if case .buffer(let m) = current {v = m}
                }
                try decoder.decodeSingularMessageField(value: &v)
                if let v = v {
                    if hadOneofValue {try decoder.handleConflictingOneOf()}
                    self.type = .buffer(v)
                }
            }()
            default: break
            }
        }
    }

    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every if/case branch local when no optimizations
        // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
        // https://github.com/apple/swift-protobuf/issues/1182
        try { if case .buffer(let v)? = self.type {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
        } }()
        try unknownFields.traverse(visitor: &visitor)
    }

    public static func ==(lhs: IPCMessage, rhs: IPCMessage) -> Bool {
        if lhs.type != rhs.type {return false}
        if lhs.unknownFields != rhs.unknownFields {return false}
        return true
    }
}

extension IPCMessage.Buffer: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    public static let protoMessageName: String = IPCMessage.protoMessageName + ".Buffer"
    public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "timestampNs"),
        2: .same(proto: "buffer"),
        3: .same(proto: "video"),
        4: .same(proto: "audioApp"),
        5: .same(proto: "audioMic")
    ]

    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularUInt64Field(value: &self.timestampNs) }()
            case 2: try { try decoder.decodeSingularBytesField(value: &self.buffer) }()
            case 3: try {
                var v: IPCMessage.Buffer.Video?
                var hadOneofValue = false
                if let current = self.type {
                    hadOneofValue = true
                    if case .video(let m) = current {v = m}
                }
                try decoder.decodeSingularMessageField(value: &v)
                if let v = v {
                    if hadOneofValue {try decoder.handleConflictingOneOf()}
                    self.type = .video(v)
                }
            }()
            case 4: try {
                var v: IPCMessage.Buffer.AudioApp?
                var hadOneofValue = false
                if let current = self.type {
                    hadOneofValue = true
                    if case .audioApp(let m) = current {v = m}
                }
                try decoder.decodeSingularMessageField(value: &v)
                if let v = v {
                    if hadOneofValue {try decoder.handleConflictingOneOf()}
                    self.type = .audioApp(v)
                }
            }()
            case 5: try {
                var v: IPCMessage.Buffer.AudioMic?
                var hadOneofValue = false
                if let current = self.type {
                    hadOneofValue = true
                    if case .audioMic(let m) = current {v = m}
                }
                try decoder.decodeSingularMessageField(value: &v)
                if let v = v {
                    if hadOneofValue {try decoder.handleConflictingOneOf()}
                    self.type = .audioMic(v)
                }
            }()
            default: break
            }
        }
    }

    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every if/case branch local when no optimizations
        // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
        // https://github.com/apple/swift-protobuf/issues/1182
        if self.timestampNs != 0 {
            try visitor.visitSingularUInt64Field(value: self.timestampNs, fieldNumber: 1)
        }
        if !self.buffer.isEmpty {
            try visitor.visitSingularBytesField(value: self.buffer, fieldNumber: 2)
        }
        switch self.type {
        case .video?: try {
            guard case .video(let v)? = self.type else { preconditionFailure() }
            try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
        }()
        case .audioApp?: try {
            guard case .audioApp(let v)? = self.type else { preconditionFailure() }
            try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
        }()
        case .audioMic?: try {
            guard case .audioMic(let v)? = self.type else { preconditionFailure() }
            try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
        }()
        case nil: break
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    public static func ==(lhs: IPCMessage.Buffer, rhs: IPCMessage.Buffer) -> Bool {
        if lhs.timestampNs != rhs.timestampNs {return false}
        if lhs.buffer != rhs.buffer {return false}
        if lhs.type != rhs.type {return false}
        if lhs.unknownFields != rhs.unknownFields {return false}
        return true
    }
}

extension IPCMessage.Buffer.Video: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    public static let protoMessageName: String = IPCMessage.Buffer.protoMessageName + ".Video"
    public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "format"),
        2: .same(proto: "rotation"),
        3: .same(proto: "width"),
        4: .same(proto: "height")
    ]

    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularUInt32Field(value: &self.format) }()
            case 2: try { try decoder.decodeSingularUInt32Field(value: &self.rotation) }()
            case 3: try { try decoder.decodeSingularUInt32Field(value: &self.width) }()
            case 4: try { try decoder.decodeSingularUInt32Field(value: &self.height) }()
            default: break
            }
        }
    }

    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if self.format != 0 {
            try visitor.visitSingularUInt32Field(value: self.format, fieldNumber: 1)
        }
        if self.rotation != 0 {
            try visitor.visitSingularUInt32Field(value: self.rotation, fieldNumber: 2)
        }
        if self.width != 0 {
            try visitor.visitSingularUInt32Field(value: self.width, fieldNumber: 3)
        }
        if self.height != 0 {
            try visitor.visitSingularUInt32Field(value: self.height, fieldNumber: 4)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    public static func ==(lhs: IPCMessage.Buffer.Video, rhs: IPCMessage.Buffer.Video) -> Bool {
        if lhs.format != rhs.format {return false}
        if lhs.rotation != rhs.rotation {return false}
        if lhs.width != rhs.width {return false}
        if lhs.height != rhs.height {return false}
        if lhs.unknownFields != rhs.unknownFields {return false}
        return true
    }
}

extension IPCMessage.Buffer.AudioApp: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    public static let protoMessageName: String = IPCMessage.Buffer.protoMessageName + ".AudioApp"
    public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let _ = try decoder.nextFieldNumber() {
        }
    }

    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        try unknownFields.traverse(visitor: &visitor)
    }

    public static func ==(lhs: IPCMessage.Buffer.AudioApp, rhs: IPCMessage.Buffer.AudioApp) -> Bool {
        if lhs.unknownFields != rhs.unknownFields {return false}
        return true
    }
}

extension IPCMessage.Buffer.AudioMic: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    public static let protoMessageName: String = IPCMessage.Buffer.protoMessageName + ".AudioMic"
    public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let _ = try decoder.nextFieldNumber() {
        }
    }

    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        try unknownFields.traverse(visitor: &visitor)
    }

    public static func ==(lhs: IPCMessage.Buffer.AudioMic, rhs: IPCMessage.Buffer.AudioMic) -> Bool {
        if lhs.unknownFields != rhs.unknownFields {return false}
        return true
    }
}