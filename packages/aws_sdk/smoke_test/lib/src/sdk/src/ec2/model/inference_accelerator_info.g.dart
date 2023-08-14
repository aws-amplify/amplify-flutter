// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inference_accelerator_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InferenceAcceleratorInfo extends InferenceAcceleratorInfo {
  @override
  final _i2.BuiltList<InferenceDeviceInfo>? accelerators;
  @override
  final int? totalInferenceMemoryInMib;

  factory _$InferenceAcceleratorInfo(
          [void Function(InferenceAcceleratorInfoBuilder)? updates]) =>
      (new InferenceAcceleratorInfoBuilder()..update(updates))._build();

  _$InferenceAcceleratorInfo._(
      {this.accelerators, this.totalInferenceMemoryInMib})
      : super._();

  @override
  InferenceAcceleratorInfo rebuild(
          void Function(InferenceAcceleratorInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InferenceAcceleratorInfoBuilder toBuilder() =>
      new InferenceAcceleratorInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InferenceAcceleratorInfo &&
        accelerators == other.accelerators &&
        totalInferenceMemoryInMib == other.totalInferenceMemoryInMib;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accelerators.hashCode);
    _$hash = $jc(_$hash, totalInferenceMemoryInMib.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InferenceAcceleratorInfoBuilder
    implements
        Builder<InferenceAcceleratorInfo, InferenceAcceleratorInfoBuilder> {
  _$InferenceAcceleratorInfo? _$v;

  _i2.ListBuilder<InferenceDeviceInfo>? _accelerators;
  _i2.ListBuilder<InferenceDeviceInfo> get accelerators =>
      _$this._accelerators ??= new _i2.ListBuilder<InferenceDeviceInfo>();
  set accelerators(_i2.ListBuilder<InferenceDeviceInfo>? accelerators) =>
      _$this._accelerators = accelerators;

  int? _totalInferenceMemoryInMib;
  int? get totalInferenceMemoryInMib => _$this._totalInferenceMemoryInMib;
  set totalInferenceMemoryInMib(int? totalInferenceMemoryInMib) =>
      _$this._totalInferenceMemoryInMib = totalInferenceMemoryInMib;

  InferenceAcceleratorInfoBuilder();

  InferenceAcceleratorInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accelerators = $v.accelerators?.toBuilder();
      _totalInferenceMemoryInMib = $v.totalInferenceMemoryInMib;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InferenceAcceleratorInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InferenceAcceleratorInfo;
  }

  @override
  void update(void Function(InferenceAcceleratorInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InferenceAcceleratorInfo build() => _build();

  _$InferenceAcceleratorInfo _build() {
    _$InferenceAcceleratorInfo _$result;
    try {
      _$result = _$v ??
          new _$InferenceAcceleratorInfo._(
              accelerators: _accelerators?.build(),
              totalInferenceMemoryInMib: totalInferenceMemoryInMib);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accelerators';
        _accelerators?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InferenceAcceleratorInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
