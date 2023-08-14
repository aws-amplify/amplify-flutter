// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memory_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MemoryInfo extends MemoryInfo {
  @override
  final _i2.Int64? sizeInMib;

  factory _$MemoryInfo([void Function(MemoryInfoBuilder)? updates]) =>
      (new MemoryInfoBuilder()..update(updates))._build();

  _$MemoryInfo._({this.sizeInMib}) : super._();

  @override
  MemoryInfo rebuild(void Function(MemoryInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MemoryInfoBuilder toBuilder() => new MemoryInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MemoryInfo && sizeInMib == other.sizeInMib;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sizeInMib.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MemoryInfoBuilder implements Builder<MemoryInfo, MemoryInfoBuilder> {
  _$MemoryInfo? _$v;

  _i2.Int64? _sizeInMib;
  _i2.Int64? get sizeInMib => _$this._sizeInMib;
  set sizeInMib(_i2.Int64? sizeInMib) => _$this._sizeInMib = sizeInMib;

  MemoryInfoBuilder();

  MemoryInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sizeInMib = $v.sizeInMib;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MemoryInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MemoryInfo;
  }

  @override
  void update(void Function(MemoryInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MemoryInfo build() => _build();

  _$MemoryInfo _build() {
    final _$result = _$v ?? new _$MemoryInfo._(sizeInMib: sizeInMib);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
