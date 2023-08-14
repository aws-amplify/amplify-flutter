// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_interface_count.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NetworkInterfaceCount extends NetworkInterfaceCount {
  @override
  final int min;
  @override
  final int max;

  factory _$NetworkInterfaceCount(
          [void Function(NetworkInterfaceCountBuilder)? updates]) =>
      (new NetworkInterfaceCountBuilder()..update(updates))._build();

  _$NetworkInterfaceCount._({required this.min, required this.max})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(min, r'NetworkInterfaceCount', 'min');
    BuiltValueNullFieldError.checkNotNull(max, r'NetworkInterfaceCount', 'max');
  }

  @override
  NetworkInterfaceCount rebuild(
          void Function(NetworkInterfaceCountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetworkInterfaceCountBuilder toBuilder() =>
      new NetworkInterfaceCountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetworkInterfaceCount &&
        min == other.min &&
        max == other.max;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, min.hashCode);
    _$hash = $jc(_$hash, max.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NetworkInterfaceCountBuilder
    implements Builder<NetworkInterfaceCount, NetworkInterfaceCountBuilder> {
  _$NetworkInterfaceCount? _$v;

  int? _min;
  int? get min => _$this._min;
  set min(int? min) => _$this._min = min;

  int? _max;
  int? get max => _$this._max;
  set max(int? max) => _$this._max = max;

  NetworkInterfaceCountBuilder() {
    NetworkInterfaceCount._init(this);
  }

  NetworkInterfaceCountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _min = $v.min;
      _max = $v.max;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetworkInterfaceCount other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NetworkInterfaceCount;
  }

  @override
  void update(void Function(NetworkInterfaceCountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NetworkInterfaceCount build() => _build();

  _$NetworkInterfaceCount _build() {
    final _$result = _$v ??
        new _$NetworkInterfaceCount._(
            min: BuiltValueNullFieldError.checkNotNull(
                min, r'NetworkInterfaceCount', 'min'),
            max: BuiltValueNullFieldError.checkNotNull(
                max, r'NetworkInterfaceCount', 'max'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
