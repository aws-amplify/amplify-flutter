// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_launch_template_versions_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteLaunchTemplateVersionsResult
    extends DeleteLaunchTemplateVersionsResult {
  @override
  final _i2.BuiltList<DeleteLaunchTemplateVersionsResponseSuccessItem>?
      successfullyDeletedLaunchTemplateVersions;
  @override
  final _i2.BuiltList<DeleteLaunchTemplateVersionsResponseErrorItem>?
      unsuccessfullyDeletedLaunchTemplateVersions;

  factory _$DeleteLaunchTemplateVersionsResult(
          [void Function(DeleteLaunchTemplateVersionsResultBuilder)?
              updates]) =>
      (new DeleteLaunchTemplateVersionsResultBuilder()..update(updates))
          ._build();

  _$DeleteLaunchTemplateVersionsResult._(
      {this.successfullyDeletedLaunchTemplateVersions,
      this.unsuccessfullyDeletedLaunchTemplateVersions})
      : super._();

  @override
  DeleteLaunchTemplateVersionsResult rebuild(
          void Function(DeleteLaunchTemplateVersionsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteLaunchTemplateVersionsResultBuilder toBuilder() =>
      new DeleteLaunchTemplateVersionsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteLaunchTemplateVersionsResult &&
        successfullyDeletedLaunchTemplateVersions ==
            other.successfullyDeletedLaunchTemplateVersions &&
        unsuccessfullyDeletedLaunchTemplateVersions ==
            other.unsuccessfullyDeletedLaunchTemplateVersions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, successfullyDeletedLaunchTemplateVersions.hashCode);
    _$hash = $jc(_$hash, unsuccessfullyDeletedLaunchTemplateVersions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteLaunchTemplateVersionsResultBuilder
    implements
        Builder<DeleteLaunchTemplateVersionsResult,
            DeleteLaunchTemplateVersionsResultBuilder> {
  _$DeleteLaunchTemplateVersionsResult? _$v;

  _i2.ListBuilder<DeleteLaunchTemplateVersionsResponseSuccessItem>?
      _successfullyDeletedLaunchTemplateVersions;
  _i2.ListBuilder<DeleteLaunchTemplateVersionsResponseSuccessItem>
      get successfullyDeletedLaunchTemplateVersions =>
          _$this._successfullyDeletedLaunchTemplateVersions ??= new _i2
              .ListBuilder<DeleteLaunchTemplateVersionsResponseSuccessItem>();
  set successfullyDeletedLaunchTemplateVersions(
          _i2.ListBuilder<DeleteLaunchTemplateVersionsResponseSuccessItem>?
              successfullyDeletedLaunchTemplateVersions) =>
      _$this._successfullyDeletedLaunchTemplateVersions =
          successfullyDeletedLaunchTemplateVersions;

  _i2.ListBuilder<DeleteLaunchTemplateVersionsResponseErrorItem>?
      _unsuccessfullyDeletedLaunchTemplateVersions;
  _i2.ListBuilder<DeleteLaunchTemplateVersionsResponseErrorItem>
      get unsuccessfullyDeletedLaunchTemplateVersions => _$this
              ._unsuccessfullyDeletedLaunchTemplateVersions ??=
          new _i2.ListBuilder<DeleteLaunchTemplateVersionsResponseErrorItem>();
  set unsuccessfullyDeletedLaunchTemplateVersions(
          _i2.ListBuilder<DeleteLaunchTemplateVersionsResponseErrorItem>?
              unsuccessfullyDeletedLaunchTemplateVersions) =>
      _$this._unsuccessfullyDeletedLaunchTemplateVersions =
          unsuccessfullyDeletedLaunchTemplateVersions;

  DeleteLaunchTemplateVersionsResultBuilder();

  DeleteLaunchTemplateVersionsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _successfullyDeletedLaunchTemplateVersions =
          $v.successfullyDeletedLaunchTemplateVersions?.toBuilder();
      _unsuccessfullyDeletedLaunchTemplateVersions =
          $v.unsuccessfullyDeletedLaunchTemplateVersions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteLaunchTemplateVersionsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteLaunchTemplateVersionsResult;
  }

  @override
  void update(
      void Function(DeleteLaunchTemplateVersionsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteLaunchTemplateVersionsResult build() => _build();

  _$DeleteLaunchTemplateVersionsResult _build() {
    _$DeleteLaunchTemplateVersionsResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteLaunchTemplateVersionsResult._(
              successfullyDeletedLaunchTemplateVersions:
                  _successfullyDeletedLaunchTemplateVersions?.build(),
              unsuccessfullyDeletedLaunchTemplateVersions:
                  _unsuccessfullyDeletedLaunchTemplateVersions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'successfullyDeletedLaunchTemplateVersions';
        _successfullyDeletedLaunchTemplateVersions?.build();
        _$failedField = 'unsuccessfullyDeletedLaunchTemplateVersions';
        _unsuccessfullyDeletedLaunchTemplateVersions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteLaunchTemplateVersionsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
