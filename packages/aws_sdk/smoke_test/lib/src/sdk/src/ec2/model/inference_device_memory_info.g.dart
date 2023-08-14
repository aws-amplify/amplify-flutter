// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inference_device_memory_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InferenceDeviceMemoryInfo extends InferenceDeviceMemoryInfo {
  @override
  final int? sizeInMib;

  factory _$InferenceDeviceMemoryInfo(
          [void Function(InferenceDeviceMemoryInfoBuilder)? updates]) =>
      (new InferenceDeviceMemoryInfoBuilder()..update(updates))._build();

  _$InferenceDeviceMemoryInfo._({this.sizeInMib}) : super._();

  @override
  InferenceDeviceMemoryInfo rebuild(
          void Function(InferenceDeviceMemoryInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InferenceDeviceMemoryInfoBuilder toBuilder() =>
      new InferenceDeviceMemoryInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InferenceDeviceMemoryInfo && sizeInMib == other.sizeInMib;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sizeInMib.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InferenceDeviceMemoryInfoBuilder
    implements
        Builder<InferenceDeviceMemoryInfo, InferenceDeviceMemoryInfoBuilder> {
  _$InferenceDeviceMemoryInfo? _$v;

  int? _sizeInMib;
  int? get sizeInMib => _$this._sizeInMib;
  set sizeInMib(int? sizeInMib) => _$this._sizeInMib = sizeInMib;

  InferenceDeviceMemoryInfoBuilder();

  InferenceDeviceMemoryInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sizeInMib = $v.sizeInMib;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InferenceDeviceMemoryInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InferenceDeviceMemoryInfo;
  }

  @override
  void update(void Function(InferenceDeviceMemoryInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InferenceDeviceMemoryInfo build() => _build();

  _$InferenceDeviceMemoryInfo _build() {
    final _$result =
        _$v ?? new _$InferenceDeviceMemoryInfo._(sizeInMib: sizeInMib);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
