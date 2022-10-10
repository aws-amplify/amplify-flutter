// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.untag_resource_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UntagResourceRequest extends UntagResourceRequest {
  @override
  final String resourceArn;
  @override
  final _i3.BuiltList<String> tagKeys;

  factory _$UntagResourceRequest(
          [void Function(UntagResourceRequestBuilder)? updates]) =>
      (new UntagResourceRequestBuilder()..update(updates))._build();

  _$UntagResourceRequest._({required this.resourceArn, required this.tagKeys})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resourceArn, r'UntagResourceRequest', 'resourceArn');
    BuiltValueNullFieldError.checkNotNull(
        tagKeys, r'UntagResourceRequest', 'tagKeys');
  }

  @override
  UntagResourceRequest rebuild(
          void Function(UntagResourceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UntagResourceRequestBuilder toBuilder() =>
      new UntagResourceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UntagResourceRequest &&
        resourceArn == other.resourceArn &&
        tagKeys == other.tagKeys;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, resourceArn.hashCode), tagKeys.hashCode));
  }
}

class UntagResourceRequestBuilder
    implements Builder<UntagResourceRequest, UntagResourceRequestBuilder> {
  _$UntagResourceRequest? _$v;

  String? _resourceArn;
  String? get resourceArn => _$this._resourceArn;
  set resourceArn(String? resourceArn) => _$this._resourceArn = resourceArn;

  _i3.ListBuilder<String>? _tagKeys;
  _i3.ListBuilder<String> get tagKeys =>
      _$this._tagKeys ??= new _i3.ListBuilder<String>();
  set tagKeys(_i3.ListBuilder<String>? tagKeys) => _$this._tagKeys = tagKeys;

  UntagResourceRequestBuilder() {
    UntagResourceRequest._init(this);
  }

  UntagResourceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceArn = $v.resourceArn;
      _tagKeys = $v.tagKeys.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UntagResourceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UntagResourceRequest;
  }

  @override
  void update(void Function(UntagResourceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UntagResourceRequest build() => _build();

  _$UntagResourceRequest _build() {
    _$UntagResourceRequest _$result;
    try {
      _$result = _$v ??
          new _$UntagResourceRequest._(
              resourceArn: BuiltValueNullFieldError.checkNotNull(
                  resourceArn, r'UntagResourceRequest', 'resourceArn'),
              tagKeys: tagKeys.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagKeys';
        tagKeys.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UntagResourceRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
