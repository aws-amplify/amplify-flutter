//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// Step for Auth.updateUserAttribute api call
public enum AuthUpdateAttributeStep {

    /// Next step is to confirm the attribute with confirmation code.
    ///
    /// Invoke Auth.confirm(userAttribute: ...) to confirm the attribute that was updated.
    /// `AuthCodeDeliveryDetails` provides the details to which the confirmation
    /// code was send and `AdditionalInfo` will provide more details if present.
    case confirmAttributeWithCode(AuthCodeDeliveryDetails, AdditionalInfo?)

    /// Update Attribute step is `done` when the update attribute flow is complete.
    case done
}
