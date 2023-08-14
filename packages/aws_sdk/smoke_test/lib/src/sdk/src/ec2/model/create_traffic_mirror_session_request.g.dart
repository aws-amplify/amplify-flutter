// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_traffic_mirror_session_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTrafficMirrorSessionRequest
    extends CreateTrafficMirrorSessionRequest {
  @override
  final String? networkInterfaceId;
  @override
  final String? trafficMirrorTargetId;
  @override
  final String? trafficMirrorFilterId;
  @override
  final int packetLength;
  @override
  final int sessionNumber;
  @override
  final int virtualNetworkId;
  @override
  final String? description;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final bool dryRun;
  @override
  final String? clientToken;

  factory _$CreateTrafficMirrorSessionRequest(
          [void Function(CreateTrafficMirrorSessionRequestBuilder)? updates]) =>
      (new CreateTrafficMirrorSessionRequestBuilder()..update(updates))
          ._build();

  _$CreateTrafficMirrorSessionRequest._(
      {this.networkInterfaceId,
      this.trafficMirrorTargetId,
      this.trafficMirrorFilterId,
      required this.packetLength,
      required this.sessionNumber,
      required this.virtualNetworkId,
      this.description,
      this.tagSpecifications,
      required this.dryRun,
      this.clientToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        packetLength, r'CreateTrafficMirrorSessionRequest', 'packetLength');
    BuiltValueNullFieldError.checkNotNull(
        sessionNumber, r'CreateTrafficMirrorSessionRequest', 'sessionNumber');
    BuiltValueNullFieldError.checkNotNull(virtualNetworkId,
        r'CreateTrafficMirrorSessionRequest', 'virtualNetworkId');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateTrafficMirrorSessionRequest', 'dryRun');
  }

  @override
  CreateTrafficMirrorSessionRequest rebuild(
          void Function(CreateTrafficMirrorSessionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTrafficMirrorSessionRequestBuilder toBuilder() =>
      new CreateTrafficMirrorSessionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTrafficMirrorSessionRequest &&
        networkInterfaceId == other.networkInterfaceId &&
        trafficMirrorTargetId == other.trafficMirrorTargetId &&
        trafficMirrorFilterId == other.trafficMirrorFilterId &&
        packetLength == other.packetLength &&
        sessionNumber == other.sessionNumber &&
        virtualNetworkId == other.virtualNetworkId &&
        description == other.description &&
        tagSpecifications == other.tagSpecifications &&
        dryRun == other.dryRun &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, trafficMirrorTargetId.hashCode);
    _$hash = $jc(_$hash, trafficMirrorFilterId.hashCode);
    _$hash = $jc(_$hash, packetLength.hashCode);
    _$hash = $jc(_$hash, sessionNumber.hashCode);
    _$hash = $jc(_$hash, virtualNetworkId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateTrafficMirrorSessionRequestBuilder
    implements
        Builder<CreateTrafficMirrorSessionRequest,
            CreateTrafficMirrorSessionRequestBuilder> {
  _$CreateTrafficMirrorSessionRequest? _$v;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  String? _trafficMirrorTargetId;
  String? get trafficMirrorTargetId => _$this._trafficMirrorTargetId;
  set trafficMirrorTargetId(String? trafficMirrorTargetId) =>
      _$this._trafficMirrorTargetId = trafficMirrorTargetId;

  String? _trafficMirrorFilterId;
  String? get trafficMirrorFilterId => _$this._trafficMirrorFilterId;
  set trafficMirrorFilterId(String? trafficMirrorFilterId) =>
      _$this._trafficMirrorFilterId = trafficMirrorFilterId;

  int? _packetLength;
  int? get packetLength => _$this._packetLength;
  set packetLength(int? packetLength) => _$this._packetLength = packetLength;

  int? _sessionNumber;
  int? get sessionNumber => _$this._sessionNumber;
  set sessionNumber(int? sessionNumber) =>
      _$this._sessionNumber = sessionNumber;

  int? _virtualNetworkId;
  int? get virtualNetworkId => _$this._virtualNetworkId;
  set virtualNetworkId(int? virtualNetworkId) =>
      _$this._virtualNetworkId = virtualNetworkId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  CreateTrafficMirrorSessionRequestBuilder() {
    CreateTrafficMirrorSessionRequest._init(this);
  }

  CreateTrafficMirrorSessionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInterfaceId = $v.networkInterfaceId;
      _trafficMirrorTargetId = $v.trafficMirrorTargetId;
      _trafficMirrorFilterId = $v.trafficMirrorFilterId;
      _packetLength = $v.packetLength;
      _sessionNumber = $v.sessionNumber;
      _virtualNetworkId = $v.virtualNetworkId;
      _description = $v.description;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _dryRun = $v.dryRun;
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTrafficMirrorSessionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTrafficMirrorSessionRequest;
  }

  @override
  void update(
      void Function(CreateTrafficMirrorSessionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTrafficMirrorSessionRequest build() => _build();

  _$CreateTrafficMirrorSessionRequest _build() {
    _$CreateTrafficMirrorSessionRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateTrafficMirrorSessionRequest._(
              networkInterfaceId: networkInterfaceId,
              trafficMirrorTargetId: trafficMirrorTargetId,
              trafficMirrorFilterId: trafficMirrorFilterId,
              packetLength: BuiltValueNullFieldError.checkNotNull(packetLength,
                  r'CreateTrafficMirrorSessionRequest', 'packetLength'),
              sessionNumber: BuiltValueNullFieldError.checkNotNull(sessionNumber,
                  r'CreateTrafficMirrorSessionRequest', 'sessionNumber'),
              virtualNetworkId: BuiltValueNullFieldError.checkNotNull(
                  virtualNetworkId,
                  r'CreateTrafficMirrorSessionRequest',
                  'virtualNetworkId'),
              description: description,
              tagSpecifications: _tagSpecifications?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateTrafficMirrorSessionRequest', 'dryRun'),
              clientToken: clientToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTrafficMirrorSessionRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
