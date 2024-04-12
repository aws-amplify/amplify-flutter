//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//


import Foundation
import Amplify
import Combine

/**
 WebSocketClient wraps URLSessionWebSocketTask and offers
 an abstraction of the data stream in the form of WebSocketEvent.
 */
@_spi(WebSocket)
public final actor WebSocketClient: NSObject {
    public enum Error: Swift.Error {
        case connectionLost
        case connectionCancelled
    }

    /// WebSocket server endpoint
    private let url: URL
    /// Additional Header for WebSocket handshake http request
    private let handshakeHttpHeaders: [String: String]
    /// Interceptor for appending additional info before makeing the connection
    private var interceptor: WebSocketInterceptor?
    /// Internal wriable WebSocketEvent data stream
    private let subject = PassthroughSubject<WebSocketEvent, Never>()

    private let retryWithJitter = RetryWithJitter()

    /// Network monitor provide notification of device network status
    private let networkMonitor: WebSocketNetworkMonitorProtocol

    /// Cancellables bind with client life cycle
    private var cancelables = Set<AnyCancellable>()
    /// The underlying URLSessionWebSocketTask
    private var connection: URLSessionWebSocketTask? {
        willSet {
            self.connection?.cancel(with: .goingAway, reason: nil)
        }
    }

    /// A flag indicating whether to automatically update the connection upon network status updates
    private var autoConnectOnNetworkStatusChange: Bool
    /// A flag indicating whether to automatically retry on connection failure
    private var autoRetryOnConnectionFailure: Bool
    /// Data stream for downstream subscribers to engage with
    public var publisher: AnyPublisher<WebSocketEvent, Never> {
        self.subject.eraseToAnyPublisher()
    }

    public var isConnected: Bool {
        self.connection?.state == .running
    }

    /**
     Creates a WebSocketClient.

     - Parameters:
        - url: WebSocket server endpoint
        - protocols: WebSocket subprotocols, for header `Sec-WebSocket-Protocol`
        - interceptor: An optional interceptor for additional info before establishing the connection
        - networkMonitor: Provides network status notifications
     */
    public init(
        url: URL,
        handshakeHttpHeaders: [String: String] = [:],
        interceptor: WebSocketInterceptor? = nil,
        networkMonitor: WebSocketNetworkMonitorProtocol = AmplifyNetworkMonitor()
    ) {
        self.url = Self.useWebSocketProtocolScheme(url: url)
        self.handshakeHttpHeaders = handshakeHttpHeaders
        self.interceptor = interceptor
        self.autoConnectOnNetworkStatusChange = false
        self.autoRetryOnConnectionFailure = false
        self.networkMonitor = networkMonitor
        super.init()
        /**
         The network monitor and retries should have a longer lifespan compared to the connection itself.
         This ensures that when the network goes offline or the connection drops,
         the network monitor can initiate a reconnection once the network is back online.
         */
        Task { await self.startNetworkMonitor() }
        Task { await self.retryOnConnectionFailure() }
    }

    deinit {
        self.subject.send(completion: .finished)
        self.autoConnectOnNetworkStatusChange = false
        self.autoRetryOnConnectionFailure = false
        cancelables = Set()
    }

    /**
     Connect to WebSocket server.
     - Parameters:
        - autoConnectOnNetworkStatusChange:
            A flag indicating whether this connection should be automatically updated when the network status changes.
        - autoRetryOnConnectionFailure:
            A flag indicating whether this connection should attampt to retry upon failure.
     */
    public func connect(
        autoConnectOnNetworkStatusChange: Bool = false,
        autoRetryOnConnectionFailure: Bool = false
    ) async {
        guard self.connection?.state != .running else {
            log.debug("[WebSocketClient] WebSocket is already in connecting state")
            return
        }

        log.debug("[WebSocketClient] WebSocket about to connect")
        self.autoConnectOnNetworkStatusChange = autoConnectOnNetworkStatusChange
        self.autoRetryOnConnectionFailure = autoRetryOnConnectionFailure

        await self.createConnectionAndRead()
    }

    /**
     Disconnect from WebSocket server.

     This will halt all automatic processes and attempt to gracefully close the connection.
     */
    public func disconnect() {
        guard self.connection?.state == .running else {
            log.debug("[WebSocketClient] client should be in connected state to trigger disconnect")
            return
        }

        self.autoConnectOnNetworkStatusChange = false
        self.autoRetryOnConnectionFailure = false
        self.connection?.cancel(with: .goingAway, reason: nil)
    }

    /**
     Write text data to WebSocket server.
     - Parameters:
        - message: text message in String
     */
    public func write(message: String) async throws {
        log.debug("[WebSocketClient] WebSocket write message string: \(message)")
        try await self.connection?.send(.string(message))
    }

    /**
     Write binary data to WebSocket server.
     - Parameters:
        - message: binary message in Data
     */
    public func write(message: Data) async throws {
        log.debug("[WebSocketClient] WebSocket write message data: \(message)")
        try await self.connection?.send(.data(message))
    }

    private func createWebSocketConnection() async -> URLSessionWebSocketTask {
        let decoratedURL = (await self.interceptor?.interceptConnection(url: self.url)) ?? self.url
        var urlRequest = URLRequest(url: decoratedURL)
        self.handshakeHttpHeaders.forEach { urlRequest.setValue($0.value, forHTTPHeaderField: $0.key) }

        let urlSession = URLSession(configuration: .default, delegate: self, delegateQueue: nil)
        return urlSession.webSocketTask(with: urlRequest)
    }

    private func createConnectionAndRead() async {
        log.debug("[WebSocketClient] Creating new connection and starting read")
        self.connection = await createWebSocketConnection()

        // Perform reading from a WebSocket in a separate task recursively to avoid blocking the execution.
        Task { await self.startReadMessage() }

        self.connection?.resume()
    }

    /**
     Recusively read WebSocket data frames and publish to data stream.
     */
    private func startReadMessage() async {
        guard let connection = self.connection else {
            log.debug("[WebSocketClient] WebSocket connection doesn't exist")
            return
        }

        if connection.state == .canceling || connection.state == .completed {
            log.debug("[WebSocketClient] WebSocket connection state is \(connection.state). Failed to read websocket message")
            return
        }

        do {
            let message = try await connection.receive()
            log.debug("[WebSocketClient] WebSocket received message: \(String(describing: message))")
            switch message {
            case .data(let data):
                subject.send(.data(data))
            case .string(let string):
                subject.send(.string(string))
            @unknown default:
                break
            }
        } catch {
            if connection.state == .running {
                subject.send(.error(error))
            } else {
                log.debug("[WebSocketClient] read message failed with connection state \(connection.state), error \(error)")
            }
        }

        await self.startReadMessage()
    }
}

