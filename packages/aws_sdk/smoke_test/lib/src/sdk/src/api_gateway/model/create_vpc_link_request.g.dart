// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.create_vpc_link_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVpcLinkRequest extends CreateVpcLinkRequest {
  @override
  final String? description;
  @override
  final String name;
  @override
  final _i3.BuiltMap<String, String>? tags;
  @override
  final _i3.BuiltList<String> targetArns;

  factory _$CreateVpcLinkRequest(
          [void Function(CreateVpcLinkRequestBuilder)? updates]) =>
      (new CreateVpcLinkRequestBuilder()..update(updates))._build();

  _$CreateVpcLinkRequest._(
      {this.description,
      required this.name,
      this.tags,
      required this.targetArns})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'CreateVpcLinkRequest', 'name');
    BuiltValueNullFieldError.checkNotNull(
        targetArns, r'CreateVpcLinkRequest', 'targetArns');
  }

  @override
  CreateVpcLinkRequest rebuild(
          void Function(CreateVpcLinkRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVpcLinkRequestBuilder toBuilder() =>
      new CreateVpcLinkRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVpcLinkRequest &&
        description == other.description &&
        name == other.name &&
        tags == other.tags &&
        targetArns == other.targetArns;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, targetArns.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateVpcLinkRequestBuilder
    implements Builder<CreateVpcLinkRequest, CreateVpcLinkRequestBuilder> {
  _$CreateVpcLinkRequest? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  _i3.MapBuilder<String, String>? _tags;
  _i3.MapBuilder<String, String> get tags =>
      _$this._tags ??= new _i3.MapBuilder<String, String>();
  set tags(_i3.MapBuilder<String, String>? tags) => _$this._tags = tags;

  _i3.ListBuilder<String>? _targetArns;
  _i3.ListBuilder<String> get targetArns =>
      _$this._targetArns ??= new _i3.ListBuilder<String>();
  set targetArns(_i3.ListBuilder<String>? targetArns) =>
      _$this._targetArns = targetArns;

  CreateVpcLinkRequestBuilder() {
    CreateVpcLinkRequest._init(this);
  }

  CreateVpcLinkRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _name = $v.name;
      _tags = $v.tags?.toBuilder();
      _targetArns = $v.targetArns.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVpcLinkRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVpcLinkRequest;
  }

  @override
  void update(void Function(CreateVpcLinkRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVpcLinkRequest build() => _build();

  _$CreateVpcLinkRequest _build() {
    _$CreateVpcLinkRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateVpcLinkRequest._(
              description: description,
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'CreateVpcLinkRequest', 'name'),
              tags: _tags?.build(),
              targetArns: targetArns.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'targetArns';
        targetArns.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateVpcLinkRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
