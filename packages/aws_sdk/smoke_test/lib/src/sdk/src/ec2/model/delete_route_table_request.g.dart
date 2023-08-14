// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_route_table_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteRouteTableRequest extends DeleteRouteTableRequest {
  @override
  final bool dryRun;
  @override
  final String? routeTableId;

  factory _$DeleteRouteTableRequest(
          [void Function(DeleteRouteTableRequestBuilder)? updates]) =>
      (new DeleteRouteTableRequestBuilder()..update(updates))._build();

  _$DeleteRouteTableRequest._({required this.dryRun, this.routeTableId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteRouteTableRequest', 'dryRun');
  }

  @override
  DeleteRouteTableRequest rebuild(
          void Function(DeleteRouteTableRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteRouteTableRequestBuilder toBuilder() =>
      new DeleteRouteTableRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteRouteTableRequest &&
        dryRun == other.dryRun &&
        routeTableId == other.routeTableId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, routeTableId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteRouteTableRequestBuilder
    implements
        Builder<DeleteRouteTableRequest, DeleteRouteTableRequestBuilder> {
  _$DeleteRouteTableRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _routeTableId;
  String? get routeTableId => _$this._routeTableId;
  set routeTableId(String? routeTableId) => _$this._routeTableId = routeTableId;

  DeleteRouteTableRequestBuilder() {
    DeleteRouteTableRequest._init(this);
  }

  DeleteRouteTableRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _routeTableId = $v.routeTableId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteRouteTableRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteRouteTableRequest;
  }

  @override
  void update(void Function(DeleteRouteTableRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteRouteTableRequest build() => _build();

  _$DeleteRouteTableRequest _build() {
    final _$result = _$v ??
        new _$DeleteRouteTableRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteRouteTableRequest', 'dryRun'),
            routeTableId: routeTableId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
