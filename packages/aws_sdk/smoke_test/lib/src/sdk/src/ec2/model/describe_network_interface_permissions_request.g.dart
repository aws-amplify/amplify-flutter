// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_network_interface_permissions_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeNetworkInterfacePermissionsRequest
    extends DescribeNetworkInterfacePermissionsRequest {
  @override
  final _i3.BuiltList<String>? networkInterfacePermissionIds;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final String? nextToken;
  @override
  final int maxResults;

  factory _$DescribeNetworkInterfacePermissionsRequest(
          [void Function(DescribeNetworkInterfacePermissionsRequestBuilder)?
              updates]) =>
      (new DescribeNetworkInterfacePermissionsRequestBuilder()..update(updates))
          ._build();

  _$DescribeNetworkInterfacePermissionsRequest._(
      {this.networkInterfacePermissionIds,
      this.filters,
      this.nextToken,
      required this.maxResults})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(maxResults,
        r'DescribeNetworkInterfacePermissionsRequest', 'maxResults');
  }

  @override
  DescribeNetworkInterfacePermissionsRequest rebuild(
          void Function(DescribeNetworkInterfacePermissionsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeNetworkInterfacePermissionsRequestBuilder toBuilder() =>
      new DescribeNetworkInterfacePermissionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeNetworkInterfacePermissionsRequest &&
        networkInterfacePermissionIds == other.networkInterfacePermissionIds &&
        filters == other.filters &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInterfacePermissionIds.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeNetworkInterfacePermissionsRequestBuilder
    implements
        Builder<DescribeNetworkInterfacePermissionsRequest,
            DescribeNetworkInterfacePermissionsRequestBuilder> {
  _$DescribeNetworkInterfacePermissionsRequest? _$v;

  _i3.ListBuilder<String>? _networkInterfacePermissionIds;
  _i3.ListBuilder<String> get networkInterfacePermissionIds =>
      _$this._networkInterfacePermissionIds ??= new _i3.ListBuilder<String>();
  set networkInterfacePermissionIds(
          _i3.ListBuilder<String>? networkInterfacePermissionIds) =>
      _$this._networkInterfacePermissionIds = networkInterfacePermissionIds;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  DescribeNetworkInterfacePermissionsRequestBuilder() {
    DescribeNetworkInterfacePermissionsRequest._init(this);
  }

  DescribeNetworkInterfacePermissionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInterfacePermissionIds =
          $v.networkInterfacePermissionIds?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeNetworkInterfacePermissionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeNetworkInterfacePermissionsRequest;
  }

  @override
  void update(
      void Function(DescribeNetworkInterfacePermissionsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeNetworkInterfacePermissionsRequest build() => _build();

  _$DescribeNetworkInterfacePermissionsRequest _build() {
    _$DescribeNetworkInterfacePermissionsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeNetworkInterfacePermissionsRequest._(
              networkInterfacePermissionIds:
                  _networkInterfacePermissionIds?.build(),
              filters: _filters?.build(),
              nextToken: nextToken,
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeNetworkInterfacePermissionsRequest', 'maxResults'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'networkInterfacePermissionIds';
        _networkInterfacePermissionIds?.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeNetworkInterfacePermissionsRequest',
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
