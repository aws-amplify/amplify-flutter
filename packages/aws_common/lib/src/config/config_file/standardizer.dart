// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:aws_common/aws_common.dart';
import 'package:aws_common/src/config/aws_profile_file.dart';
import 'package:aws_common/src/config/config_file/terms.dart';
import 'package:built_collection/built_collection.dart';
import 'package:meta/meta.dart';

/// {@template aws_common.config_file.standardizer}
/// Handles standardization/canonicalization of AWS profile files.
/// {@endtemplate}
@internal
class AWSProfileFileStandardizer {
  /// {@macro aws_common.config_file.standardizer}
  const AWSProfileFileStandardizer();

  static final _logger = AWSLogger('AWSProfileFileStandardizer');

  /// Merges a property with values from the config and credentials files.
  static AWSProperty _mergeProperties(
    AWSProperty configProperty,
    AWSProperty credentialsProperty,
    String profileName,
  ) {
    final propertyName = credentialsProperty.name;
    _logger.warn(
      'Warning: Duplicate property "$propertyName" detected in '
      'profile "$profileName". The credentials file value will be used.',
    );
    return credentialsProperty;
  }

  /// Merges a profile with values from the config and credentials files.
  static AWSProfile _mergeProfiles(
    AWSProfile configProfile,
    AWSProfile credentialsProfile,
  ) {
    final profileName = credentialsProfile.name;
    _logger.warn(
      'Warning: The profile "$profileName" was found in both the '
      'configuration and credentials configuration file. The properties will '
      'be merged using the property in the credentials file if there are '
      'sduplicates.',
    );
    return configProfile.rebuild((p) {
      for (final property in credentialsProfile.properties.entries) {
        final propertyName = property.key;
        final credentialsProperty = property.value;
        p.properties.updateValue(
          propertyName,
          (configProperty) => _mergeProperties(
            configProperty,
            credentialsProperty,
            profileName,
          ),
          ifAbsent: () => credentialsProperty,
        );
      }
    });
  }

  /// Merges the AWS config and shared credentials file into a single profile
  /// mapping.
  static AWSProfileFile merge(
    AWSProfileFile configFile,
    AWSProfileFile credentialsFile,
  ) {
    return configFile.rebuild((config) {
      for (final profile in credentialsFile.profiles.entries) {
        final credentialsProfileName = profile.key;
        final credentialsProfile = profile.value;
        config.profiles.updateValue(
          credentialsProfileName,
          (configProfile) => _mergeProfiles(
            configProfile,
            credentialsProfile,
          ),
          ifAbsent: () => credentialsProfile,
        );
      }
    });
  }

  String? _standardizeProfileName(AWSProfileFileType type, String profileName) {
    if (type == AWSProfileFileType.config) {
      if (profileName.startsWith(profilePrefix)) {
        profileName = profileName.replaceFirst(profilePrefix, '').trim();
      } else if (profileName != 'default') {
        _logger.warn(
          'Ignoring profile "$profileName" because it did not start with '
          'profile and it was not "default".',
        );
        return null;
      }
    }

    if (!validIdentifier.hasMatch(profileName)) {
      _logger.warn(
        'Ignoring profile "$profileName" because it was not '
        'alphanumeric with dashes or underscores.',
      );
      return null;
    }

    return profileName;
  }

  String? _standardizePropertyName(String profileName, String propertyName) {
    if (!validIdentifier.hasMatch(propertyName)) {
      _logger.warn(
        'Ignoring property "$propertyName" in profile "$profileName" because '
        'it was not alphanumeric with dashes or underscores.',
      );
      return null;
    }

    return propertyName;
  }

  BuiltMap<String, AWSProperty> _standardizeProperties(
    String profileName,
    BuiltMap<String, AWSProperty> properties,
  ) {
    return BuiltMap.build((b) {
      for (final property in properties.entries) {
        final propertyName = property.key;
        final standardizedPropertyName = _standardizePropertyName(
          profileName,
          propertyName,
        );
        if (standardizedPropertyName == null) {
          continue;
        }
        b[standardizedPropertyName] = property.value.rebuild(
          // Sub-properties are not standardized and can have invalid names
          (p) => p.name = standardizedPropertyName,
        );
      }
    });
  }

  /// Standardizes [profileFile] by canonicalizing profile/property names and
  /// ignoring invalid ones.
  AWSProfileFileBuilder standardize(
    AWSProfileFileBuilder profileFile,
    AWSProfileFileType type,
  ) {
    // Whether the default profile is prefixed with `profile `.
    var hasDefaultProfileWithPrefix = false;
    final profiles = profileFile.profiles.build();
    profileFile.profiles.update((builder) {
      builder.clear();
      for (final profile in profiles.entries) {
        final profileName = profile.key;
        final standardizedName = _standardizeProfileName(
          type,
          profileName,
        );
        if (standardizedName == null) {
          continue;
        }

        final isDefaultProfile = standardizedName == 'default';
        final profileHasPrefix = profileName.startsWith(profilePrefix);

        if (type == AWSProfileFileType.config && isDefaultProfile) {
          if (!profileHasPrefix && hasDefaultProfileWithPrefix) {
            _logger.warn(
              'Ignoring profile "[default]" because "[profile default]" was '
              'found in the same file.',
            );
            continue;
          }
          if (profileHasPrefix && !hasDefaultProfileWithPrefix) {
            _logger.warn(
              'Dropping earlier-seen "[default]" because "[profile default]" '
              'was found in the same file.',
            );
            builder.remove('default');
          }
        }

        if (isDefaultProfile && profileHasPrefix) {
          hasDefaultProfileWithPrefix = true;
        }

        builder[standardizedName] = profile.value.rebuild(
          (p) => p
            ..name = standardizedName
            ..properties.replace(
              _standardizeProperties(
                standardizedName,
                p.properties.build(),
              ),
            ),
        );
      }
    });
    return profileFile;
  }
}
