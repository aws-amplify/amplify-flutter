// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attach_network_interface_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttachNetworkInterfaceRequest extends AttachNetworkInterfaceRequest {
  @override
  final int deviceIndex;
  @override
  final bool dryRun;
  @override
  final String? instanceId;
  @override
  final String? networkInterfaceId;
  @override
  final int networkCardIndex;
  @override
  final EnaSrdSpecification? enaSrdSpecification;

  factory _$AttachNetworkInterfaceRequest(
          [void Function(AttachNetworkInterfaceRequestBuilder)? updates]) =>
      (new AttachNetworkInterfaceRequestBuilder()..update(updates))._build();

  _$AttachNetworkInterfaceRequest._(
      {required this.deviceIndex,
      required this.dryRun,
      this.instanceId,
      this.networkInterfaceId,
      required this.networkCardIndex,
      this.enaSrdSpecification})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        deviceIndex, r'AttachNetworkInterfaceRequest', 'deviceIndex');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'AttachNetworkInterfaceRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        networkCardIndex, r'AttachNetworkInterfaceRequest', 'networkCardIndex');
  }

  @override
  AttachNetworkInterfaceRequest rebuild(
          void Function(AttachNetworkInterfaceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttachNetworkInterfaceRequestBuilder toBuilder() =>
      new AttachNetworkInterfaceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttachNetworkInterfaceRequest &&
        deviceIndex == other.deviceIndex &&
        dryRun == other.dryRun &&
        instanceId == other.instanceId &&
        networkInterfaceId == other.networkInterfaceId &&
        networkCardIndex == other.networkCardIndex &&
        enaSrdSpecification == other.enaSrdSpecification;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceIndex.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, networkCardIndex.hashCode);
    _$hash = $jc(_$hash, enaSrdSpecification.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AttachNetworkInterfaceRequestBuilder
    implements
        Builder<AttachNetworkInterfaceRequest,
            AttachNetworkInterfaceRequestBuilder> {
  _$AttachNetworkInterfaceRequest? _$v;

  int? _deviceIndex;
  int? get deviceIndex => _$this._deviceIndex;
  set deviceIndex(int? deviceIndex) => _$this._deviceIndex = deviceIndex;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  int? _networkCardIndex;
  int? get networkCardIndex => _$this._networkCardIndex;
  set networkCardIndex(int? networkCardIndex) =>
      _$this._networkCardIndex = networkCardIndex;

  EnaSrdSpecificationBuilder? _enaSrdSpecification;
  EnaSrdSpecificationBuilder get enaSrdSpecification =>
      _$this._enaSrdSpecification ??= new EnaSrdSpecificationBuilder();
  set enaSrdSpecification(EnaSrdSpecificationBuilder? enaSrdSpecification) =>
      _$this._enaSrdSpecification = enaSrdSpecification;

  AttachNetworkInterfaceRequestBuilder() {
    AttachNetworkInterfaceRequest._init(this);
  }

  AttachNetworkInterfaceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceIndex = $v.deviceIndex;
      _dryRun = $v.dryRun;
      _instanceId = $v.instanceId;
      _networkInterfaceId = $v.networkInterfaceId;
      _networkCardIndex = $v.networkCardIndex;
      _enaSrdSpecification = $v.enaSrdSpecification?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttachNetworkInterfaceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AttachNetworkInterfaceRequest;
  }

  @override
  void update(void Function(AttachNetworkInterfaceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttachNetworkInterfaceRequest build() => _build();

  _$AttachNetworkInterfaceRequest _build() {
    _$AttachNetworkInterfaceRequest _$result;
    try {
      _$result = _$v ??
          new _$AttachNetworkInterfaceRequest._(
              deviceIndex: BuiltValueNullFieldError.checkNotNull(
                  deviceIndex, r'AttachNetworkInterfaceRequest', 'deviceIndex'),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'AttachNetworkInterfaceRequest', 'dryRun'),
              instanceId: instanceId,
              networkInterfaceId: networkInterfaceId,
              networkCardIndex: BuiltValueNullFieldError.checkNotNull(
                  networkCardIndex,
                  r'AttachNetworkInterfaceRequest',
                  'networkCardIndex'),
              enaSrdSpecification: _enaSrdSpecification?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'enaSrdSpecification';
        _enaSrdSpecification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AttachNetworkInterfaceRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
