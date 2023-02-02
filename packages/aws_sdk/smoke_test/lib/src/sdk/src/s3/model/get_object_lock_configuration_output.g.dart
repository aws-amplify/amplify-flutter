// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_object_lock_configuration_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetObjectLockConfigurationOutput
    extends GetObjectLockConfigurationOutput {
  @override
  final _i3.ObjectLockConfiguration? objectLockConfiguration;

  factory _$GetObjectLockConfigurationOutput(
          [void Function(GetObjectLockConfigurationOutputBuilder)? updates]) =>
      (new GetObjectLockConfigurationOutputBuilder()..update(updates))._build();

  _$GetObjectLockConfigurationOutput._({this.objectLockConfiguration})
      : super._();

  @override
  GetObjectLockConfigurationOutput rebuild(
          void Function(GetObjectLockConfigurationOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectLockConfigurationOutputBuilder toBuilder() =>
      new GetObjectLockConfigurationOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectLockConfigurationOutput &&
        objectLockConfiguration == other.objectLockConfiguration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, objectLockConfiguration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetObjectLockConfigurationOutputBuilder
    implements
        Builder<GetObjectLockConfigurationOutput,
            GetObjectLockConfigurationOutputBuilder> {
  _$GetObjectLockConfigurationOutput? _$v;

  _i3.ObjectLockConfigurationBuilder? _objectLockConfiguration;
  _i3.ObjectLockConfigurationBuilder get objectLockConfiguration =>
      _$this._objectLockConfiguration ??=
          new _i3.ObjectLockConfigurationBuilder();
  set objectLockConfiguration(
          _i3.ObjectLockConfigurationBuilder? objectLockConfiguration) =>
      _$this._objectLockConfiguration = objectLockConfiguration;

  GetObjectLockConfigurationOutputBuilder() {
    GetObjectLockConfigurationOutput._init(this);
  }

  GetObjectLockConfigurationOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _objectLockConfiguration = $v.objectLockConfiguration?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetObjectLockConfigurationOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectLockConfigurationOutput;
  }

  @override
  void update(void Function(GetObjectLockConfigurationOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectLockConfigurationOutput build() => _build();

  _$GetObjectLockConfigurationOutput _build() {
    _$GetObjectLockConfigurationOutput _$result;
    try {
      _$result = _$v ??
          new _$GetObjectLockConfigurationOutput._(
              objectLockConfiguration: _objectLockConfiguration?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'objectLockConfiguration';
        _objectLockConfiguration?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetObjectLockConfigurationOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
