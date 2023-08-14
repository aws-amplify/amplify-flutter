// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_verified_access_instance_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVerifiedAccessInstanceRequest
    extends CreateVerifiedAccessInstanceRequest {
  @override
  final String? description;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final String? clientToken;
  @override
  final bool dryRun;

  factory _$CreateVerifiedAccessInstanceRequest(
          [void Function(CreateVerifiedAccessInstanceRequestBuilder)?
              updates]) =>
      (new CreateVerifiedAccessInstanceRequestBuilder()..update(updates))
          ._build();

  _$CreateVerifiedAccessInstanceRequest._(
      {this.description,
      this.tagSpecifications,
      this.clientToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateVerifiedAccessInstanceRequest', 'dryRun');
  }

  @override
  CreateVerifiedAccessInstanceRequest rebuild(
          void Function(CreateVerifiedAccessInstanceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVerifiedAccessInstanceRequestBuilder toBuilder() =>
      new CreateVerifiedAccessInstanceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVerifiedAccessInstanceRequest &&
        description == other.description &&
        tagSpecifications == other.tagSpecifications &&
        clientToken == other.clientToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateVerifiedAccessInstanceRequestBuilder
    implements
        Builder<CreateVerifiedAccessInstanceRequest,
            CreateVerifiedAccessInstanceRequestBuilder> {
  _$CreateVerifiedAccessInstanceRequest? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CreateVerifiedAccessInstanceRequestBuilder() {
    CreateVerifiedAccessInstanceRequest._init(this);
  }

  CreateVerifiedAccessInstanceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _clientToken = $v.clientToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVerifiedAccessInstanceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVerifiedAccessInstanceRequest;
  }

  @override
  void update(
      void Function(CreateVerifiedAccessInstanceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVerifiedAccessInstanceRequest build() => _build();

  _$CreateVerifiedAccessInstanceRequest _build() {
    _$CreateVerifiedAccessInstanceRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateVerifiedAccessInstanceRequest._(
              description: description,
              tagSpecifications: _tagSpecifications?.build(),
              clientToken: clientToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateVerifiedAccessInstanceRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateVerifiedAccessInstanceRequest',
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
