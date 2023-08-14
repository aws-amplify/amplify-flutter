// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_traffic_mirror_filter_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTrafficMirrorFilterRequest
    extends CreateTrafficMirrorFilterRequest {
  @override
  final String? description;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final bool dryRun;
  @override
  final String? clientToken;

  factory _$CreateTrafficMirrorFilterRequest(
          [void Function(CreateTrafficMirrorFilterRequestBuilder)? updates]) =>
      (new CreateTrafficMirrorFilterRequestBuilder()..update(updates))._build();

  _$CreateTrafficMirrorFilterRequest._(
      {this.description,
      this.tagSpecifications,
      required this.dryRun,
      this.clientToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateTrafficMirrorFilterRequest', 'dryRun');
  }

  @override
  CreateTrafficMirrorFilterRequest rebuild(
          void Function(CreateTrafficMirrorFilterRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTrafficMirrorFilterRequestBuilder toBuilder() =>
      new CreateTrafficMirrorFilterRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTrafficMirrorFilterRequest &&
        description == other.description &&
        tagSpecifications == other.tagSpecifications &&
        dryRun == other.dryRun &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateTrafficMirrorFilterRequestBuilder
    implements
        Builder<CreateTrafficMirrorFilterRequest,
            CreateTrafficMirrorFilterRequestBuilder> {
  _$CreateTrafficMirrorFilterRequest? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  CreateTrafficMirrorFilterRequestBuilder() {
    CreateTrafficMirrorFilterRequest._init(this);
  }

  CreateTrafficMirrorFilterRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _dryRun = $v.dryRun;
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTrafficMirrorFilterRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTrafficMirrorFilterRequest;
  }

  @override
  void update(void Function(CreateTrafficMirrorFilterRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTrafficMirrorFilterRequest build() => _build();

  _$CreateTrafficMirrorFilterRequest _build() {
    _$CreateTrafficMirrorFilterRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateTrafficMirrorFilterRequest._(
              description: description,
              tagSpecifications: _tagSpecifications?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateTrafficMirrorFilterRequest', 'dryRun'),
              clientToken: clientToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTrafficMirrorFilterRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
