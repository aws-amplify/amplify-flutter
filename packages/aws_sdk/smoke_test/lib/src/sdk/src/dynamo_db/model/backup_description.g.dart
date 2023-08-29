// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backup_description.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BackupDescription extends BackupDescription {
  @override
  final BackupDetails? backupDetails;
  @override
  final SourceTableDetails? sourceTableDetails;
  @override
  final SourceTableFeatureDetails? sourceTableFeatureDetails;

  factory _$BackupDescription(
          [void Function(BackupDescriptionBuilder)? updates]) =>
      (new BackupDescriptionBuilder()..update(updates))._build();

  _$BackupDescription._(
      {this.backupDetails,
      this.sourceTableDetails,
      this.sourceTableFeatureDetails})
      : super._();

  @override
  BackupDescription rebuild(void Function(BackupDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BackupDescriptionBuilder toBuilder() =>
      new BackupDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BackupDescription &&
        backupDetails == other.backupDetails &&
        sourceTableDetails == other.sourceTableDetails &&
        sourceTableFeatureDetails == other.sourceTableFeatureDetails;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, backupDetails.hashCode);
    _$hash = $jc(_$hash, sourceTableDetails.hashCode);
    _$hash = $jc(_$hash, sourceTableFeatureDetails.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class BackupDescriptionBuilder
    implements Builder<BackupDescription, BackupDescriptionBuilder> {
  _$BackupDescription? _$v;

  BackupDetailsBuilder? _backupDetails;
  BackupDetailsBuilder get backupDetails =>
      _$this._backupDetails ??= new BackupDetailsBuilder();
  set backupDetails(BackupDetailsBuilder? backupDetails) =>
      _$this._backupDetails = backupDetails;

  SourceTableDetailsBuilder? _sourceTableDetails;
  SourceTableDetailsBuilder get sourceTableDetails =>
      _$this._sourceTableDetails ??= new SourceTableDetailsBuilder();
  set sourceTableDetails(SourceTableDetailsBuilder? sourceTableDetails) =>
      _$this._sourceTableDetails = sourceTableDetails;

  SourceTableFeatureDetailsBuilder? _sourceTableFeatureDetails;
  SourceTableFeatureDetailsBuilder get sourceTableFeatureDetails =>
      _$this._sourceTableFeatureDetails ??=
          new SourceTableFeatureDetailsBuilder();
  set sourceTableFeatureDetails(
          SourceTableFeatureDetailsBuilder? sourceTableFeatureDetails) =>
      _$this._sourceTableFeatureDetails = sourceTableFeatureDetails;

  BackupDescriptionBuilder();

  BackupDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _backupDetails = $v.backupDetails?.toBuilder();
      _sourceTableDetails = $v.sourceTableDetails?.toBuilder();
      _sourceTableFeatureDetails = $v.sourceTableFeatureDetails?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BackupDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BackupDescription;
  }

  @override
  void update(void Function(BackupDescriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BackupDescription build() => _build();

  _$BackupDescription _build() {
    _$BackupDescription _$result;
    try {
      _$result = _$v ??
          new _$BackupDescription._(
              backupDetails: _backupDetails?.build(),
              sourceTableDetails: _sourceTableDetails?.build(),
              sourceTableFeatureDetails: _sourceTableFeatureDetails?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'backupDetails';
        _backupDetails?.build();
        _$failedField = 'sourceTableDetails';
        _sourceTableDetails?.build();
        _$failedField = 'sourceTableFeatureDetails';
        _sourceTableFeatureDetails?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BackupDescription', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
