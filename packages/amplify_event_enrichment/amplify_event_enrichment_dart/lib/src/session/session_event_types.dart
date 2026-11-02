// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Event type of the session start event.
///
/// Matches the string legacy Amplify Analytics used, so downstream analytics
/// keyed on Pinpoint's naming keep working.
const zSessionStartEventType = '_session.start';

/// Event type of the session stop event, which carries the session's stop
/// timestamp and duration.
///
/// Matches the string legacy Amplify Analytics used, so downstream analytics
/// keyed on Pinpoint's naming keep working.
const zSessionStopEventType = '_session.stop';
