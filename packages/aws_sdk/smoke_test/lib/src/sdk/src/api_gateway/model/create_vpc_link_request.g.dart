// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.create_vpc_link_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVpcLinkRequest extends CreateVpcLinkRequest {
  @override
  final String name;
  @override
  final String? description;
  @override
  final _i3.BuiltList<String> targetArns;
  @override
  final _i3.BuiltMap<String, String>? tags;

  factory _$CreateVpcLinkRequest(
          [void Function(CreateVpcLinkRequestBuilder)? updates]) =>
      (new CreateVpcLinkRequestBuilder()..update(updates))._build();

  _$CreateVpcLinkRequest._(
      {required this.name,
      this.description,
      required this.targetArns,
      this.tags})
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
        name == other.name &&
        description == other.description &&
        targetArns == other.targetArns &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, targetArns.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateVpcLinkRequestBuilder
    implements Builder<CreateVpcLinkRequest, CreateVpcLinkRequestBuilder> {
  _$CreateVpcLinkRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i3.ListBuilder<String>? _targetArns;
  _i3.ListBuilder<String> get targetArns =>
      _$this._targetArns ??= new _i3.ListBuilder<String>();
  set targetArns(_i3.ListBuilder<String>? targetArns) =>
      _$this._targetArns = targetArns;

  _i3.MapBuilder<String, String>? _tags;
  _i3.MapBuilder<String, String> get tags =>
      _$this._tags ??= new _i3.MapBuilder<String, String>();
  set tags(_i3.MapBuilder<String, String>? tags) => _$this._tags = tags;

  CreateVpcLinkRequestBuilder() {
    CreateVpcLinkRequest._init(this);
  }

  CreateVpcLinkRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _targetArns = $v.targetArns.toBuilder();
      _tags = $v.tags?.toBuilder();
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
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'CreateVpcLinkRequest', 'name'),
              description: description,
              targetArns: targetArns.build(),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'targetArns';
        targetArns.build();
        _$failedField = 'tags';
        _tags?.build();
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
