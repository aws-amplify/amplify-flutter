// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

enum ConstraintsAction {
  check(
    'Checks whether all constraints in the repo match the global config',
    'All constraints matched!',
  ),
  update(
    'Updates constraints in aft.yaml to match the latest in pub',
    'Constraints successfully updated!',
  ),
  apply(
    'Applies constraints throughout the repo to match those '
        'in the global config',
    'Constraints successfully applied!',
  );

  const ConstraintsAction(this.description, this.successMessage);

  final String description;
  final String successMessage;
}
