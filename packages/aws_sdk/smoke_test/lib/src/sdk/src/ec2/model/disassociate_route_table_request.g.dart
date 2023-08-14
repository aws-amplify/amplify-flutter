// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disassociate_route_table_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisassociateRouteTableRequest extends DisassociateRouteTableRequest {
  @override
  final String? associationId;
  @override
  final bool dryRun;

  factory _$DisassociateRouteTableRequest(
          [void Function(DisassociateRouteTableRequestBuilder)? updates]) =>
      (new DisassociateRouteTableRequestBuilder()..update(updates))._build();

  _$DisassociateRouteTableRequest._({this.associationId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DisassociateRouteTableRequest', 'dryRun');
  }

  @override
  DisassociateRouteTableRequest rebuild(
          void Function(DisassociateRouteTableRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisassociateRouteTableRequestBuilder toBuilder() =>
      new DisassociateRouteTableRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisassociateRouteTableRequest &&
        associationId == other.associationId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, associationId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisassociateRouteTableRequestBuilder
    implements
        Builder<DisassociateRouteTableRequest,
            DisassociateRouteTableRequestBuilder> {
  _$DisassociateRouteTableRequest? _$v;

  String? _associationId;
  String? get associationId => _$this._associationId;
  set associationId(String? associationId) =>
      _$this._associationId = associationId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DisassociateRouteTableRequestBuilder() {
    DisassociateRouteTableRequest._init(this);
  }

  DisassociateRouteTableRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associationId = $v.associationId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisassociateRouteTableRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisassociateRouteTableRequest;
  }

  @override
  void update(void Function(DisassociateRouteTableRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisassociateRouteTableRequest build() => _build();

  _$DisassociateRouteTableRequest _build() {
    final _$result = _$v ??
        new _$DisassociateRouteTableRequest._(
            associationId: associationId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DisassociateRouteTableRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
