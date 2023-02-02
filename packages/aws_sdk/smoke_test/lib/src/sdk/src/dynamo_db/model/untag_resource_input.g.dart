// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.untag_resource_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UntagResourceInput extends UntagResourceInput {
  @override
  final String resourceArn;
  @override
  final _i3.BuiltList<String> tagKeys;

  factory _$UntagResourceInput(
          [void Function(UntagResourceInputBuilder)? updates]) =>
      (new UntagResourceInputBuilder()..update(updates))._build();

  _$UntagResourceInput._({required this.resourceArn, required this.tagKeys})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resourceArn, r'UntagResourceInput', 'resourceArn');
    BuiltValueNullFieldError.checkNotNull(
        tagKeys, r'UntagResourceInput', 'tagKeys');
  }

  @override
  UntagResourceInput rebuild(
          void Function(UntagResourceInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UntagResourceInputBuilder toBuilder() =>
      new UntagResourceInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UntagResourceInput &&
        resourceArn == other.resourceArn &&
        tagKeys == other.tagKeys;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceArn.hashCode);
    _$hash = $jc(_$hash, tagKeys.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UntagResourceInputBuilder
    implements Builder<UntagResourceInput, UntagResourceInputBuilder> {
  _$UntagResourceInput? _$v;

  String? _resourceArn;
  String? get resourceArn => _$this._resourceArn;
  set resourceArn(String? resourceArn) => _$this._resourceArn = resourceArn;

  _i3.ListBuilder<String>? _tagKeys;
  _i3.ListBuilder<String> get tagKeys =>
      _$this._tagKeys ??= new _i3.ListBuilder<String>();
  set tagKeys(_i3.ListBuilder<String>? tagKeys) => _$this._tagKeys = tagKeys;

  UntagResourceInputBuilder() {
    UntagResourceInput._init(this);
  }

  UntagResourceInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceArn = $v.resourceArn;
      _tagKeys = $v.tagKeys.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UntagResourceInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UntagResourceInput;
  }

  @override
  void update(void Function(UntagResourceInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UntagResourceInput build() => _build();

  _$UntagResourceInput _build() {
    _$UntagResourceInput _$result;
    try {
      _$result = _$v ??
          new _$UntagResourceInput._(
              resourceArn: BuiltValueNullFieldError.checkNotNull(
                  resourceArn, r'UntagResourceInput', 'resourceArn'),
              tagKeys: tagKeys.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagKeys';
        tagKeys.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UntagResourceInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
