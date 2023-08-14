// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reserved_instances_listing.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReservedInstancesListing extends ReservedInstancesListing {
  @override
  final String? clientToken;
  @override
  final DateTime? createDate;
  @override
  final _i2.BuiltList<InstanceCount>? instanceCounts;
  @override
  final _i2.BuiltList<PriceSchedule>? priceSchedules;
  @override
  final String? reservedInstancesId;
  @override
  final String? reservedInstancesListingId;
  @override
  final ListingStatus? status;
  @override
  final String? statusMessage;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final DateTime? updateDate;

  factory _$ReservedInstancesListing(
          [void Function(ReservedInstancesListingBuilder)? updates]) =>
      (new ReservedInstancesListingBuilder()..update(updates))._build();

  _$ReservedInstancesListing._(
      {this.clientToken,
      this.createDate,
      this.instanceCounts,
      this.priceSchedules,
      this.reservedInstancesId,
      this.reservedInstancesListingId,
      this.status,
      this.statusMessage,
      this.tags,
      this.updateDate})
      : super._();

  @override
  ReservedInstancesListing rebuild(
          void Function(ReservedInstancesListingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReservedInstancesListingBuilder toBuilder() =>
      new ReservedInstancesListingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReservedInstancesListing &&
        clientToken == other.clientToken &&
        createDate == other.createDate &&
        instanceCounts == other.instanceCounts &&
        priceSchedules == other.priceSchedules &&
        reservedInstancesId == other.reservedInstancesId &&
        reservedInstancesListingId == other.reservedInstancesListingId &&
        status == other.status &&
        statusMessage == other.statusMessage &&
        tags == other.tags &&
        updateDate == other.updateDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, createDate.hashCode);
    _$hash = $jc(_$hash, instanceCounts.hashCode);
    _$hash = $jc(_$hash, priceSchedules.hashCode);
    _$hash = $jc(_$hash, reservedInstancesId.hashCode);
    _$hash = $jc(_$hash, reservedInstancesListingId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusMessage.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, updateDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReservedInstancesListingBuilder
    implements
        Builder<ReservedInstancesListing, ReservedInstancesListingBuilder> {
  _$ReservedInstancesListing? _$v;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  DateTime? _createDate;
  DateTime? get createDate => _$this._createDate;
  set createDate(DateTime? createDate) => _$this._createDate = createDate;

  _i2.ListBuilder<InstanceCount>? _instanceCounts;
  _i2.ListBuilder<InstanceCount> get instanceCounts =>
      _$this._instanceCounts ??= new _i2.ListBuilder<InstanceCount>();
  set instanceCounts(_i2.ListBuilder<InstanceCount>? instanceCounts) =>
      _$this._instanceCounts = instanceCounts;

  _i2.ListBuilder<PriceSchedule>? _priceSchedules;
  _i2.ListBuilder<PriceSchedule> get priceSchedules =>
      _$this._priceSchedules ??= new _i2.ListBuilder<PriceSchedule>();
  set priceSchedules(_i2.ListBuilder<PriceSchedule>? priceSchedules) =>
      _$this._priceSchedules = priceSchedules;

  String? _reservedInstancesId;
  String? get reservedInstancesId => _$this._reservedInstancesId;
  set reservedInstancesId(String? reservedInstancesId) =>
      _$this._reservedInstancesId = reservedInstancesId;

  String? _reservedInstancesListingId;
  String? get reservedInstancesListingId => _$this._reservedInstancesListingId;
  set reservedInstancesListingId(String? reservedInstancesListingId) =>
      _$this._reservedInstancesListingId = reservedInstancesListingId;

  ListingStatus? _status;
  ListingStatus? get status => _$this._status;
  set status(ListingStatus? status) => _$this._status = status;

  String? _statusMessage;
  String? get statusMessage => _$this._statusMessage;
  set statusMessage(String? statusMessage) =>
      _$this._statusMessage = statusMessage;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  DateTime? _updateDate;
  DateTime? get updateDate => _$this._updateDate;
  set updateDate(DateTime? updateDate) => _$this._updateDate = updateDate;

  ReservedInstancesListingBuilder();

  ReservedInstancesListingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientToken = $v.clientToken;
      _createDate = $v.createDate;
      _instanceCounts = $v.instanceCounts?.toBuilder();
      _priceSchedules = $v.priceSchedules?.toBuilder();
      _reservedInstancesId = $v.reservedInstancesId;
      _reservedInstancesListingId = $v.reservedInstancesListingId;
      _status = $v.status;
      _statusMessage = $v.statusMessage;
      _tags = $v.tags?.toBuilder();
      _updateDate = $v.updateDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReservedInstancesListing other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReservedInstancesListing;
  }

  @override
  void update(void Function(ReservedInstancesListingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReservedInstancesListing build() => _build();

  _$ReservedInstancesListing _build() {
    _$ReservedInstancesListing _$result;
    try {
      _$result = _$v ??
          new _$ReservedInstancesListing._(
              clientToken: clientToken,
              createDate: createDate,
              instanceCounts: _instanceCounts?.build(),
              priceSchedules: _priceSchedules?.build(),
              reservedInstancesId: reservedInstancesId,
              reservedInstancesListingId: reservedInstancesListingId,
              status: status,
              statusMessage: statusMessage,
              tags: _tags?.build(),
              updateDate: updateDate);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceCounts';
        _instanceCounts?.build();
        _$failedField = 'priceSchedules';
        _priceSchedules?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReservedInstancesListing', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
