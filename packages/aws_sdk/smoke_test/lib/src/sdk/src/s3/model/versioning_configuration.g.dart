// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'versioning_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VersioningConfiguration extends VersioningConfiguration {
  @override
  final MfaDelete? mfaDelete;
  @override
  final BucketVersioningStatus? status;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, mfaDelete.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VersioningConfigurationBuilder
    implements
        Builder<VersioningConfiguration, VersioningConfigurationBuilder> {
  _$VersioningConfiguration? _$v;

  MfaDelete? _mfaDelete;
  MfaDelete? get mfaDelete => _$this._mfaDelete;
  set mfaDelete(MfaDelete? mfaDelete) => _$this._mfaDelete = mfaDelete;

  BucketVersioningStatus? _status;
  BucketVersioningStatus? get status => _$this._status;
  set status(BucketVersioningStatus? status) => _$this._status = status;

  VersioningConfigurationBuilder();

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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
