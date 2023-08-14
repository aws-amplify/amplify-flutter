// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_interface_count_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NetworkInterfaceCountRequest extends NetworkInterfaceCountRequest {
  @override
  final int min;
  @override
  final int max;

  factory _$NetworkInterfaceCountRequest(
          [void Function(NetworkInterfaceCountRequestBuilder)? updates]) =>
      (new NetworkInterfaceCountRequestBuilder()..update(updates))._build();

  _$NetworkInterfaceCountRequest._({required this.min, required this.max})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        min, r'NetworkInterfaceCountRequest', 'min');
    BuiltValueNullFieldError.checkNotNull(
        max, r'NetworkInterfaceCountRequest', 'max');
  }

  @override
  NetworkInterfaceCountRequest rebuild(
          void Function(NetworkInterfaceCountRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetworkInterfaceCountRequestBuilder toBuilder() =>
      new NetworkInterfaceCountRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetworkInterfaceCountRequest &&
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

class NetworkInterfaceCountRequestBuilder
    implements
        Builder<NetworkInterfaceCountRequest,
            NetworkInterfaceCountRequestBuilder> {
  _$NetworkInterfaceCountRequest? _$v;

  int? _min;
  int? get min => _$this._min;
  set min(int? min) => _$this._min = min;

  int? _max;
  int? get max => _$this._max;
  set max(int? max) => _$this._max = max;

  NetworkInterfaceCountRequestBuilder() {
    NetworkInterfaceCountRequest._init(this);
  }

  NetworkInterfaceCountRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _min = $v.min;
      _max = $v.max;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetworkInterfaceCountRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NetworkInterfaceCountRequest;
  }

  @override
  void update(void Function(NetworkInterfaceCountRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NetworkInterfaceCountRequest build() => _build();

  _$NetworkInterfaceCountRequest _build() {
    final _$result = _$v ??
        new _$NetworkInterfaceCountRequest._(
            min: BuiltValueNullFieldError.checkNotNull(
                min, r'NetworkInterfaceCountRequest', 'min'),
            max: BuiltValueNullFieldError.checkNotNull(
                max, r'NetworkInterfaceCountRequest', 'max'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
