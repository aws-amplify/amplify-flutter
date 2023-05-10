// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.untag_instance_profile_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UntagInstanceProfileRequest extends UntagInstanceProfileRequest {
  @override
  final String instanceProfileName;
  @override
  final _i3.BuiltList<String> tagKeys;

  factory _$UntagInstanceProfileRequest(
          [void Function(UntagInstanceProfileRequestBuilder)? updates]) =>
      (new UntagInstanceProfileRequestBuilder()..update(updates))._build();

  _$UntagInstanceProfileRequest._(
      {required this.instanceProfileName, required this.tagKeys})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(instanceProfileName,
        r'UntagInstanceProfileRequest', 'instanceProfileName');
    BuiltValueNullFieldError.checkNotNull(
        tagKeys, r'UntagInstanceProfileRequest', 'tagKeys');
  }

  @override
  UntagInstanceProfileRequest rebuild(
          void Function(UntagInstanceProfileRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UntagInstanceProfileRequestBuilder toBuilder() =>
      new UntagInstanceProfileRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UntagInstanceProfileRequest &&
        instanceProfileName == other.instanceProfileName &&
        tagKeys == other.tagKeys;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceProfileName.hashCode);
    _$hash = $jc(_$hash, tagKeys.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UntagInstanceProfileRequestBuilder
    implements
        Builder<UntagInstanceProfileRequest,
            UntagInstanceProfileRequestBuilder> {
  _$UntagInstanceProfileRequest? _$v;

  String? _instanceProfileName;
  String? get instanceProfileName => _$this._instanceProfileName;
  set instanceProfileName(String? instanceProfileName) =>
      _$this._instanceProfileName = instanceProfileName;

  _i3.ListBuilder<String>? _tagKeys;
  _i3.ListBuilder<String> get tagKeys =>
      _$this._tagKeys ??= new _i3.ListBuilder<String>();
  set tagKeys(_i3.ListBuilder<String>? tagKeys) => _$this._tagKeys = tagKeys;

  UntagInstanceProfileRequestBuilder() {
    UntagInstanceProfileRequest._init(this);
  }

  UntagInstanceProfileRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceProfileName = $v.instanceProfileName;
      _tagKeys = $v.tagKeys.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UntagInstanceProfileRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UntagInstanceProfileRequest;
  }

  @override
  void update(void Function(UntagInstanceProfileRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UntagInstanceProfileRequest build() => _build();

  _$UntagInstanceProfileRequest _build() {
    _$UntagInstanceProfileRequest _$result;
    try {
      _$result = _$v ??
          new _$UntagInstanceProfileRequest._(
              instanceProfileName: BuiltValueNullFieldError.checkNotNull(
                  instanceProfileName,
                  r'UntagInstanceProfileRequest',
                  'instanceProfileName'),
              tagKeys: tagKeys.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagKeys';
        tagKeys.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UntagInstanceProfileRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