// MARK: - URLSession delegate
extension WebSocketClient: URLSessionWebSocketDelegate {
    nonisolated public func urlSession(
        _ session: URLSession,
        webSocketTask: URLSessionWebSocketTask,
        didOpenWithProtocol protocol: String?
    ) {
        log.debug("[WebSocketClient] Websocket connected")
        self.subject.send(.connected)
    }

    nonisolated public func urlSession(
        _ session: URLSession,
        webSocketTask: URLSessionWebSocketTask,
        didCloseWith closeCode: URLSessionWebSocketTask.CloseCode,
        reason: Data?
    ) {
        log.debug("[WebSocketClient] Websocket disconnected")
        self.subject.send(.disconnected(closeCode, reason.flatMap { String(data: $0, encoding: .utf8) }))
    }

    nonisolated public func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didCompleteWithError error: Swift.Error?
    ) {
        guard let error else {
            log.debug("[WebSocketClient] URLSession didComplete")
            return
        }

        log.debug("[WebSocketClient] URLSession didCompleteWithError: \(error))")

        let nsError = error as NSError
        switch (nsError.domain, nsError.code) {
        case (NSURLErrorDomain.self, NSURLErrorNetworkConnectionLost), // connection lost
             (NSPOSIXErrorDomain.self, Int(ECONNABORTED)): // background to foreground
            self.subject.send(.error(WebSocketClient.Error.connectionLost))
            Task { [weak self] in
                await self?.networkMonitor.updateState(.offline)
            }
        case (NSURLErrorDomain.self, NSURLErrorCancelled):
            log.debug("Skipping NSURLErrorCancelled error")
            self.subject.send(.error(WebSocketClient.Error.connectionCancelled))
        default:
            self.subject.send(.error(error))
        }
    }
}

