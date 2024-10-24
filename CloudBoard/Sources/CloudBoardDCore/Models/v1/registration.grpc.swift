// Copyright © 2024 Apple Inc. All Rights Reserved.

// APPLE INC.
// PRIVATE CLOUD COMPUTE SOURCE CODE INTERNAL USE LICENSE AGREEMENT
// PLEASE READ THE FOLLOWING PRIVATE CLOUD COMPUTE SOURCE CODE INTERNAL USE LICENSE AGREEMENT (“AGREEMENT”) CAREFULLY BEFORE DOWNLOADING OR USING THE APPLE SOFTWARE ACCOMPANYING THIS AGREEMENT(AS DEFINED BELOW). BY DOWNLOADING OR USING THE APPLE SOFTWARE, YOU ARE AGREEING TO BE BOUND BY THE TERMS OF THIS AGREEMENT. IF YOU DO NOT AGREE TO THE TERMS OF THIS AGREEMENT, DO NOT DOWNLOAD OR USE THE APPLE SOFTWARE. THESE TERMS AND CONDITIONS CONSTITUTE A LEGAL AGREEMENT BETWEEN YOU AND APPLE.
// IMPORTANT NOTE: BY DOWNLOADING OR USING THE APPLE SOFTWARE, YOU ARE AGREEING ON YOUR OWN BEHALF AND/OR ON BEHALF OF YOUR COMPANY OR ORGANIZATION TO THE TERMS OF THIS AGREEMENT.
// 1. As used in this Agreement, the term “Apple Software” collectively means and includes all of the Apple Private Cloud Compute materials provided by Apple here, including but not limited to the Apple Private Cloud Compute software, tools, data, files, frameworks, libraries, documentation, logs and other Apple-created materials. In consideration for your agreement to abide by the following terms, conditioned upon your compliance with these terms and subject to these terms, Apple grants you, for a period of ninety (90) days from the date you download the Apple Software, a limited, non-exclusive, non-sublicensable license under Apple’s copyrights in the Apple Software to download, install, compile and run the Apple Software internally within your organization only on a single Apple-branded computer you own or control, for the sole purpose of verifying the security and privacy characteristics of Apple Private Cloud Compute. This Agreement does not allow the Apple Software to exist on more than one Apple-branded computer at a time, and you may not distribute or make the Apple Software available over a network where it could be used by multiple devices at the same time. You may not, directly or indirectly, redistribute the Apple Software or any portions thereof. The Apple Software is only licensed and intended for use as expressly stated above and may not be used for other purposes or in other contexts without Apple's prior written permission. Except as expressly stated in this notice, no other rights or licenses, express or implied, are granted by Apple herein.
// 2. The Apple Software is provided by Apple on an "AS IS" basis. APPLE MAKES NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION THE IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, REGARDING THE APPLE SOFTWARE OR ITS USE AND OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS, SYSTEMS, OR SERVICES. APPLE DOES NOT WARRANT THAT THE APPLE SOFTWARE WILL MEET YOUR REQUIREMENTS, THAT THE OPERATION OF THE APPLE SOFTWARE WILL BE UNINTERRUPTED OR ERROR-FREE, THAT DEFECTS IN THE APPLE SOFTWARE WILL BE CORRECTED, OR THAT THE APPLE SOFTWARE WILL BE COMPATIBLE WITH FUTURE APPLE PRODUCTS, SOFTWARE OR SERVICES. NO ORAL OR WRITTEN INFORMATION OR ADVICE GIVEN BY APPLE OR AN APPLE AUTHORIZED REPRESENTATIVE WILL CREATE A WARRANTY.
// 3. IN NO EVENT SHALL APPLE BE LIABLE FOR ANY DIRECT, SPECIAL, INDIRECT, INCIDENTAL OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION, COMPILATION OR OPERATION OF THE APPLE SOFTWARE, HOWEVER CAUSED AND WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE), STRICT LIABILITY OR OTHERWISE, EVEN IF APPLE HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
// 4. This Agreement is effective until terminated. Your rights under this Agreement will terminate automatically without notice from Apple if you fail to comply with any term(s) of this Agreement. Upon termination, you agree to cease all use of the Apple Software and destroy all copies, full or partial, of the Apple Software. This Agreement constitutes the entire understanding of the parties with respect to the subject matter contained herein, and supersedes all prior negotiations, representations, or understandings, written or oral. This Agreement will be governed and construed in accordance with the laws of the State of California, without regard to its choice of law rules.
// You may report security issues about Apple products to product-security@apple.com, as described here: https://www.apple.com/support/security/. Non-security bugs and enhancement requests can be made via https://bugreport.apple.com as described here: https://developer.apple.com/bug-reporting/
// EA1937
// 10/02/2024

