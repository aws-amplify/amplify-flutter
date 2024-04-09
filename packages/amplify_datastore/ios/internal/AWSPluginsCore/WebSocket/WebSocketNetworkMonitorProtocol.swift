//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//


import Foundation
import Combine

@_spi(WebSocket)
public protocol WebSocketNetworkMonitorProtocol {
    var publisher: AnyPublisher<(AmplifyNetworkMonitor.State, AmplifyNetworkMonitor.State), Never> { get }
    func updateState(_ nextState: AmplifyNetworkMonitor.State) async
}

extension AmplifyNetworkMonitor: WebSocketNetworkMonitorProtocol { }
