// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_volume_attribute_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVolumeAttributeRequest extends ModifyVolumeAttributeRequest {
  @override
  final AttributeBooleanValue? autoEnableIo;
  @override
  final String? volumeId;
  @override
  final bool dryRun;

  factory _$ModifyVolumeAttributeRequest(
          [void Function(ModifyVolumeAttributeRequestBuilder)? updates]) =>
      (new ModifyVolumeAttributeRequestBuilder()..update(updates))._build();

  _$ModifyVolumeAttributeRequest._(
      {this.autoEnableIo, this.volumeId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyVolumeAttributeRequest', 'dryRun');
  }

  @override
  ModifyVolumeAttributeRequest rebuild(
          void Function(ModifyVolumeAttributeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVolumeAttributeRequestBuilder toBuilder() =>
      new ModifyVolumeAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVolumeAttributeRequest &&
        autoEnableIo == other.autoEnableIo &&
        volumeId == other.volumeId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, autoEnableIo.hashCode);
    _$hash = $jc(_$hash, volumeId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVolumeAttributeRequestBuilder
    implements
        Builder<ModifyVolumeAttributeRequest,
            ModifyVolumeAttributeRequestBuilder> {
  _$ModifyVolumeAttributeRequest? _$v;

  AttributeBooleanValueBuilder? _autoEnableIo;
  AttributeBooleanValueBuilder get autoEnableIo =>
      _$this._autoEnableIo ??= new AttributeBooleanValueBuilder();
  set autoEnableIo(AttributeBooleanValueBuilder? autoEnableIo) =>
      _$this._autoEnableIo = autoEnableIo;

  String? _volumeId;
  String? get volumeId => _$this._volumeId;
  set volumeId(String? volumeId) => _$this._volumeId = volumeId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ModifyVolumeAttributeRequestBuilder() {
    ModifyVolumeAttributeRequest._init(this);
  }

  ModifyVolumeAttributeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _autoEnableIo = $v.autoEnableIo?.toBuilder();
      _volumeId = $v.volumeId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVolumeAttributeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVolumeAttributeRequest;
  }

  @override
  void update(void Function(ModifyVolumeAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVolumeAttributeRequest build() => _build();

  _$ModifyVolumeAttributeRequest _build() {
    _$ModifyVolumeAttributeRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyVolumeAttributeRequest._(
              autoEnableIo: _autoEnableIo?.build(),
              volumeId: volumeId,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ModifyVolumeAttributeRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'autoEnableIo';
        _autoEnableIo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyVolumeAttributeRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
