#!/usr/bin/env python3
# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

"""Tests for pub_license_casing, run by the Dependency Review workflow."""
import json
import pathlib
import subprocess
import sys
import tempfile
import unittest

HERE = pathlib.Path(__file__).resolve().parent
SCRIPT = HERE / "pub_license_casing.py"
POLICY = HERE.parent / ".github" / "dependency-review-config.yml"
# The policy-dependent cases run against a fixture, so editing the real
# allow list cannot turn this test, and therefore the gate, red.
FIXTURE = 'allow_licenses:\n  - "MIT"\n  - "Apache-2.0"\n  - "curl"\n  - "MITNFA"\n  - "MIT AND MITNFA"\n'


def change(name, spdx, version="1.0.0", ecosystem="PUB", change_type="added"):
    return {
        "change_type": change_type,
        "manifest": "pubspec.yaml",
        "ecosystem": ecosystem,
        "name": name,
        "version": version,
        "package_url": f"pkg:{ecosystem.lower()}/{name}",
        "license": spdx,
        "source_repository_url": None,
        "scope": "runtime",
        "vulnerabilities": [],
    }


class PubLicenseCasing(unittest.TestCase):
    def run_script(self, changes, config=None, raw_path=False):
        with tempfile.TemporaryDirectory() as tmp:
            tmp = pathlib.Path(tmp)
            changes_path = pathlib.Path(changes) if raw_path else tmp / "changes.json"
            if raw_path:
                self.assertFalse(changes_path.exists())
            elif isinstance(changes, str):
                changes_path.write_text(changes)
            else:
                changes_path.write_text(json.dumps(changes))
            purls_path = tmp / "purls.txt"
            if config is None:
                config = tmp / "policy.yml"
                config.write_text(FIXTURE)
            done = subprocess.run(
                [sys.executable, str(SCRIPT), str(config),
                 str(changes_path), str(purls_path)],
                capture_output=True, text=True, check=False,
            )
            self.assertEqual(done.returncode, 0, done.stderr)
            return purls_path.read_text(), done.stdout

    def test_exempts_a_mis_cased_allowed_license(self):
        purls, out = self.run_script([change("os_detect", "mit")])
        self.assertEqual(purls, "pkg:pub/os_detect")
        self.assertIn("mit is MIT with SPDX casing", out)

    def test_the_real_policy_parses(self):
        """The only case that touches the committed allow list. It asserts a
        known entry resolves, so a silently truncated parse fails here."""
        purls, out = self.run_script([change("os_detect", "mit")], config=POLICY)
        self.assertEqual(purls, "pkg:pub/os_detect")
        self.assertNotIn("::warning::", out)

    def test_reads_a_policy_with_blank_and_comment_lines(self):
        """The committed policy may gain either without changing meaning."""
        with tempfile.TemporaryDirectory() as tmp:
            config = pathlib.Path(tmp) / "policy.yml"
            config.write_text(
                'allow_licenses:\n  - "MIT"\n\n  # a note\n  - "Apache-2.0"\n'
            )
            purls, _ = self.run_script([change("probe", "apache-2.0")], config=config)
        self.assertEqual(purls, "pkg:pub/probe")

    def test_reads_the_hyphenated_policy_key(self):
        """dependency-review accepts allow-licenses as well as allow_licenses."""
        with tempfile.TemporaryDirectory() as tmp:
            config = pathlib.Path(tmp) / "policy.yml"
            config.write_text('allow-licenses:\n  - "MIT"\n')
            purls, _ = self.run_script([change("probe", "mit")], config=config)
        self.assertEqual(purls, "pkg:pub/probe")

    def test_a_name_in_another_ecosystem_is_left_to_the_review(self):
        """The action compares the purl type first, so exempting a pub package
        says nothing about a same-named package elsewhere."""
        purls, _ = self.run_script(
            [change("yaml", "mit"), change("yaml", "GPL-3.0", ecosystem="npm")]
        )
        self.assertEqual(purls, "pkg:pub/yaml")

    def test_an_upper_case_twin_cannot_be_laundered(self):
        """The action folds case when matching an exemption by name."""
        purls, out = self.run_script(
            [change("evil", "mit"), change("EVIL", "GPL-3.0", version="9.9.9")]
        )
        self.assertEqual(purls, "")
        self.assertIn("also appears under a license", out)

    def test_joins_several_packages_with_commas(self):
        """dependency-review splits the input on commas."""
        purls, out = self.run_script(
            [
                change("beta", "mit"),
                change("alpha", "apache-2.0"),
                change("gamma", "mitnfa"),
            ]
        )
        self.assertEqual(purls, "pkg:pub/alpha,pkg:pub/beta,pkg:pub/gamma")
        self.assertEqual(
            [line.split("/")[1].split(":")[0] for line in out.splitlines()],
            ["alpha", "beta", "gamma"],
        )

    def test_never_exempts_a_license_the_policy_disallows(self):
        for spdx in ["gpl-3.0", "agpl-3.0", "lgpl-3.0-or-later", "mpl-2.0", "nonsense"]:
            purls, out = self.run_script([change("probe", spdx)])
            self.assertEqual(purls, "", spdx)
            self.assertIn("not allowed under any capitalisation", out)

    def test_never_exempts_a_name_that_also_carries_a_disallowed_license(self):
        """One allowed version must not launder another: the action matches an
        exemption by name and ignores the version."""
        pair = [change("dual", "mit"), change("dual", "GPL-3.0", version="9.9.9")]
        for changes in (pair, list(reversed(pair))):
            purls, out = self.run_script(changes)
            self.assertEqual(purls, "")
            self.assertIn("also appears under a license", out)

    def test_skips_a_name_outside_the_pub_charset(self):
        for name in ["ok\npurls=pkg:pub/evil", "a,pkg:pub/evil", "a b", "a-b", "a.b"]:
            purls, out = self.run_script([change(name, "mit")])
            self.assertEqual(purls, "", name)
            self.assertIn("leaving the pub package named", out)

    def test_folds_the_case_of_a_name_it_can_vouch_for(self):
        purls, _ = self.run_script([change("A_B", "mit")])
        self.assertEqual(purls, "pkg:pub/a_b")

    def test_an_exactly_matching_license_does_not_block_a_sibling(self):
        """The policy allows some ids that are lowercase already, e.g. curl."""
        purls, out = self.run_script(
            [change("curly", "curl"), change("curly", "mit", version="2.0.0")]
        )
        self.assertEqual(purls, "pkg:pub/curly")
        self.assertNotIn("::warning::", out)

    def test_reads_the_paginated_shape(self):
        """gh api --paginate --slurp wraps each page in its own list."""
        purls, _ = self.run_script([[change("os_detect", "mit")]])
        self.assertEqual(purls, "pkg:pub/os_detect")

    def test_skips_changes_that_are_not_objects(self):
        purls, out = self.run_script([1, None, "x"])
        self.assertEqual(purls, "")
        self.assertIn("not an object", out)

    def test_skips_changes_whose_name_or_license_is_not_a_string(self):
        for bad in ({"name": 123}, {"license": ["MIT"]}):
            entry = change("probe", "mit")
            entry.update(bad)
            purls, _ = self.run_script([entry])
            self.assertEqual(purls, "", str(bad))

    def test_leaves_every_other_case_alone(self):
        for changes in (
            [change("probe", "MIT")],
            [change("probe", "mit", ecosystem="npm")],
            [change("probe", "mit", change_type="removed")],
            [change("probe", None)],
            [change("probe", "mit and mitnfa")],
            [],
        ):
            purls, _ = self.run_script(changes)
            self.assertEqual(purls, "", str(changes))

    def test_exempts_nothing_when_the_changes_cannot_be_read(self):
        for body in ['{"message": "Bad Request"}', "", "[{"]:
            purls, out = self.run_script(body)
            self.assertEqual(purls, "", body)
            self.assertIn("could not read the dependency changes", out)

    def test_exempts_nothing_when_a_path_is_missing(self):
        """Neither read may fail the pull request on its own."""
        with tempfile.TemporaryDirectory() as tmp:
            absent = pathlib.Path(tmp) / "absent"
            purls, out = self.run_script([], config=absent)
            self.assertEqual(purls, "")
            self.assertIn(f"could not read {absent}", out)

            purls, out = self.run_script(str(absent), raw_path=True)
            self.assertEqual(purls, "")
            self.assertIn("could not read the dependency changes", out)

    def test_exempts_nothing_when_the_policy_cannot_be_parsed(self):
        with tempfile.TemporaryDirectory() as tmp:
            config = pathlib.Path(tmp) / "flow.yml"
            config.write_text('allow_licenses: ["MIT"]\n')
            purls, out = self.run_script([change("probe", "mit")], config=config)
        self.assertEqual(purls, "")
        self.assertIn("found no allow_licenses", out)


if __name__ == "__main__":
    unittest.main()
