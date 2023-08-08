// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_resource_config_history_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetResourceConfigHistoryRequest
    extends GetResourceConfigHistoryRequest {
  @override
  final _i3.ResourceType resourceType;
  @override
  final String resourceId;
  @override
  final DateTime? laterTime;
  @override
  final DateTime? earlierTime;
  @override
  final _i4.ChronologicalOrder? chronologicalOrder;
  @override
  final int limit;
  @override
  final String? nextToken;

  factory _$GetResourceConfigHistoryRequest(
          [void Function(GetResourceConfigHistoryRequestBuilder)? updates]) =>
      (new GetResourceConfigHistoryRequestBuilder()..update(updates))._build();

  _$GetResourceConfigHistoryRequest._(
      {required this.resourceType,
      required this.resourceId,
      this.laterTime,
      this.earlierTime,
      this.chronologicalOrder,
      required this.limit,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resourceType, r'GetResourceConfigHistoryRequest', 'resourceType');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'GetResourceConfigHistoryRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        limit, r'GetResourceConfigHistoryRequest', 'limit');
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
        resourceType == other.resourceType &&
        resourceId == other.resourceId &&
        laterTime == other.laterTime &&
        earlierTime == other.earlierTime &&
        chronologicalOrder == other.chronologicalOrder &&
        limit == other.limit &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, laterTime.hashCode);
    _$hash = $jc(_$hash, earlierTime.hashCode);
    _$hash = $jc(_$hash, chronologicalOrder.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetResourceConfigHistoryRequestBuilder
    implements
        Builder<GetResourceConfigHistoryRequest,
            GetResourceConfigHistoryRequestBuilder> {
  _$GetResourceConfigHistoryRequest? _$v;

  _i3.ResourceType? _resourceType;
  _i3.ResourceType? get resourceType => _$this._resourceType;
  set resourceType(_i3.ResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  DateTime? _laterTime;
  DateTime? get laterTime => _$this._laterTime;
  set laterTime(DateTime? laterTime) => _$this._laterTime = laterTime;

  DateTime? _earlierTime;
  DateTime? get earlierTime => _$this._earlierTime;
  set earlierTime(DateTime? earlierTime) => _$this._earlierTime = earlierTime;

  _i4.ChronologicalOrder? _chronologicalOrder;
  _i4.ChronologicalOrder? get chronologicalOrder => _$this._chronologicalOrder;
  set chronologicalOrder(_i4.ChronologicalOrder? chronologicalOrder) =>
      _$this._chronologicalOrder = chronologicalOrder;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetResourceConfigHistoryRequestBuilder() {
    GetResourceConfigHistoryRequest._init(this);
  }

  GetResourceConfigHistoryRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceType = $v.resourceType;
      _resourceId = $v.resourceId;
      _laterTime = $v.laterTime;
      _earlierTime = $v.earlierTime;
      _chronologicalOrder = $v.chronologicalOrder;
      _limit = $v.limit;
      _nextToken = $v.nextToken;
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
            resourceType: BuiltValueNullFieldError.checkNotNull(resourceType,
                r'GetResourceConfigHistoryRequest', 'resourceType'),
            resourceId: BuiltValueNullFieldError.checkNotNull(
                resourceId, r'GetResourceConfigHistoryRequest', 'resourceId'),
            laterTime: laterTime,
            earlierTime: earlierTime,
            chronologicalOrder: chronologicalOrder,
            limit: BuiltValueNullFieldError.checkNotNull(
                limit, r'GetResourceConfigHistoryRequest', 'limit'),
            nextToken: nextToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
