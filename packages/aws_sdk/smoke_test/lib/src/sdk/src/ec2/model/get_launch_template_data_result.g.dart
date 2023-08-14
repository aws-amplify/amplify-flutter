// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_launch_template_data_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetLaunchTemplateDataResult extends GetLaunchTemplateDataResult {
  @override
  final ResponseLaunchTemplateData? launchTemplateData;

  factory _$GetLaunchTemplateDataResult(
          [void Function(GetLaunchTemplateDataResultBuilder)? updates]) =>
      (new GetLaunchTemplateDataResultBuilder()..update(updates))._build();

  _$GetLaunchTemplateDataResult._({this.launchTemplateData}) : super._();

  @override
  GetLaunchTemplateDataResult rebuild(
          void Function(GetLaunchTemplateDataResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetLaunchTemplateDataResultBuilder toBuilder() =>
      new GetLaunchTemplateDataResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetLaunchTemplateDataResult &&
        launchTemplateData == other.launchTemplateData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, launchTemplateData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetLaunchTemplateDataResultBuilder
    implements
        Builder<GetLaunchTemplateDataResult,
            GetLaunchTemplateDataResultBuilder> {
  _$GetLaunchTemplateDataResult? _$v;

  ResponseLaunchTemplateDataBuilder? _launchTemplateData;
  ResponseLaunchTemplateDataBuilder get launchTemplateData =>
      _$this._launchTemplateData ??= new ResponseLaunchTemplateDataBuilder();
  set launchTemplateData(
          ResponseLaunchTemplateDataBuilder? launchTemplateData) =>
      _$this._launchTemplateData = launchTemplateData;

  GetLaunchTemplateDataResultBuilder();

  GetLaunchTemplateDataResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _launchTemplateData = $v.launchTemplateData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetLaunchTemplateDataResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetLaunchTemplateDataResult;
  }

  @override
  void update(void Function(GetLaunchTemplateDataResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetLaunchTemplateDataResult build() => _build();

  _$GetLaunchTemplateDataResult _build() {
    _$GetLaunchTemplateDataResult _$result;
    try {
      _$result = _$v ??
          new _$GetLaunchTemplateDataResult._(
              launchTemplateData: _launchTemplateData?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'launchTemplateData';
        _launchTemplateData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetLaunchTemplateDataResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