//
// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the protocol buffer compiler.
// Source: v1/registration.proto
//
import InternalGRPC
import InternalSwiftProtobuf
import NIO
import NIOConcurrencyHelpers


/// Usage: instantiate `Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationClient`, then call methods of this protocol to make API calls.
internal protocol Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationClientInterceptorFactoryProtocol? { get }

  func announce(
    callOptions: CallOptions?,
    handler: @escaping (Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_RegistrationResponse) -> Void
  ) -> BidirectionalStreamingCall<Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_RegistrationRequest, Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_RegistrationResponse>
}

extension Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationClientProtocol {
  internal var serviceName: String {
    return "com.apple.ase.traffic.servicediscovery.api.v1.ServiceRegistration"
  }

  /// Bidirectional streaming call to announce
  ///
  /// Callers should use the `send` method on the returned object to send messages
  /// to the server. The caller should send an `.end` after the final message has been sent.
  ///
  /// - Parameters:
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ClientStreamingCall` with futures for the metadata and status.
  internal func announce(
    callOptions: CallOptions? = nil,
    handler: @escaping (Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_RegistrationResponse) -> Void
  ) -> BidirectionalStreamingCall<Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_RegistrationRequest, Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_RegistrationResponse> {
    return self.makeBidirectionalStreamingCall(
      path: Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationClientMetadata.Methods.announce.path,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeannounceInterceptors() ?? [],
      handler: handler
    )
  }
}

@available(*, deprecated)
extension Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationClient: @unchecked Sendable {}

@available(*, deprecated, renamed: "Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationNIOClient")
internal final class Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationClient: Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationClientInterceptorFactoryProtocol?
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  internal var interceptors: Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the com.apple.ase.traffic.servicediscovery.api.v1.ServiceRegistration service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

internal struct Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationNIOClient: Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationClientProtocol {
  internal var channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationClientInterceptorFactoryProtocol?

  /// Creates a client for the com.apple.ase.traffic.servicediscovery.api.v1.ServiceRegistration service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
internal protocol Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationClientInterceptorFactoryProtocol? { get }

  func makeAnnounceCall(
    callOptions: CallOptions?
  ) -> GRPCAsyncBidirectionalStreamingCall<Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_RegistrationRequest, Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_RegistrationResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationAsyncClientProtocol {
  internal static var serviceDescriptor: GRPCServiceDescriptor {
    return Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationClientMetadata.serviceDescriptor
  }

  internal var interceptors: Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationClientInterceptorFactoryProtocol? {
    return nil
  }

  internal func makeAnnounceCall(
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncBidirectionalStreamingCall<Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_RegistrationRequest, Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_RegistrationResponse> {
    return self.makeAsyncBidirectionalStreamingCall(
      path: Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationClientMetadata.Methods.announce.path,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeannounceInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationAsyncClientProtocol {
  internal func announce<RequestStream>(
    _ requests: RequestStream,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncResponseStream<Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_RegistrationResponse> where RequestStream: Sequence, RequestStream.Element == Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_RegistrationRequest {
    return self.performAsyncBidirectionalStreamingCall(
      path: Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationClientMetadata.Methods.announce.path,
      requests: requests,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeannounceInterceptors() ?? []
    )
  }

  internal func announce<RequestStream>(
    _ requests: RequestStream,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncResponseStream<Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_RegistrationResponse> where RequestStream: AsyncSequence & Sendable, RequestStream.Element == Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_RegistrationRequest {
    return self.performAsyncBidirectionalStreamingCall(
      path: Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationClientMetadata.Methods.announce.path,
      requests: requests,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeannounceInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
internal struct Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationAsyncClient: Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationAsyncClientProtocol {
  internal var channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationClientInterceptorFactoryProtocol?

  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

internal protocol Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationClientInterceptorFactoryProtocol: Sendable {

  /// - Returns: Interceptors to use when invoking 'announce'.
  func makeannounceInterceptors() -> [ClientInterceptor<Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_RegistrationRequest, Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_RegistrationResponse>]
}

internal enum Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationClientMetadata {
  internal static let serviceDescriptor = GRPCServiceDescriptor(
    name: "ServiceRegistration",
    fullName: "com.apple.ase.traffic.servicediscovery.api.v1.ServiceRegistration",
    methods: [
      Com_Apple_Ase_Traffic_Servicediscovery_Api_V1_ServiceRegistrationClientMetadata.Methods.announce,
    ]
  )

  internal enum Methods {
    internal static let announce = GRPCMethodDescriptor(
      name: "announce",
      path: "/com.apple.ase.traffic.servicediscovery.api.v1.ServiceRegistration/announce",
      type: GRPCCallType.bidirectionalStreaming
    )
  }
}