// MARK: - network reachability
extension WebSocketClient {
    /// Monitor network status. Disconnect or reconnect when the network drops or comes back online.
    private func startNetworkMonitor() {
        networkMonitor.publisher.sink(receiveValue: { stateChange in
            Task { [weak self] in
                await self?.onNetworkStateChange(stateChange)
            }
        })
        .store(in: &cancelables)
    }

    private func onNetworkStateChange(
        _ stateChange: (AmplifyNetworkMonitor.State, AmplifyNetworkMonitor.State)
    ) async {
        guard self.autoConnectOnNetworkStatusChange == true else {
            return
        }

        switch stateChange {
        case (.online, .offline):
            log.debug("[WebSocketClient] NetworkMonitor - Device went offline")
            self.connection?.cancel(with: .invalid, reason: nil)
            self.subject.send(.disconnected(.invalid, nil))
        case (.offline, .online):
            log.debug("[WebSocketClient] NetworkMonitor - Device back online")
            await self.createConnectionAndRead()
        default:
            break
        }
    }
}

// MARK: - auto retry on connection failure
extension WebSocketClient {
    private func retryOnConnectionFailure() {
        subject.map { event -> URLSessionWebSocketTask.CloseCode? in
            guard case .disconnected(let closeCode, _) = event else {
                return nil
            }
            return closeCode
        }
        .compactMap { $0 }
        .sink(receiveCompletion: { _ in }) { closeCode in
            Task { [weak self] in await self?.retryOnCloseCode(closeCode) }
        }
        .store(in: &cancelables)

        self.resetRetryCountOnConnected()
    }

    private func resetRetryCountOnConnected() {
        subject.filter {
            if case .connected = $0 {
                return true
            }
            return false
        }
        .sink(receiveCompletion: { _ in }) { _ in
            Task { [weak self] in
                await self?.retryWithJitter.reset()
            }
        }
        .store(in: &cancelables)
    }

    private func retryOnCloseCode(_ closeCode: URLSessionWebSocketTask.CloseCode) async {
        guard self.autoRetryOnConnectionFailure == true else {
            return
        }

        switch closeCode {
        case .internalServerError:
            let delayInMs = await retryWithJitter.next()
            Task { [weak self] in
                try await Task.sleep(nanoseconds: UInt64(delayInMs) * 1_000_000)
                await self?.createConnectionAndRead()
            }
        default: break
        }

    }
}

extension WebSocketClient {
    static func useWebSocketProtocolScheme(url: URL) -> URL {
        guard var urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: false) else {
            return url
        }
        urlComponents.scheme = urlComponents.scheme == "http" ? "ws" : "wss"
        return urlComponents.url ?? url
    }
}

extension WebSocketClient: DefaultLogger {
    public static var log: Logger {
        Amplify.Logging.logger(forNamespace: String(describing: self))
    }

    public nonisolated var log: Logger { Self.log }
}

extension WebSocketClient: Resettable {
    public func reset() async {
        self.subject.send(completion: .finished)
        self.autoConnectOnNetworkStatusChange = false
        self.autoRetryOnConnectionFailure = false
        cancelables = Set()
    }
}
