// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_subnet_cidr_reservation_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteSubnetCidrReservationRequest
    extends DeleteSubnetCidrReservationRequest {
  @override
  final String? subnetCidrReservationId;
  @override
  final bool dryRun;

  factory _$DeleteSubnetCidrReservationRequest(
          [void Function(DeleteSubnetCidrReservationRequestBuilder)?
              updates]) =>
      (new DeleteSubnetCidrReservationRequestBuilder()..update(updates))
          ._build();

  _$DeleteSubnetCidrReservationRequest._(
      {this.subnetCidrReservationId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteSubnetCidrReservationRequest', 'dryRun');
  }

  @override
  DeleteSubnetCidrReservationRequest rebuild(
          void Function(DeleteSubnetCidrReservationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteSubnetCidrReservationRequestBuilder toBuilder() =>
      new DeleteSubnetCidrReservationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteSubnetCidrReservationRequest &&
        subnetCidrReservationId == other.subnetCidrReservationId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subnetCidrReservationId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteSubnetCidrReservationRequestBuilder
    implements
        Builder<DeleteSubnetCidrReservationRequest,
            DeleteSubnetCidrReservationRequestBuilder> {
  _$DeleteSubnetCidrReservationRequest? _$v;

  String? _subnetCidrReservationId;
  String? get subnetCidrReservationId => _$this._subnetCidrReservationId;
  set subnetCidrReservationId(String? subnetCidrReservationId) =>
      _$this._subnetCidrReservationId = subnetCidrReservationId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteSubnetCidrReservationRequestBuilder() {
    DeleteSubnetCidrReservationRequest._init(this);
  }

  DeleteSubnetCidrReservationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subnetCidrReservationId = $v.subnetCidrReservationId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteSubnetCidrReservationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteSubnetCidrReservationRequest;
  }

  @override
  void update(
      void Function(DeleteSubnetCidrReservationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteSubnetCidrReservationRequest build() => _build();

  _$DeleteSubnetCidrReservationRequest _build() {
    final _$result = _$v ??
        new _$DeleteSubnetCidrReservationRequest._(
            subnetCidrReservationId: subnetCidrReservationId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteSubnetCidrReservationRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
