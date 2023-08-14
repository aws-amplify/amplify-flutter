// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nitro_tpm_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NitroTpmInfo extends NitroTpmInfo {
  @override
  final _i2.BuiltList<String>? supportedVersions;

  factory _$NitroTpmInfo([void Function(NitroTpmInfoBuilder)? updates]) =>
      (new NitroTpmInfoBuilder()..update(updates))._build();

  _$NitroTpmInfo._({this.supportedVersions}) : super._();

  @override
  NitroTpmInfo rebuild(void Function(NitroTpmInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NitroTpmInfoBuilder toBuilder() => new NitroTpmInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NitroTpmInfo &&
        supportedVersions == other.supportedVersions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, supportedVersions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NitroTpmInfoBuilder
    implements Builder<NitroTpmInfo, NitroTpmInfoBuilder> {
  _$NitroTpmInfo? _$v;

  _i2.ListBuilder<String>? _supportedVersions;
  _i2.ListBuilder<String> get supportedVersions =>
      _$this._supportedVersions ??= new _i2.ListBuilder<String>();
  set supportedVersions(_i2.ListBuilder<String>? supportedVersions) =>
      _$this._supportedVersions = supportedVersions;

  NitroTpmInfoBuilder();

  NitroTpmInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _supportedVersions = $v.supportedVersions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NitroTpmInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NitroTpmInfo;
  }

  @override
  void update(void Function(NitroTpmInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NitroTpmInfo build() => _build();

  _$NitroTpmInfo _build() {
    _$NitroTpmInfo _$result;
    try {
      _$result = _$v ??
          new _$NitroTpmInfo._(supportedVersions: _supportedVersions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'supportedVersions';
        _supportedVersions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NitroTpmInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
