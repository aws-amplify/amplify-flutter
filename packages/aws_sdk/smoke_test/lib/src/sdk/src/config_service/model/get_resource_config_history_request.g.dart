// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_resource_config_history_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetResourceConfigHistoryRequest
    extends GetResourceConfigHistoryRequest {
  @override
  final _i3.ChronologicalOrder? chronologicalOrder;
  @override
  final DateTime? earlierTime;
  @override
  final DateTime? laterTime;
  @override
  final int? limit;
  @override
  final String? nextToken;
  @override
  final String resourceId;
  @override
  final _i4.ResourceType resourceType;

  factory _$GetResourceConfigHistoryRequest(
          [void Function(GetResourceConfigHistoryRequestBuilder)? updates]) =>
      (new GetResourceConfigHistoryRequestBuilder()..update(updates))._build();

  _$GetResourceConfigHistoryRequest._(
      {this.chronologicalOrder,
      this.earlierTime,
      this.laterTime,
      this.limit,
      this.nextToken,
      required this.resourceId,
      required this.resourceType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'GetResourceConfigHistoryRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        resourceType, r'GetResourceConfigHistoryRequest', 'resourceType');
  }

  @override
  GetResourceConfigHistoryRequest rebuild(
          void Function(GetResourceConfigHistoryRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetResourceConfigHistoryRequestBuilder toBuilder() =>
      new GetResourceConfigHistoryRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetResourceConfigHistoryRequest &&
        chronologicalOrder == other.chronologicalOrder &&
        earlierTime == other.earlierTime &&
        laterTime == other.laterTime &&
        limit == other.limit &&
        nextToken == other.nextToken &&
        resourceId == other.resourceId &&
        resourceType == other.resourceType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, chronologicalOrder.hashCode),
                            earlierTime.hashCode),
                        laterTime.hashCode),
                    limit.hashCode),
                nextToken.hashCode),
            resourceId.hashCode),
        resourceType.hashCode));
  }
}

class GetResourceConfigHistoryRequestBuilder
    implements
        Builder<GetResourceConfigHistoryRequest,
            GetResourceConfigHistoryRequestBuilder> {
  _$GetResourceConfigHistoryRequest? _$v;

  _i3.ChronologicalOrder? _chronologicalOrder;
  _i3.ChronologicalOrder? get chronologicalOrder => _$this._chronologicalOrder;
  set chronologicalOrder(_i3.ChronologicalOrder? chronologicalOrder) =>
      _$this._chronologicalOrder = chronologicalOrder;

  DateTime? _earlierTime;
  DateTime? get earlierTime => _$this._earlierTime;
  set earlierTime(DateTime? earlierTime) => _$this._earlierTime = earlierTime;

  DateTime? _laterTime;
  DateTime? get laterTime => _$this._laterTime;
  set laterTime(DateTime? laterTime) => _$this._laterTime = laterTime;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  _i4.ResourceType? _resourceType;
  _i4.ResourceType? get resourceType => _$this._resourceType;
  set resourceType(_i4.ResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  GetResourceConfigHistoryRequestBuilder() {
    GetResourceConfigHistoryRequest._init(this);
  }

  GetResourceConfigHistoryRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _chronologicalOrder = $v.chronologicalOrder;
      _earlierTime = $v.earlierTime;
      _laterTime = $v.laterTime;
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _resourceId = $v.resourceId;
      _resourceType = $v.resourceType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetResourceConfigHistoryRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetResourceConfigHistoryRequest;
  }

  @override
  void update(void Function(GetResourceConfigHistoryRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetResourceConfigHistoryRequest build() => _build();

  _$GetResourceConfigHistoryRequest _build() {
    final _$result = _$v ??
        new _$GetResourceConfigHistoryRequest._(
            chronologicalOrder: chronologicalOrder,
            earlierTime: earlierTime,
            laterTime: laterTime,
            limit: limit,
            nextToken: nextToken,
            resourceId: BuiltValueNullFieldError.checkNotNull(
                resourceId, r'GetResourceConfigHistoryRequest', 'resourceId'),
            resourceType: BuiltValueNullFieldError.checkNotNull(resourceType,
                r'GetResourceConfigHistoryRequest', 'resourceType'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
