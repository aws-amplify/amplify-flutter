// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_remediation_configurations_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutRemediationConfigurationsRequest
    extends PutRemediationConfigurationsRequest {
  @override
  final _i3.BuiltList<RemediationConfiguration> remediationConfigurations;

  factory _$PutRemediationConfigurationsRequest(
          [void Function(PutRemediationConfigurationsRequestBuilder)?
              updates]) =>
      (new PutRemediationConfigurationsRequestBuilder()..update(updates))
          ._build();

  _$PutRemediationConfigurationsRequest._(
      {required this.remediationConfigurations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(remediationConfigurations,
        r'PutRemediationConfigurationsRequest', 'remediationConfigurations');
  }

  @override
  PutRemediationConfigurationsRequest rebuild(
          void Function(PutRemediationConfigurationsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutRemediationConfigurationsRequestBuilder toBuilder() =>
      new PutRemediationConfigurationsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutRemediationConfigurationsRequest &&
        remediationConfigurations == other.remediationConfigurations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, remediationConfigurations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutRemediationConfigurationsRequestBuilder
    implements
        Builder<PutRemediationConfigurationsRequest,
            PutRemediationConfigurationsRequestBuilder> {
  _$PutRemediationConfigurationsRequest? _$v;

  _i3.ListBuilder<RemediationConfiguration>? _remediationConfigurations;
  _i3.ListBuilder<RemediationConfiguration> get remediationConfigurations =>
      _$this._remediationConfigurations ??=
          new _i3.ListBuilder<RemediationConfiguration>();
  set remediationConfigurations(
          _i3.ListBuilder<RemediationConfiguration>?
              remediationConfigurations) =>
      _$this._remediationConfigurations = remediationConfigurations;

  PutRemediationConfigurationsRequestBuilder();

  PutRemediationConfigurationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _remediationConfigurations = $v.remediationConfigurations.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutRemediationConfigurationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutRemediationConfigurationsRequest;
  }

  @override
  void update(
      void Function(PutRemediationConfigurationsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutRemediationConfigurationsRequest build() => _build();

  _$PutRemediationConfigurationsRequest _build() {
    _$PutRemediationConfigurationsRequest _$result;
    try {
      _$result = _$v ??
          new _$PutRemediationConfigurationsRequest._(
              remediationConfigurations: remediationConfigurations.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'remediationConfigurations';
        remediationConfigurations.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutRemediationConfigurationsRequest',
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
