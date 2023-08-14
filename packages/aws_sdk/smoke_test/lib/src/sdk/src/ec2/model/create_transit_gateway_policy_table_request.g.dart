// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transit_gateway_policy_table_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTransitGatewayPolicyTableRequest
    extends CreateTransitGatewayPolicyTableRequest {
  @override
  final String? transitGatewayId;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final bool dryRun;

  factory _$CreateTransitGatewayPolicyTableRequest(
          [void Function(CreateTransitGatewayPolicyTableRequestBuilder)?
              updates]) =>
      (new CreateTransitGatewayPolicyTableRequestBuilder()..update(updates))
          ._build();

  _$CreateTransitGatewayPolicyTableRequest._(
      {this.transitGatewayId, this.tagSpecifications, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateTransitGatewayPolicyTableRequest', 'dryRun');
  }

  @override
  CreateTransitGatewayPolicyTableRequest rebuild(
          void Function(CreateTransitGatewayPolicyTableRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTransitGatewayPolicyTableRequestBuilder toBuilder() =>
      new CreateTransitGatewayPolicyTableRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTransitGatewayPolicyTableRequest &&
        transitGatewayId == other.transitGatewayId &&
        tagSpecifications == other.tagSpecifications &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayId.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateTransitGatewayPolicyTableRequestBuilder
    implements
        Builder<CreateTransitGatewayPolicyTableRequest,
            CreateTransitGatewayPolicyTableRequestBuilder> {
  _$CreateTransitGatewayPolicyTableRequest? _$v;

  String? _transitGatewayId;
  String? get transitGatewayId => _$this._transitGatewayId;
  set transitGatewayId(String? transitGatewayId) =>
      _$this._transitGatewayId = transitGatewayId;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CreateTransitGatewayPolicyTableRequestBuilder() {
    CreateTransitGatewayPolicyTableRequest._init(this);
  }

  CreateTransitGatewayPolicyTableRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayId = $v.transitGatewayId;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTransitGatewayPolicyTableRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTransitGatewayPolicyTableRequest;
  }

  @override
  void update(
      void Function(CreateTransitGatewayPolicyTableRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTransitGatewayPolicyTableRequest build() => _build();

  _$CreateTransitGatewayPolicyTableRequest _build() {
    _$CreateTransitGatewayPolicyTableRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateTransitGatewayPolicyTableRequest._(
              transitGatewayId: transitGatewayId,
              tagSpecifications: _tagSpecifications?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateTransitGatewayPolicyTableRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTransitGatewayPolicyTableRequest',
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
