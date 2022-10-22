// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.endpoint_batch_item;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EndpointBatchItem extends EndpointBatchItem {
  @override
  final String? address;
  @override
  final _i2.BuiltListMultimap<String, String>? attributes;
  @override
  final _i3.ChannelType? channelType;
  @override
  final _i4.EndpointDemographic? demographic;
  @override
  final String? effectiveDate;
  @override
  final String? endpointStatus;
  @override
  final String? id;
  @override
  final _i5.EndpointLocation? location;
  @override
  final _i2.BuiltMap<String, double>? metrics;
  @override
  final String? optOut;
  @override
  final String? requestId;
  @override
  final _i6.EndpointUser? user;

  factory _$EndpointBatchItem(
          [void Function(EndpointBatchItemBuilder)? updates]) =>
      (new EndpointBatchItemBuilder()..update(updates))._build();

  _$EndpointBatchItem._(
      {this.address,
      this.attributes,
      this.channelType,
      this.demographic,
      this.effectiveDate,
      this.endpointStatus,
      this.id,
      this.location,
      this.metrics,
      this.optOut,
      this.requestId,
      this.user})
      : super._();

  @override
  EndpointBatchItem rebuild(void Function(EndpointBatchItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EndpointBatchItemBuilder toBuilder() =>
      new EndpointBatchItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EndpointBatchItem &&
        address == other.address &&
        attributes == other.attributes &&
        channelType == other.channelType &&
        demographic == other.demographic &&
        effectiveDate == other.effectiveDate &&
        endpointStatus == other.endpointStatus &&
        id == other.id &&
        location == other.location &&
        metrics == other.metrics &&
        optOut == other.optOut &&
        requestId == other.requestId &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, address.hashCode),
                                                attributes.hashCode),
                                            channelType.hashCode),
                                        demographic.hashCode),
                                    effectiveDate.hashCode),
                                endpointStatus.hashCode),
                            id.hashCode),
                        location.hashCode),
                    metrics.hashCode),
                optOut.hashCode),
            requestId.hashCode),
        user.hashCode));
  }
}

class EndpointBatchItemBuilder
    implements Builder<EndpointBatchItem, EndpointBatchItemBuilder> {
  _$EndpointBatchItem? _$v;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  _i2.ListMultimapBuilder<String, String>? _attributes;
  _i2.ListMultimapBuilder<String, String> get attributes =>
      _$this._attributes ??= new _i2.ListMultimapBuilder<String, String>();
  set attributes(_i2.ListMultimapBuilder<String, String>? attributes) =>
      _$this._attributes = attributes;

  _i3.ChannelType? _channelType;
  _i3.ChannelType? get channelType => _$this._channelType;
  set channelType(_i3.ChannelType? channelType) =>
      _$this._channelType = channelType;

  _i4.EndpointDemographicBuilder? _demographic;
  _i4.EndpointDemographicBuilder get demographic =>
      _$this._demographic ??= new _i4.EndpointDemographicBuilder();
  set demographic(_i4.EndpointDemographicBuilder? demographic) =>
      _$this._demographic = demographic;

  String? _effectiveDate;
  String? get effectiveDate => _$this._effectiveDate;
  set effectiveDate(String? effectiveDate) =>
      _$this._effectiveDate = effectiveDate;

  String? _endpointStatus;
  String? get endpointStatus => _$this._endpointStatus;
  set endpointStatus(String? endpointStatus) =>
      _$this._endpointStatus = endpointStatus;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i5.EndpointLocationBuilder? _location;
  _i5.EndpointLocationBuilder get location =>
      _$this._location ??= new _i5.EndpointLocationBuilder();
  set location(_i5.EndpointLocationBuilder? location) =>
      _$this._location = location;

  _i2.MapBuilder<String, double>? _metrics;
  _i2.MapBuilder<String, double> get metrics =>
      _$this._metrics ??= new _i2.MapBuilder<String, double>();
  set metrics(_i2.MapBuilder<String, double>? metrics) =>
      _$this._metrics = metrics;

  String? _optOut;
  String? get optOut => _$this._optOut;
  set optOut(String? optOut) => _$this._optOut = optOut;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i6.EndpointUserBuilder? _user;
  _i6.EndpointUserBuilder get user =>
      _$this._user ??= new _i6.EndpointUserBuilder();
  set user(_i6.EndpointUserBuilder? user) => _$this._user = user;

  EndpointBatchItemBuilder() {
    EndpointBatchItem._init(this);
  }

  EndpointBatchItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address;
      _attributes = $v.attributes?.toBuilder();
      _channelType = $v.channelType;
      _demographic = $v.demographic?.toBuilder();
      _effectiveDate = $v.effectiveDate;
      _endpointStatus = $v.endpointStatus;
      _id = $v.id;
      _location = $v.location?.toBuilder();
      _metrics = $v.metrics?.toBuilder();
      _optOut = $v.optOut;
      _requestId = $v.requestId;
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EndpointBatchItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EndpointBatchItem;
  }

  @override
  void update(void Function(EndpointBatchItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EndpointBatchItem build() => _build();

  _$EndpointBatchItem _build() {
    _$EndpointBatchItem _$result;
    try {
      _$result = _$v ??
          new _$EndpointBatchItem._(
              address: address,
              attributes: _attributes?.build(),
              channelType: channelType,
              demographic: _demographic?.build(),
              effectiveDate: effectiveDate,
              endpointStatus: endpointStatus,
              id: id,
              location: _location?.build(),
              metrics: _metrics?.build(),
              optOut: optOut,
              requestId: requestId,
              user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributes';
        _attributes?.build();

        _$failedField = 'demographic';
        _demographic?.build();

        _$failedField = 'location';
        _location?.build();
        _$failedField = 'metrics';
        _metrics?.build();

        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EndpointBatchItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
