// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_vpc_endpoint_connection_notifications_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteVpcEndpointConnectionNotificationsResult
    extends DeleteVpcEndpointConnectionNotificationsResult {
  @override
  final _i2.BuiltList<UnsuccessfulItem>? unsuccessful;

  factory _$DeleteVpcEndpointConnectionNotificationsResult(
          [void Function(DeleteVpcEndpointConnectionNotificationsResultBuilder)?
              updates]) =>
      (new DeleteVpcEndpointConnectionNotificationsResultBuilder()
            ..update(updates))
          ._build();

  _$DeleteVpcEndpointConnectionNotificationsResult._({this.unsuccessful})
      : super._();

  @override
  DeleteVpcEndpointConnectionNotificationsResult rebuild(
          void Function(DeleteVpcEndpointConnectionNotificationsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteVpcEndpointConnectionNotificationsResultBuilder toBuilder() =>
      new DeleteVpcEndpointConnectionNotificationsResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteVpcEndpointConnectionNotificationsResult &&
        unsuccessful == other.unsuccessful;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, unsuccessful.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteVpcEndpointConnectionNotificationsResultBuilder
    implements
        Builder<DeleteVpcEndpointConnectionNotificationsResult,
            DeleteVpcEndpointConnectionNotificationsResultBuilder> {
  _$DeleteVpcEndpointConnectionNotificationsResult? _$v;

  _i2.ListBuilder<UnsuccessfulItem>? _unsuccessful;
  _i2.ListBuilder<UnsuccessfulItem> get unsuccessful =>
      _$this._unsuccessful ??= new _i2.ListBuilder<UnsuccessfulItem>();
  set unsuccessful(_i2.ListBuilder<UnsuccessfulItem>? unsuccessful) =>
      _$this._unsuccessful = unsuccessful;

  DeleteVpcEndpointConnectionNotificationsResultBuilder();

  DeleteVpcEndpointConnectionNotificationsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _unsuccessful = $v.unsuccessful?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteVpcEndpointConnectionNotificationsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteVpcEndpointConnectionNotificationsResult;
  }

  @override
  void update(
      void Function(DeleteVpcEndpointConnectionNotificationsResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteVpcEndpointConnectionNotificationsResult build() => _build();

  _$DeleteVpcEndpointConnectionNotificationsResult _build() {
    _$DeleteVpcEndpointConnectionNotificationsResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteVpcEndpointConnectionNotificationsResult._(
              unsuccessful: _unsuccessful?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'unsuccessful';
        _unsuccessful?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteVpcEndpointConnectionNotificationsResult',
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
