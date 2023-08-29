// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_reserved_instances_listing_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateReservedInstancesListingRequest
    extends CreateReservedInstancesListingRequest {
  @override
  final String? clientToken;
  @override
  final int instanceCount;
  @override
  final _i3.BuiltList<PriceScheduleSpecification>? priceSchedules;
  @override
  final String? reservedInstancesId;

  factory _$CreateReservedInstancesListingRequest(
          [void Function(CreateReservedInstancesListingRequestBuilder)?
              updates]) =>
      (new CreateReservedInstancesListingRequestBuilder()..update(updates))
          ._build();

  _$CreateReservedInstancesListingRequest._(
      {this.clientToken,
      required this.instanceCount,
      this.priceSchedules,
      this.reservedInstancesId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(instanceCount,
        r'CreateReservedInstancesListingRequest', 'instanceCount');
  }

  @override
  CreateReservedInstancesListingRequest rebuild(
          void Function(CreateReservedInstancesListingRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateReservedInstancesListingRequestBuilder toBuilder() =>
      new CreateReservedInstancesListingRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateReservedInstancesListingRequest &&
        clientToken == other.clientToken &&
        instanceCount == other.instanceCount &&
        priceSchedules == other.priceSchedules &&
        reservedInstancesId == other.reservedInstancesId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, instanceCount.hashCode);
    _$hash = $jc(_$hash, priceSchedules.hashCode);
    _$hash = $jc(_$hash, reservedInstancesId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateReservedInstancesListingRequestBuilder
    implements
        Builder<CreateReservedInstancesListingRequest,
            CreateReservedInstancesListingRequestBuilder> {
  _$CreateReservedInstancesListingRequest? _$v;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  int? _instanceCount;
  int? get instanceCount => _$this._instanceCount;
  set instanceCount(int? instanceCount) =>
      _$this._instanceCount = instanceCount;

  _i3.ListBuilder<PriceScheduleSpecification>? _priceSchedules;
  _i3.ListBuilder<PriceScheduleSpecification> get priceSchedules =>
      _$this._priceSchedules ??=
          new _i3.ListBuilder<PriceScheduleSpecification>();
  set priceSchedules(
          _i3.ListBuilder<PriceScheduleSpecification>? priceSchedules) =>
      _$this._priceSchedules = priceSchedules;

  String? _reservedInstancesId;
  String? get reservedInstancesId => _$this._reservedInstancesId;
  set reservedInstancesId(String? reservedInstancesId) =>
      _$this._reservedInstancesId = reservedInstancesId;

  CreateReservedInstancesListingRequestBuilder() {
    CreateReservedInstancesListingRequest._init(this);
  }

  CreateReservedInstancesListingRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientToken = $v.clientToken;
      _instanceCount = $v.instanceCount;
      _priceSchedules = $v.priceSchedules?.toBuilder();
      _reservedInstancesId = $v.reservedInstancesId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateReservedInstancesListingRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateReservedInstancesListingRequest;
  }

  @override
  void update(
      void Function(CreateReservedInstancesListingRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateReservedInstancesListingRequest build() => _build();

  _$CreateReservedInstancesListingRequest _build() {
    _$CreateReservedInstancesListingRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateReservedInstancesListingRequest._(
              clientToken: clientToken,
              instanceCount: BuiltValueNullFieldError.checkNotNull(
                  instanceCount,
                  r'CreateReservedInstancesListingRequest',
                  'instanceCount'),
              priceSchedules: _priceSchedules?.build(),
              reservedInstancesId: reservedInstancesId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'priceSchedules';
        _priceSchedules?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateReservedInstancesListingRequest',
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
