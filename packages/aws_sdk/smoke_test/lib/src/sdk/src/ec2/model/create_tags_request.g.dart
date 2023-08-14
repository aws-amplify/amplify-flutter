// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_tags_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTagsRequest extends CreateTagsRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? resources;
  @override
  final _i3.BuiltList<Tag>? tags;

  factory _$CreateTagsRequest(
          [void Function(CreateTagsRequestBuilder)? updates]) =>
      (new CreateTagsRequestBuilder()..update(updates))._build();

  _$CreateTagsRequest._({required this.dryRun, this.resources, this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateTagsRequest', 'dryRun');
  }

  @override
  CreateTagsRequest rebuild(void Function(CreateTagsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTagsRequestBuilder toBuilder() =>
      new CreateTagsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTagsRequest &&
        dryRun == other.dryRun &&
        resources == other.resources &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, resources.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateTagsRequestBuilder
    implements Builder<CreateTagsRequest, CreateTagsRequestBuilder> {
  _$CreateTagsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _resources;
  _i3.ListBuilder<String> get resources =>
      _$this._resources ??= new _i3.ListBuilder<String>();
  set resources(_i3.ListBuilder<String>? resources) =>
      _$this._resources = resources;

  _i3.ListBuilder<Tag>? _tags;
  _i3.ListBuilder<Tag> get tags => _$this._tags ??= new _i3.ListBuilder<Tag>();
  set tags(_i3.ListBuilder<Tag>? tags) => _$this._tags = tags;

  CreateTagsRequestBuilder() {
    CreateTagsRequest._init(this);
  }

  CreateTagsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _resources = $v.resources?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTagsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTagsRequest;
  }

  @override
  void update(void Function(CreateTagsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTagsRequest build() => _build();

  _$CreateTagsRequest _build() {
    _$CreateTagsRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateTagsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateTagsRequest', 'dryRun'),
              resources: _resources?.build(),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resources';
        _resources?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTagsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
