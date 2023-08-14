// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_instance_metadata_options_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyInstanceMetadataOptionsResult
    extends ModifyInstanceMetadataOptionsResult {
  @override
  final String? instanceId;
  @override
  final InstanceMetadataOptionsResponse? instanceMetadataOptions;

  factory _$ModifyInstanceMetadataOptionsResult(
          [void Function(ModifyInstanceMetadataOptionsResultBuilder)?
              updates]) =>
      (new ModifyInstanceMetadataOptionsResultBuilder()..update(updates))
          ._build();

  _$ModifyInstanceMetadataOptionsResult._(
      {this.instanceId, this.instanceMetadataOptions})
      : super._();

  @override
  ModifyInstanceMetadataOptionsResult rebuild(
          void Function(ModifyInstanceMetadataOptionsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyInstanceMetadataOptionsResultBuilder toBuilder() =>
      new ModifyInstanceMetadataOptionsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyInstanceMetadataOptionsResult &&
        instanceId == other.instanceId &&
        instanceMetadataOptions == other.instanceMetadataOptions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, instanceMetadataOptions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyInstanceMetadataOptionsResultBuilder
    implements
        Builder<ModifyInstanceMetadataOptionsResult,
            ModifyInstanceMetadataOptionsResultBuilder> {
  _$ModifyInstanceMetadataOptionsResult? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  InstanceMetadataOptionsResponseBuilder? _instanceMetadataOptions;
  InstanceMetadataOptionsResponseBuilder get instanceMetadataOptions =>
      _$this._instanceMetadataOptions ??=
          new InstanceMetadataOptionsResponseBuilder();
  set instanceMetadataOptions(
          InstanceMetadataOptionsResponseBuilder? instanceMetadataOptions) =>
      _$this._instanceMetadataOptions = instanceMetadataOptions;

  ModifyInstanceMetadataOptionsResultBuilder();

  ModifyInstanceMetadataOptionsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _instanceMetadataOptions = $v.instanceMetadataOptions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyInstanceMetadataOptionsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyInstanceMetadataOptionsResult;
  }

  @override
  void update(
      void Function(ModifyInstanceMetadataOptionsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyInstanceMetadataOptionsResult build() => _build();

  _$ModifyInstanceMetadataOptionsResult _build() {
    _$ModifyInstanceMetadataOptionsResult _$result;
    try {
      _$result = _$v ??
          new _$ModifyInstanceMetadataOptionsResult._(
              instanceId: instanceId,
              instanceMetadataOptions: _instanceMetadataOptions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceMetadataOptions';
        _instanceMetadataOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyInstanceMetadataOptionsResult',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
