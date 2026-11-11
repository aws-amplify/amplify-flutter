#!/usr/bin/env python3
# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

"""Print the pub packages whose license differs from the policy only in case."""
import json
import re
import sys

# pub.dev package names. A name outside this set is left to the review.
NAME = re.compile(r"\A[a-z0-9_]+\Z")


def allow_licenses(config_path):
    licenses, in_list = [], False
    with open(config_path) as config:
        for line in config:
            stripped = line.strip()
            if not stripped or stripped.startswith("#"):
                continue
            if not line.startswith((" ", "\t")):
                in_list = stripped in ("allow_licenses:", "allow-licenses:")
            elif in_list and stripped.startswith("- "):
                licenses.append(stripped[2:].strip().strip("\"'"))
    return licenses


def exemptable(changes, allowed):
    """Names whose every added change carries an allowed license, mis-cased.

    A name is returned only if nothing else about it is in question, because
    the action matches an exemption by name, case-insensitively and ignoring
    the version: exempting one change exempts every change whose name folds to
    the same string.
    """
    casing, suspect = {}, set()
    for change in changes:
        if not isinstance(change, dict):
            print("::warning::skipping a dependency change that is not an object")
            continue
        if change.get("change_type") != "added":
            continue
        if (change.get("ecosystem") or "").lower() != "pub":
            continue
        name = change.get("name")
        spdx = change.get("license")
        if not isinstance(name, str) or not NAME.match(name.lower()):
            print(f"::warning::leaving the pub package named {name!r} to dependency review")
            continue
        name = name.lower()
        canonical = allowed.get(spdx.lower()) if isinstance(spdx, str) else None
        if canonical is None:
            suspect.add(name)
        elif canonical != spdx:
            casing.setdefault(name, (spdx, canonical))
    for name in sorted(suspect & set(casing)):
        print(f"::warning::pub/{name} also appears under a license the policy "
              "does not allow, so it is left for dependency review")
    for name in sorted(suspect - set(casing)):
        print(f"::warning::pub/{name} reports a license that is not allowed "
              "under any capitalisation; leaving it for dependency review")
    return {n: v for n, v in casing.items() if n not in suspect}


def main():
    config_path, changes_path, purls_path = sys.argv[1:4]
    try:
        licenses = allow_licenses(config_path)
    except OSError as error:
        print(f"::warning::could not read {config_path}: {error}")
        licenses = []
    # Expressions are dropped because dependency review drops them too, so
    # treating one as policy here could exempt a package it would reject.
    allowed = {
        spdx.lower(): spdx
        for spdx in licenses
        if " AND " not in spdx and " OR " not in spdx
    }
    exempt = {}
    if not allowed:
        print(f"::warning::found no allow_licenses in {config_path}")
    else:
        try:
            with open(changes_path) as handle:
                changes = json.load(handle)
            if not isinstance(changes, list):
                raise ValueError(f"expected a list, got {type(changes).__name__}")
            # `gh api --paginate --slurp` wraps each page in its own list.
            if changes and all(isinstance(page, list) for page in changes):
                changes = [change for page in changes for change in page]
        except (ValueError, OSError) as error:
            print(f"::warning::could not read the dependency changes: {error}")
            changes = []
        exempt = exemptable(changes, allowed)

    for name, (spdx, canonical) in sorted(exempt.items()):
        print(f"pub/{name}: {spdx} is {canonical} with SPDX casing, which is allowed")
    with open(purls_path, "w") as purls:
        purls.write(",".join(f"pkg:pub/{name}" for name in sorted(exempt)))
    return 0


if __name__ == "__main__":
    sys.exit(main())
