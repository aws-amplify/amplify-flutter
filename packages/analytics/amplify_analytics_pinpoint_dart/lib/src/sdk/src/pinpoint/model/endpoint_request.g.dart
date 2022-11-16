// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.endpoint_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EndpointRequest extends EndpointRequest {
  @override
  final String? address;
  @override
  final _i6.BuiltListMultimap<String, String>? attributes;
  @override
  final _i2.ChannelType? channelType;
  @override
  final _i3.EndpointDemographic? demographic;
  @override
  final String? effectiveDate;
  @override
  final String? endpointStatus;
  @override
  final _i4.EndpointLocation? location;
  @override
  final _i6.BuiltMap<String, double>? metrics;
  @override
  final String? optOut;
  @override
  final String? requestId;
  @override
  final _i5.EndpointUser? user;

  factory _$EndpointRequest([void Function(EndpointRequestBuilder)? updates]) =>
      (new EndpointRequestBuilder()..update(updates))._build();

  _$EndpointRequest._(
      {this.address,
      this.attributes,
      this.channelType,
      this.demographic,
      this.effectiveDate,
      this.endpointStatus,
      this.location,
      this.metrics,
      this.optOut,
      this.requestId,
      this.user})
      : super._();

  @override
  EndpointRequest rebuild(void Function(EndpointRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EndpointRequestBuilder toBuilder() =>
      new EndpointRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EndpointRequest &&
        address == other.address &&
        attributes == other.attributes &&
        channelType == other.channelType &&
        demographic == other.demographic &&
        effectiveDate == other.effectiveDate &&
        endpointStatus == other.endpointStatus &&
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
                                        $jc($jc(0, address.hashCode),
                                            attributes.hashCode),
                                        channelType.hashCode),
                                    demographic.hashCode),
                                effectiveDate.hashCode),
                            endpointStatus.hashCode),
                        location.hashCode),
                    metrics.hashCode),
                optOut.hashCode),
            requestId.hashCode),
        user.hashCode));
  }
}

class EndpointRequestBuilder
    implements Builder<EndpointRequest, EndpointRequestBuilder> {
  _$EndpointRequest? _$v;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  _i6.ListMultimapBuilder<String, String>? _attributes;
  _i6.ListMultimapBuilder<String, String> get attributes =>
      _$this._attributes ??= new _i6.ListMultimapBuilder<String, String>();
  set attributes(_i6.ListMultimapBuilder<String, String>? attributes) =>
      _$this._attributes = attributes;

  _i2.ChannelType? _channelType;
  _i2.ChannelType? get channelType => _$this._channelType;
  set channelType(_i2.ChannelType? channelType) =>
      _$this._channelType = channelType;

  _i3.EndpointDemographicBuilder? _demographic;
  _i3.EndpointDemographicBuilder get demographic =>
      _$this._demographic ??= new _i3.EndpointDemographicBuilder();
  set demographic(_i3.EndpointDemographicBuilder? demographic) =>
      _$this._demographic = demographic;

  String? _effectiveDate;
  String? get effectiveDate => _$this._effectiveDate;
  set effectiveDate(String? effectiveDate) =>
      _$this._effectiveDate = effectiveDate;

  String? _endpointStatus;
  String? get endpointStatus => _$this._endpointStatus;
  set endpointStatus(String? endpointStatus) =>
      _$this._endpointStatus = endpointStatus;

  _i4.EndpointLocationBuilder? _location;
  _i4.EndpointLocationBuilder get location =>
      _$this._location ??= new _i4.EndpointLocationBuilder();
  set location(_i4.EndpointLocationBuilder? location) =>
      _$this._location = location;

  _i6.MapBuilder<String, double>? _metrics;
  _i6.MapBuilder<String, double> get metrics =>
      _$this._metrics ??= new _i6.MapBuilder<String, double>();
  set metrics(_i6.MapBuilder<String, double>? metrics) =>
      _$this._metrics = metrics;

  String? _optOut;
  String? get optOut => _$this._optOut;
  set optOut(String? optOut) => _$this._optOut = optOut;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i5.EndpointUserBuilder? _user;
  _i5.EndpointUserBuilder get user =>
      _$this._user ??= new _i5.EndpointUserBuilder();
  set user(_i5.EndpointUserBuilder? user) => _$this._user = user;

  EndpointRequestBuilder() {
    EndpointRequest._init(this);
  }

  EndpointRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address;
      _attributes = $v.attributes?.toBuilder();
      _channelType = $v.channelType;
      _demographic = $v.demographic?.toBuilder();
      _effectiveDate = $v.effectiveDate;
      _endpointStatus = $v.endpointStatus;
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
  void replace(EndpointRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EndpointRequest;
  }

  @override
  void update(void Function(EndpointRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EndpointRequest build() => _build();

  _$EndpointRequest _build() {
    _$EndpointRequest _$result;
    try {
      _$result = _$v ??
          new _$EndpointRequest._(
              address: address,
              attributes: _attributes?.build(),
              channelType: channelType,
              demographic: _demographic?.build(),
              effectiveDate: effectiveDate,
              endpointStatus: endpointStatus,
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
            r'EndpointRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
