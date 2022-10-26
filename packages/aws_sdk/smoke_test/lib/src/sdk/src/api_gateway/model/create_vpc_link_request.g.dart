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
    return $jf($jc(
        $jc($jc($jc(0, description.hashCode), name.hashCode), tags.hashCode),
        targetArns.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
