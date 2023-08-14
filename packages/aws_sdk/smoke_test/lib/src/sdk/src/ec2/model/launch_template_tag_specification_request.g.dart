// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template_tag_specification_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateTagSpecificationRequest
    extends LaunchTemplateTagSpecificationRequest {
  @override
  final ResourceType? resourceType;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$LaunchTemplateTagSpecificationRequest(
          [void Function(LaunchTemplateTagSpecificationRequestBuilder)?
              updates]) =>
      (new LaunchTemplateTagSpecificationRequestBuilder()..update(updates))
          ._build();

  _$LaunchTemplateTagSpecificationRequest._({this.resourceType, this.tags})
      : super._();

  @override
  LaunchTemplateTagSpecificationRequest rebuild(
          void Function(LaunchTemplateTagSpecificationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateTagSpecificationRequestBuilder toBuilder() =>
      new LaunchTemplateTagSpecificationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplateTagSpecificationRequest &&
        resourceType == other.resourceType &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LaunchTemplateTagSpecificationRequestBuilder
    implements
        Builder<LaunchTemplateTagSpecificationRequest,
            LaunchTemplateTagSpecificationRequestBuilder> {
  _$LaunchTemplateTagSpecificationRequest? _$v;

  ResourceType? _resourceType;
  ResourceType? get resourceType => _$this._resourceType;
  set resourceType(ResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  LaunchTemplateTagSpecificationRequestBuilder();

  LaunchTemplateTagSpecificationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceType = $v.resourceType;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplateTagSpecificationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateTagSpecificationRequest;
  }

  @override
  void update(
      void Function(LaunchTemplateTagSpecificationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateTagSpecificationRequest build() => _build();

  _$LaunchTemplateTagSpecificationRequest _build() {
    _$LaunchTemplateTagSpecificationRequest _$result;
    try {
      _$result = _$v ??
          new _$LaunchTemplateTagSpecificationRequest._(
              resourceType: resourceType, tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LaunchTemplateTagSpecificationRequest',
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
