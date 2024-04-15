//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import Amplify

/// A simple implementation of a stopwatch used for gathering metrics of elapsed time.
class Stopwatch {
    let lock = NSLock()
    var startTime: DispatchTime?
    var lapStart: DispatchTime?

    /// Marks the beginning of the stopwatch.
    /// If called multiple times, the latest call will overwrite the previous start values.
    func start() {
        lock.execute {
            startTime = DispatchTime.now()
            lapStart = startTime
        }
    }

    /// Returns the elapsed time since `start()` or the last `lap()` was called.
    ///
    /// - Returns: the elapsed time in seconds
    func lap() -> Double {
        lock.execute {
            guard let lapStart = lapStart else {
                return 0
            }

            let lapEnd = DispatchTime.now()
            let lapTime = Double(lapEnd.uptimeNanoseconds - lapStart.uptimeNanoseconds) / 1_000_000_000.0
            self.lapStart = lapEnd
            return lapTime
        }
    }

    /// Returns the total time from the initial `start()` call and resets the stopwatch.
    /// Returns 0 if the stopwatch has never been started.
    ///
    /// - Returns: the total time in seconds that the stop watch has been running, or 0
    func stop() -> Double {
        return lock.execute {
            defer {
                lapStart = nil
                startTime = nil
            }

            guard let startTime = startTime else {
                return 0
            }
            let endTime = DispatchTime.now()
            let total = Double(endTime.uptimeNanoseconds - startTime.uptimeNanoseconds) / 1_000_000_000.0
            return total
        }
    }
}
