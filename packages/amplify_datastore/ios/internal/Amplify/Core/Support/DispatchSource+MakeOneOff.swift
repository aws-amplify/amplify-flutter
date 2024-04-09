//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension DispatchSource {
    /// Convenience function to encapsulate creation of a one-off DispatchSourceTimer for different versions of Swift
    ///
    /// - Parameters:
    ///   - interval: The future DispatchInterval at which to fire the timer
    ///   - queue: The queue on which the timer should perform its block
    ///   - block: The block to invoke when the timer is fired
    /// - Returns: The unstarted timer
    public static func makeOneOffDispatchSourceTimer(interval: DispatchTimeInterval,
                                                     queue: DispatchQueue,
                                                     block: @escaping () -> Void ) -> DispatchSourceTimer {
        let deadline = DispatchTime.now() + interval
        return makeOneOffDispatchSourceTimer(deadline: deadline, queue: queue, block: block)
    }

    /// Convenience function to encapsulate creation of a one-off DispatchSourceTimer for different versions of Swift
    /// - Parameters:
    ///   - deadline: The time to fire the timer
    ///   - queue: The queue on which the timer should perform its block
    ///   - block: The block to invoke when the timer is fired
    public static func makeOneOffDispatchSourceTimer(deadline: DispatchTime,
                                                     queue: DispatchQueue,
                                                     block: @escaping () -> Void ) -> DispatchSourceTimer {
        let timer = DispatchSource.makeTimerSource(flags: DispatchSource.TimerFlags(rawValue: 0), queue: queue)
        #if swift(>=4)
        timer.schedule(deadline: deadline)
        #else
        timer.scheduleOneshot(deadline: deadline)
        #endif
        timer.setEventHandler(handler: block)
        return timer
    }
}
