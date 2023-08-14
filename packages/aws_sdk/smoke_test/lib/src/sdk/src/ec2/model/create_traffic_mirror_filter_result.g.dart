// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_traffic_mirror_filter_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTrafficMirrorFilterResult
    extends CreateTrafficMirrorFilterResult {
  @override
  final TrafficMirrorFilter? trafficMirrorFilter;
  @override
  final String? clientToken;

  factory _$CreateTrafficMirrorFilterResult(
          [void Function(CreateTrafficMirrorFilterResultBuilder)? updates]) =>
      (new CreateTrafficMirrorFilterResultBuilder()..update(updates))._build();

  _$CreateTrafficMirrorFilterResult._(
      {this.trafficMirrorFilter, this.clientToken})
      : super._();

  @override
  CreateTrafficMirrorFilterResult rebuild(
          void Function(CreateTrafficMirrorFilterResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTrafficMirrorFilterResultBuilder toBuilder() =>
      new CreateTrafficMirrorFilterResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTrafficMirrorFilterResult &&
        trafficMirrorFilter == other.trafficMirrorFilter &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trafficMirrorFilter.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateTrafficMirrorFilterResultBuilder
    implements
        Builder<CreateTrafficMirrorFilterResult,
            CreateTrafficMirrorFilterResultBuilder> {
  _$CreateTrafficMirrorFilterResult? _$v;

  TrafficMirrorFilterBuilder? _trafficMirrorFilter;
  TrafficMirrorFilterBuilder get trafficMirrorFilter =>
      _$this._trafficMirrorFilter ??= new TrafficMirrorFilterBuilder();
  set trafficMirrorFilter(TrafficMirrorFilterBuilder? trafficMirrorFilter) =>
      _$this._trafficMirrorFilter = trafficMirrorFilter;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  CreateTrafficMirrorFilterResultBuilder();

  CreateTrafficMirrorFilterResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trafficMirrorFilter = $v.trafficMirrorFilter?.toBuilder();
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTrafficMirrorFilterResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTrafficMirrorFilterResult;
  }

  @override
  void update(void Function(CreateTrafficMirrorFilterResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTrafficMirrorFilterResult build() => _build();

  _$CreateTrafficMirrorFilterResult _build() {
    _$CreateTrafficMirrorFilterResult _$result;
    try {
      _$result = _$v ??
          new _$CreateTrafficMirrorFilterResult._(
              trafficMirrorFilter: _trafficMirrorFilter?.build(),
              clientToken: clientToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'trafficMirrorFilter';
        _trafficMirrorFilter?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTrafficMirrorFilterResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
