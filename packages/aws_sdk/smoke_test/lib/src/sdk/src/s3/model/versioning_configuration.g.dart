// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.versioning_configuration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VersioningConfiguration extends VersioningConfiguration {
  @override
  final _i2.MfaDelete? mfaDelete;
  @override
  final _i3.BucketVersioningStatus? status;

  factory _$VersioningConfiguration(
          [void Function(VersioningConfigurationBuilder)? updates]) =>
      (new VersioningConfigurationBuilder()..update(updates))._build();

  _$VersioningConfiguration._({this.mfaDelete, this.status}) : super._();

  @override
  VersioningConfiguration rebuild(
          void Function(VersioningConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VersioningConfigurationBuilder toBuilder() =>
      new VersioningConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VersioningConfiguration &&
        mfaDelete == other.mfaDelete &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, mfaDelete.hashCode), status.hashCode));
  }
}

class VersioningConfigurationBuilder
    implements
        Builder<VersioningConfiguration, VersioningConfigurationBuilder> {
  _$VersioningConfiguration? _$v;

  _i2.MfaDelete? _mfaDelete;
  _i2.MfaDelete? get mfaDelete => _$this._mfaDelete;
  set mfaDelete(_i2.MfaDelete? mfaDelete) => _$this._mfaDelete = mfaDelete;

  _i3.BucketVersioningStatus? _status;
  _i3.BucketVersioningStatus? get status => _$this._status;
  set status(_i3.BucketVersioningStatus? status) => _$this._status = status;

  VersioningConfigurationBuilder() {
    VersioningConfiguration._init(this);
  }

  VersioningConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mfaDelete = $v.mfaDelete;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VersioningConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VersioningConfiguration;
  }

  @override
  void update(void Function(VersioningConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VersioningConfiguration build() => _build();

  _$VersioningConfiguration _build() {
    final _$result = _$v ??
        new _$VersioningConfiguration._(mfaDelete: mfaDelete, status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
