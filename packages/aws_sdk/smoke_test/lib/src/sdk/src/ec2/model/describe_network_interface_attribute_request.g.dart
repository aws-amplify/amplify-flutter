// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_network_interface_attribute_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeNetworkInterfaceAttributeRequest
    extends DescribeNetworkInterfaceAttributeRequest {
  @override
  final NetworkInterfaceAttribute? attribute;
  @override
  final bool dryRun;
  @override
  final String? networkInterfaceId;

  factory _$DescribeNetworkInterfaceAttributeRequest(
          [void Function(DescribeNetworkInterfaceAttributeRequestBuilder)?
              updates]) =>
      (new DescribeNetworkInterfaceAttributeRequestBuilder()..update(updates))
          ._build();

  _$DescribeNetworkInterfaceAttributeRequest._(
      {this.attribute, required this.dryRun, this.networkInterfaceId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeNetworkInterfaceAttributeRequest', 'dryRun');
  }

  @override
  DescribeNetworkInterfaceAttributeRequest rebuild(
          void Function(DescribeNetworkInterfaceAttributeRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeNetworkInterfaceAttributeRequestBuilder toBuilder() =>
      new DescribeNetworkInterfaceAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeNetworkInterfaceAttributeRequest &&
        attribute == other.attribute &&
        dryRun == other.dryRun &&
        networkInterfaceId == other.networkInterfaceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attribute.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeNetworkInterfaceAttributeRequestBuilder
    implements
        Builder<DescribeNetworkInterfaceAttributeRequest,
            DescribeNetworkInterfaceAttributeRequestBuilder> {
  _$DescribeNetworkInterfaceAttributeRequest? _$v;

  NetworkInterfaceAttribute? _attribute;
  NetworkInterfaceAttribute? get attribute => _$this._attribute;
  set attribute(NetworkInterfaceAttribute? attribute) =>
      _$this._attribute = attribute;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  DescribeNetworkInterfaceAttributeRequestBuilder() {
    DescribeNetworkInterfaceAttributeRequest._init(this);
  }

  DescribeNetworkInterfaceAttributeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attribute = $v.attribute;
      _dryRun = $v.dryRun;
      _networkInterfaceId = $v.networkInterfaceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeNetworkInterfaceAttributeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeNetworkInterfaceAttributeRequest;
  }

  @override
  void update(
      void Function(DescribeNetworkInterfaceAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeNetworkInterfaceAttributeRequest build() => _build();

  _$DescribeNetworkInterfaceAttributeRequest _build() {
    final _$result = _$v ??
        new _$DescribeNetworkInterfaceAttributeRequest._(
            attribute: attribute,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DescribeNetworkInterfaceAttributeRequest', 'dryRun'),
            networkInterfaceId: networkInterfaceId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
