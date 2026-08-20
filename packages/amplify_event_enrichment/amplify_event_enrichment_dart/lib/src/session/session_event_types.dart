// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// The event type of the event emitted when a session ends.
///
/// This is the same string legacy Amplify Analytics used for the equivalent
/// Pinpoint event, so downstream analytics that already key on Pinpoint's
/// naming keep working after moving onto this client.
///
/// Only session ends are emitted. A session start carries nothing beyond the
/// session section every recorded event already carries, whereas a session end
/// carries the stop timestamp and duration that exist nowhere else.
///
/// See `EventEnrichmentClient.stopSession` for when the event is emitted and
/// what it contains.
const zSessionStopEventType = '_session.stop';
