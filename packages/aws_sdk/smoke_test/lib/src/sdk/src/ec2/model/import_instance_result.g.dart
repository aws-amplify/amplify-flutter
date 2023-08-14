// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_instance_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportInstanceResult extends ImportInstanceResult {
  @override
  final ConversionTask? conversionTask;

  factory _$ImportInstanceResult(
          [void Function(ImportInstanceResultBuilder)? updates]) =>
      (new ImportInstanceResultBuilder()..update(updates))._build();

  _$ImportInstanceResult._({this.conversionTask}) : super._();

  @override
  ImportInstanceResult rebuild(
          void Function(ImportInstanceResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportInstanceResultBuilder toBuilder() =>
      new ImportInstanceResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportInstanceResult &&
        conversionTask == other.conversionTask;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, conversionTask.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ImportInstanceResultBuilder
    implements Builder<ImportInstanceResult, ImportInstanceResultBuilder> {
  _$ImportInstanceResult? _$v;

  ConversionTaskBuilder? _conversionTask;
  ConversionTaskBuilder get conversionTask =>
      _$this._conversionTask ??= new ConversionTaskBuilder();
  set conversionTask(ConversionTaskBuilder? conversionTask) =>
      _$this._conversionTask = conversionTask;

  ImportInstanceResultBuilder();

  ImportInstanceResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conversionTask = $v.conversionTask?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportInstanceResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportInstanceResult;
  }

  @override
  void update(void Function(ImportInstanceResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportInstanceResult build() => _build();

  _$ImportInstanceResult _build() {
    _$ImportInstanceResult _$result;
    try {
      _$result = _$v ??
          new _$ImportInstanceResult._(
              conversionTask: _conversionTask?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'conversionTask';
        _conversionTask?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ImportInstanceResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
