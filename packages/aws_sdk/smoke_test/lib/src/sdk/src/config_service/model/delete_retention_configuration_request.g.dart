// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_retention_configuration_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteRetentionConfigurationRequest
    extends DeleteRetentionConfigurationRequest {
  @override
  final String retentionConfigurationName;

  factory _$DeleteRetentionConfigurationRequest(
          [void Function(DeleteRetentionConfigurationRequestBuilder)?
              updates]) =>
      (new DeleteRetentionConfigurationRequestBuilder()..update(updates))
          ._build();

  _$DeleteRetentionConfigurationRequest._(
      {required this.retentionConfigurationName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(retentionConfigurationName,
        r'DeleteRetentionConfigurationRequest', 'retentionConfigurationName');
  }

  @override
  DeleteRetentionConfigurationRequest rebuild(
          void Function(DeleteRetentionConfigurationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteRetentionConfigurationRequestBuilder toBuilder() =>
      new DeleteRetentionConfigurationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteRetentionConfigurationRequest &&
        retentionConfigurationName == other.retentionConfigurationName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, retentionConfigurationName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteRetentionConfigurationRequestBuilder
    implements
        Builder<DeleteRetentionConfigurationRequest,
            DeleteRetentionConfigurationRequestBuilder> {
  _$DeleteRetentionConfigurationRequest? _$v;

  String? _retentionConfigurationName;
  String? get retentionConfigurationName => _$this._retentionConfigurationName;
  set retentionConfigurationName(String? retentionConfigurationName) =>
      _$this._retentionConfigurationName = retentionConfigurationName;

  DeleteRetentionConfigurationRequestBuilder();

  DeleteRetentionConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _retentionConfigurationName = $v.retentionConfigurationName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteRetentionConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteRetentionConfigurationRequest;
  }

  @override
  void update(
      void Function(DeleteRetentionConfigurationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteRetentionConfigurationRequest build() => _build();

  _$DeleteRetentionConfigurationRequest _build() {
    final _$result = _$v ??
        new _$DeleteRetentionConfigurationRequest._(
            retentionConfigurationName: BuiltValueNullFieldError.checkNotNull(
                retentionConfigurationName,
                r'DeleteRetentionConfigurationRequest',
                'retentionConfigurationName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
