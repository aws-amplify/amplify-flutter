// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_vpc_endpoints_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteVpcEndpointsResult extends DeleteVpcEndpointsResult {
  @override
  final _i2.BuiltList<UnsuccessfulItem>? unsuccessful;

  factory _$DeleteVpcEndpointsResult(
          [void Function(DeleteVpcEndpointsResultBuilder)? updates]) =>
      (new DeleteVpcEndpointsResultBuilder()..update(updates))._build();

  _$DeleteVpcEndpointsResult._({this.unsuccessful}) : super._();

  @override
  DeleteVpcEndpointsResult rebuild(
          void Function(DeleteVpcEndpointsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteVpcEndpointsResultBuilder toBuilder() =>
      new DeleteVpcEndpointsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteVpcEndpointsResult &&
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

class DeleteVpcEndpointsResultBuilder
    implements
        Builder<DeleteVpcEndpointsResult, DeleteVpcEndpointsResultBuilder> {
  _$DeleteVpcEndpointsResult? _$v;

  _i2.ListBuilder<UnsuccessfulItem>? _unsuccessful;
  _i2.ListBuilder<UnsuccessfulItem> get unsuccessful =>
      _$this._unsuccessful ??= new _i2.ListBuilder<UnsuccessfulItem>();
  set unsuccessful(_i2.ListBuilder<UnsuccessfulItem>? unsuccessful) =>
      _$this._unsuccessful = unsuccessful;

  DeleteVpcEndpointsResultBuilder();

  DeleteVpcEndpointsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _unsuccessful = $v.unsuccessful?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteVpcEndpointsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteVpcEndpointsResult;
  }

  @override
  void update(void Function(DeleteVpcEndpointsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteVpcEndpointsResult build() => _build();

  _$DeleteVpcEndpointsResult _build() {
    _$DeleteVpcEndpointsResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteVpcEndpointsResult._(
              unsuccessful: _unsuccessful?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'unsuccessful';
        _unsuccessful?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteVpcEndpointsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
