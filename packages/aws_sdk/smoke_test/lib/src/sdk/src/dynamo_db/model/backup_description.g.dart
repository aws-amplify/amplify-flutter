// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.backup_description;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BackupDescription extends BackupDescription {
  @override
  final _i2.BackupDetails? backupDetails;
  @override
  final _i3.SourceTableDetails? sourceTableDetails;
  @override
  final _i4.SourceTableFeatureDetails? sourceTableFeatureDetails;

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
    return $jf($jc(
        $jc($jc(0, backupDetails.hashCode), sourceTableDetails.hashCode),
        sourceTableFeatureDetails.hashCode));
  }
}

class BackupDescriptionBuilder
    implements Builder<BackupDescription, BackupDescriptionBuilder> {
  _$BackupDescription? _$v;

  _i2.BackupDetailsBuilder? _backupDetails;
  _i2.BackupDetailsBuilder get backupDetails =>
      _$this._backupDetails ??= new _i2.BackupDetailsBuilder();
  set backupDetails(_i2.BackupDetailsBuilder? backupDetails) =>
      _$this._backupDetails = backupDetails;

  _i3.SourceTableDetailsBuilder? _sourceTableDetails;
  _i3.SourceTableDetailsBuilder get sourceTableDetails =>
      _$this._sourceTableDetails ??= new _i3.SourceTableDetailsBuilder();
  set sourceTableDetails(_i3.SourceTableDetailsBuilder? sourceTableDetails) =>
      _$this._sourceTableDetails = sourceTableDetails;

  _i4.SourceTableFeatureDetailsBuilder? _sourceTableFeatureDetails;
  _i4.SourceTableFeatureDetailsBuilder get sourceTableFeatureDetails =>
      _$this._sourceTableFeatureDetails ??=
          new _i4.SourceTableFeatureDetailsBuilder();
  set sourceTableFeatureDetails(
          _i4.SourceTableFeatureDetailsBuilder? sourceTableFeatureDetails) =>
      _$this._sourceTableFeatureDetails = sourceTableFeatureDetails;

  BackupDescriptionBuilder() {
    BackupDescription._init(this);
  }

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
