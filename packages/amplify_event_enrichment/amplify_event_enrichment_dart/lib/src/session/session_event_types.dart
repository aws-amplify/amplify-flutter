// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// The event type emitted when a session starts.
///
/// Matches the string legacy Amplify Analytics used, so downstream analytics
/// keyed on Pinpoint's naming keep working.
const zSessionStartEventType = '_session.start';

/// The event type emitted when a session ends. The event carries the
/// session's stop timestamp and duration.
///
/// Matches the string legacy Amplify Analytics used, so downstream analytics
/// keyed on Pinpoint's naming keep working.
const zSessionStopEventType = '_session.stop';
