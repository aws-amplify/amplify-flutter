// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_internet_gateway_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateInternetGatewayRequest extends CreateInternetGatewayRequest {
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final bool dryRun;

  factory _$CreateInternetGatewayRequest(
          [void Function(CreateInternetGatewayRequestBuilder)? updates]) =>
      (new CreateInternetGatewayRequestBuilder()..update(updates))._build();

  _$CreateInternetGatewayRequest._(
      {this.tagSpecifications, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateInternetGatewayRequest', 'dryRun');
  }

  @override
  CreateInternetGatewayRequest rebuild(
          void Function(CreateInternetGatewayRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateInternetGatewayRequestBuilder toBuilder() =>
      new CreateInternetGatewayRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateInternetGatewayRequest &&
        tagSpecifications == other.tagSpecifications &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateInternetGatewayRequestBuilder
    implements
        Builder<CreateInternetGatewayRequest,
            CreateInternetGatewayRequestBuilder> {
  _$CreateInternetGatewayRequest? _$v;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CreateInternetGatewayRequestBuilder() {
    CreateInternetGatewayRequest._init(this);
  }

  CreateInternetGatewayRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateInternetGatewayRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateInternetGatewayRequest;
  }

  @override
  void update(void Function(CreateInternetGatewayRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateInternetGatewayRequest build() => _build();

  _$CreateInternetGatewayRequest _build() {
    _$CreateInternetGatewayRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateInternetGatewayRequest._(
              tagSpecifications: _tagSpecifications?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateInternetGatewayRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateInternetGatewayRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
