// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:aws_common/src/config/config_file/resolved_file.dart';
import 'package:aws_common/src/config/config_file/standardizer.dart';
import 'package:aws_common/src/config/config_file/terms.dart';
import 'package:meta/meta.dart';

/// {@template aws_common.aws_profile_file_parser}
/// Handles parsing of an AWS profile file.
/// {@endtemplate}
@internal
class AWSProfileFileParser {
  /// {@macro aws_common.aws_profile_file_parser}
  AWSProfileFileParser(this._resolvedFile);

  static final _logger = AWSLogger('AWSProfileFileParser');
  static final _cache = <ResolvedFile, AWSProfileFile>{};
  static const _standardizer = AWSProfileFileStandardizer();

  final ResolvedFile _resolvedFile;
  String? get _filepath => _resolvedFile.filepath;

  /// The curerent line in [_resolvedFile] being parsed.
  var _currentLine = -1;

  /// The profile file being built from [_resolvedFile].
  late AWSProfileFileBuilder _configFileBuilder;

  /// The current profile being parsed, if any.
  AWSProfileBuilder? _currentProfile;

  /// The current property of [_currentProfile] being parsed, if any.
  String? _currentProperty;

  void _finishProfile() {
    if (_currentProfile != null) {
      final profile = _currentProfile!.build();
      _configFileBuilder.profiles[profile.name] = profile;
      _currentProfile = null;
    }
    _currentProperty = null;
  }

  // Initiates a profile into [currentProfile].
  //
  // ProfileLine = [ Whitespace? Identifier Whitespace? ] Whitespace? ([;#] Value?)?
  void _readProfileLine(String line) {
    _finishProfile();

    line = line.trimAllComments().trim();
    if (!line.endsWith(']')) {
      throw AWSProfileFileException(
        "Profile definition must end with ']'",
        filepath: _filepath,
        line: line,
        lineNo: _currentLine,
      );
    }
    final profileName = line.replaceAll(brackets, '').trim();
    _currentProfile = _configFileBuilder
            .build()
            .profiles[profileName]
            ?.toBuilder() ??
        AWSProfileBuilder()
      ..name = profileName;
  }

  AWSProperty _parseProperty(String propertyDefinition) {
    final isSubproperty = _currentProperty != null;
    final separatorIndex = propertyDefinition.indexOf('=');
    if (separatorIndex == -1) {
      throw AWSProfileFileException(
        "Expected an '=' sign defining a "
        "${isSubproperty ? 'sub-property' : 'property'}",
        filepath: _filepath,
        line: propertyDefinition,
        lineNo: _currentLine,
      );
    }
    final propertyName = propertyDefinition.substring(0, separatorIndex).trim();
    if (propertyName.isEmpty) {
      throw AWSProfileFileException(
        '${isSubproperty ? 'Sub-property' : 'Property'} '
        'did not have a name',
        filepath: _filepath,
        line: propertyDefinition,
        lineNo: _currentLine,
      );
    }
    return AWSProperty(
      name: propertyName,
      value: propertyDefinition
          .substring(separatorIndex + 1)
          .trimTrailingComments()
          .trim(),
    );
  }

  /// PropertyDefinition = Identifier Whitespace? = Whitespace? Value Whitespace? (Whitespace [;#] Value?)?
  void _readPropertyDefinitionLine(String line) {
    final currentProfile = _currentProfile;
    if (currentProfile == null) {
      throw AWSProfileFileException(
        'Expected a profile definition',
        filepath: _filepath,
        line: line,
        lineNo: _currentLine,
      );
    }
    final newProperty = _parseProperty(line);
    final propertyName = newProperty.name;
    _currentProperty = propertyName;
    currentProfile.properties.updateValue(
      propertyName,
      (existing) {
        _logger.warn(
          'Duplicate property `$propertyName` detected in profile '
          '`${_currentProfile!.name}. The later one will be used.',
        );
        return newProperty;
      },
      ifAbsent: () => newProperty,
    );
  }

  /// PropertyContinuation = Whitespace Value
  void _readPropertyContinuationLine(String line) {
    final currentProfile = _currentProfile;
    if (currentProfile == null) {
      throw AWSProfileFileException(
        'Expected a profile definition',
        filepath: _filepath,
        line: line,
        lineNo: _currentLine,
      );
    }
    final currentProperty = _currentProperty;
    if (currentProperty == null) {
      throw AWSProfileFileException(
        'Expected a property definition, found continuation',
        filepath: _filepath,
        line: line,
        lineNo: _currentLine,
      );
    }
    currentProfile.properties.updateValue(
      currentProperty,
      (property) => property.rebuild((p) {
        final currentValue = p.value;
        if (currentValue == null || currentValue.isEmpty) {
          final subproperty = _parseProperty(line);
          final subpropertyName = subproperty.name;
          p.subProperties[subpropertyName] = subproperty;
        } else {
          // Continuation values contain comments
          line = line.trim();
          p.value = '${p.value}\n$line';
        }
      }),
      ifAbsent: () {
        throw AWSProfileFileException(
          'Expected a property definition',
          filepath: _filepath,
          line: line,
          lineNo: _currentLine,
        );
      },
    );
  }

  /// Loads the AWS configuration file.
  AWSProfileFile parse() {
    final cached = _cache[_resolvedFile];
    if (cached != null) {
      return cached;
    }

    _configFileBuilder = AWSProfileFileBuilder();
    _currentLine = -1;
    _currentProfile = null;
    _currentProperty = null;

    for (final line in _resolvedFile.contents.split(lineBreakExp)) {
      _currentLine++;
      if (line.trim().isEmpty || _isCommentLine(line)) {
        continue;
      }
      if (_isProfileLine(line)) {
        _readProfileLine(line);
      } else if (_isPropertyContinuationLine(line)) {
        _readPropertyContinuationLine(line);
      } else {
        _readPropertyDefinitionLine(line);
      }
    }

    _finishProfile();
    return _cache[_resolvedFile] = _standardizer
        .standardize(_configFileBuilder, _resolvedFile.type)
        .build();
  }

  bool _isCommentLine(String line) =>
      line.startsWith('#') || line.startsWith(';');

  bool _isProfileLine(String line) => line.startsWith('[');

  bool _isPropertyContinuationLine(String line) =>
      line.startsWith(' ') || line.startsWith('\t');
}

extension on String {
  /// Trims all adjacent and trailing comments.
  String trimAllComments() {
    final commentIndex = indexOf(commentExp);
    if (commentIndex != -1) {
      return substring(0, commentIndex);
    }
    return this;
  }

  /// Trims only trailing comments, e.g. `value; Comment` would not be trimmed
  /// whereas `value ; Comment` would.
  String trimTrailingComments() {
    final commentIndex = indexOf(trailingCommentExp);
    if (commentIndex != -1) {
      return substring(0, commentIndex);
    }
    return this;
  }
}

/// {@template aws_common.config_file.aws_config_file_exception}
/// Exception thrown during parsing of an AWS profile file.
/// {@endtemplate}
class AWSProfileFileException implements Exception {
  /// {@macro aws_common.config_file.aws_config_file_exception}
  const AWSProfileFileException(
    this.message, {
    this.filepath,
    required this.line,
    required this.lineNo,
  });

  /// The error message.
  final String message;

  /// The file being parsed.
  final String? filepath;

  /// The line being parsed.
  final String line;

  /// The line number being parsed.
  final int lineNo;

  @override
  String toString() =>
      'Error parsing ${filepath ?? 'file'} (line $lineNo): $line. $message.';
}
