// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_subnet_cidr_reservation_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateSubnetCidrReservationRequest
    extends CreateSubnetCidrReservationRequest {
  @override
  final String? subnetId;
  @override
  final String? cidr;
  @override
  final SubnetCidrReservationType? reservationType;
  @override
  final String? description;
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;

  factory _$CreateSubnetCidrReservationRequest(
          [void Function(CreateSubnetCidrReservationRequestBuilder)?
              updates]) =>
      (new CreateSubnetCidrReservationRequestBuilder()..update(updates))
          ._build();

  _$CreateSubnetCidrReservationRequest._(
      {this.subnetId,
      this.cidr,
      this.reservationType,
      this.description,
      required this.dryRun,
      this.tagSpecifications})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateSubnetCidrReservationRequest', 'dryRun');
  }

  @override
  CreateSubnetCidrReservationRequest rebuild(
          void Function(CreateSubnetCidrReservationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateSubnetCidrReservationRequestBuilder toBuilder() =>
      new CreateSubnetCidrReservationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateSubnetCidrReservationRequest &&
        subnetId == other.subnetId &&
        cidr == other.cidr &&
        reservationType == other.reservationType &&
        description == other.description &&
        dryRun == other.dryRun &&
        tagSpecifications == other.tagSpecifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, cidr.hashCode);
    _$hash = $jc(_$hash, reservationType.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateSubnetCidrReservationRequestBuilder
    implements
        Builder<CreateSubnetCidrReservationRequest,
            CreateSubnetCidrReservationRequestBuilder> {
  _$CreateSubnetCidrReservationRequest? _$v;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  String? _cidr;
  String? get cidr => _$this._cidr;
  set cidr(String? cidr) => _$this._cidr = cidr;

  SubnetCidrReservationType? _reservationType;
  SubnetCidrReservationType? get reservationType => _$this._reservationType;
  set reservationType(SubnetCidrReservationType? reservationType) =>
      _$this._reservationType = reservationType;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  CreateSubnetCidrReservationRequestBuilder() {
    CreateSubnetCidrReservationRequest._init(this);
  }

  CreateSubnetCidrReservationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subnetId = $v.subnetId;
      _cidr = $v.cidr;
      _reservationType = $v.reservationType;
      _description = $v.description;
      _dryRun = $v.dryRun;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateSubnetCidrReservationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateSubnetCidrReservationRequest;
  }

  @override
  void update(
      void Function(CreateSubnetCidrReservationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateSubnetCidrReservationRequest build() => _build();

  _$CreateSubnetCidrReservationRequest _build() {
    _$CreateSubnetCidrReservationRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateSubnetCidrReservationRequest._(
              subnetId: subnetId,
              cidr: cidr,
              reservationType: reservationType,
              description: description,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateSubnetCidrReservationRequest', 'dryRun'),
              tagSpecifications: _tagSpecifications?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateSubnetCidrReservationRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
