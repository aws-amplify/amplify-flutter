// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.create_instance_profile_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateInstanceProfileRequest extends CreateInstanceProfileRequest {
  @override
  final String instanceProfileName;
  @override
  final String? path;
  @override
  final _i4.BuiltList<_i3.Tag>? tags;

  factory _$CreateInstanceProfileRequest(
          [void Function(CreateInstanceProfileRequestBuilder)? updates]) =>
      (new CreateInstanceProfileRequestBuilder()..update(updates))._build();

  _$CreateInstanceProfileRequest._(
      {required this.instanceProfileName, this.path, this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(instanceProfileName,
        r'CreateInstanceProfileRequest', 'instanceProfileName');
  }

  @override
  CreateInstanceProfileRequest rebuild(
          void Function(CreateInstanceProfileRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateInstanceProfileRequestBuilder toBuilder() =>
      new CreateInstanceProfileRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateInstanceProfileRequest &&
        instanceProfileName == other.instanceProfileName &&
        path == other.path &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceProfileName.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateInstanceProfileRequestBuilder
    implements
        Builder<CreateInstanceProfileRequest,
            CreateInstanceProfileRequestBuilder> {
  _$CreateInstanceProfileRequest? _$v;

  String? _instanceProfileName;
  String? get instanceProfileName => _$this._instanceProfileName;
  set instanceProfileName(String? instanceProfileName) =>
      _$this._instanceProfileName = instanceProfileName;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  _i4.ListBuilder<_i3.Tag>? _tags;
  _i4.ListBuilder<_i3.Tag> get tags =>
      _$this._tags ??= new _i4.ListBuilder<_i3.Tag>();
  set tags(_i4.ListBuilder<_i3.Tag>? tags) => _$this._tags = tags;

  CreateInstanceProfileRequestBuilder() {
    CreateInstanceProfileRequest._init(this);
  }

  CreateInstanceProfileRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceProfileName = $v.instanceProfileName;
      _path = $v.path;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateInstanceProfileRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateInstanceProfileRequest;
  }

  @override
  void update(void Function(CreateInstanceProfileRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateInstanceProfileRequest build() => _build();

  _$CreateInstanceProfileRequest _build() {
    _$CreateInstanceProfileRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateInstanceProfileRequest._(
              instanceProfileName: BuiltValueNullFieldError.checkNotNull(
                  instanceProfileName,
                  r'CreateInstanceProfileRequest',
                  'instanceProfileName'),
              path: path,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateInstanceProfileRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
