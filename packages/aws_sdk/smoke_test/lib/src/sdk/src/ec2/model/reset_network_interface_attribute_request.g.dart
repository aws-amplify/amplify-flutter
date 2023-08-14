// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_network_interface_attribute_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResetNetworkInterfaceAttributeRequest
    extends ResetNetworkInterfaceAttributeRequest {
  @override
  final bool dryRun;
  @override
  final String? networkInterfaceId;
  @override
  final String? sourceDestCheck;

  factory _$ResetNetworkInterfaceAttributeRequest(
          [void Function(ResetNetworkInterfaceAttributeRequestBuilder)?
              updates]) =>
      (new ResetNetworkInterfaceAttributeRequestBuilder()..update(updates))
          ._build();

  _$ResetNetworkInterfaceAttributeRequest._(
      {required this.dryRun, this.networkInterfaceId, this.sourceDestCheck})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ResetNetworkInterfaceAttributeRequest', 'dryRun');
  }

  @override
  ResetNetworkInterfaceAttributeRequest rebuild(
          void Function(ResetNetworkInterfaceAttributeRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResetNetworkInterfaceAttributeRequestBuilder toBuilder() =>
      new ResetNetworkInterfaceAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResetNetworkInterfaceAttributeRequest &&
        dryRun == other.dryRun &&
        networkInterfaceId == other.networkInterfaceId &&
        sourceDestCheck == other.sourceDestCheck;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, sourceDestCheck.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResetNetworkInterfaceAttributeRequestBuilder
    implements
        Builder<ResetNetworkInterfaceAttributeRequest,
            ResetNetworkInterfaceAttributeRequestBuilder> {
  _$ResetNetworkInterfaceAttributeRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  String? _sourceDestCheck;
  String? get sourceDestCheck => _$this._sourceDestCheck;
  set sourceDestCheck(String? sourceDestCheck) =>
      _$this._sourceDestCheck = sourceDestCheck;

  ResetNetworkInterfaceAttributeRequestBuilder() {
    ResetNetworkInterfaceAttributeRequest._init(this);
  }

  ResetNetworkInterfaceAttributeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _networkInterfaceId = $v.networkInterfaceId;
      _sourceDestCheck = $v.sourceDestCheck;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResetNetworkInterfaceAttributeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResetNetworkInterfaceAttributeRequest;
  }

  @override
  void update(
      void Function(ResetNetworkInterfaceAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResetNetworkInterfaceAttributeRequest build() => _build();

  _$ResetNetworkInterfaceAttributeRequest _build() {
    final _$result = _$v ??
        new _$ResetNetworkInterfaceAttributeRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ResetNetworkInterfaceAttributeRequest', 'dryRun'),
            networkInterfaceId: networkInterfaceId,
            sourceDestCheck: sourceDestCheck);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
