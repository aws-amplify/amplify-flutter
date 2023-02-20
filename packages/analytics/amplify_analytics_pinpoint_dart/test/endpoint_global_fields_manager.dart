import 'dart:convert';

import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_global_fields_manager.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_store_keys.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:test/test.dart';

import 'common/mock_secure_storage.dart';

void main() {
  group('EndpointGlobalFieldsManager ', () {
    final endpointAttrKey = EndpointStoreKey.endpointGlobalAttributesKey.name;
    final endpointMetricKey = EndpointStoreKey.endpointGlobalMetricsKey.name;

    const attrKey1 = 'attrKey1';
    const attrKey2 = 'attrKey2';
    const attrValue1 = 'attrValue1';
    const attrValue2 = 'attrValue2';
    const metricKey1 = 'metricKey1';
    const metricKey2 = 'metricKey2';
    const metricValue1 = 1.0;
    const metricValue2 = 2.0;

    late EndpointGlobalFieldsManager fieldsManager;
    late SecureStorageInterface mockSecureStorage;

    Future<Map<String, String>> getStoredAttributes() async {
      final cachedAttributes = await mockSecureStorage.read(
        key: EndpointStoreKey.endpointGlobalAttributesKey.name,
      );
      return cachedAttributes == null
          ? <String, String>{}
          : (jsonDecode(cachedAttributes) as Map<String, Object?>)
              .cast<String, String>();
    }

    Future<Map<String, double>> getStoredMetrics() async {
      final cachedMetrics = await mockSecureStorage.read(
        key: EndpointStoreKey.endpointGlobalMetricsKey.name,
      );
      return cachedMetrics == null
          ? <String, double>{}
          : (jsonDecode(cachedMetrics) as Map<String, Object?>)
              .cast<String, double>();
    }

    setUp(() async {
      mockSecureStorage = MockSecureStorage();
      fieldsManager =
          await EndpointGlobalFieldsManager.create(mockSecureStorage);
    });

    test('reads values from storage', () async {
      // Seed values.
      await mockSecureStorage.write(
        key: endpointAttrKey,
        value: jsonEncode({attrKey1: attrValue1}),
      );
      await mockSecureStorage.write(
        key: endpointMetricKey,
        value: jsonEncode({metricKey1: metricValue1}),
      );

      fieldsManager =
          await EndpointGlobalFieldsManager.create(mockSecureStorage);

      expect(fieldsManager.globalAttributes[attrKey1], attrValue1);
      expect(fieldsManager.globalMetrics[metricKey1], metricValue1);
    });

    test('writes attribute to storage', () async {
      await fieldsManager.addAttribute(attrKey1, attrValue1);

      expect(fieldsManager.globalAttributes[attrKey1], attrValue1);

      final storedAttrs = await getStoredAttributes();
      expect(storedAttrs[attrKey1], attrValue1);
    });

    test('writes multiple attributes to storage', () async {
      await fieldsManager.addAttributes({
        attrKey1: attrValue1,
        attrKey2: attrValue2,
      });

      expect(fieldsManager.globalAttributes[attrKey1], attrValue1);
      expect(fieldsManager.globalAttributes[attrKey2], attrValue2);

      final storedAttrs = await getStoredAttributes();
      expect(storedAttrs[attrKey1], attrValue1);
      expect(storedAttrs[attrKey2], attrValue2);
    });

    test('writes metric to storage', () async {
      await fieldsManager.addMetric(metricKey1, metricValue1);

      expect(fieldsManager.globalMetrics[metricKey1], metricValue1);

      final storedMetrics = await getStoredMetrics();
      expect(storedMetrics[metricKey1], metricValue1);
    });

    test('writes multiple metrics to storage', () async {
      await fieldsManager.addMetrics({
        metricKey1: metricValue1,
        metricKey2: metricValue2,
      });
      await fieldsManager.addMetric(metricKey1, metricValue1);

      expect(fieldsManager.globalMetrics[metricKey1], metricValue1);

      final storedMetrics = await getStoredMetrics();
      expect(storedMetrics[metricKey1], metricValue1);
      expect(storedMetrics[metricKey2], metricValue2);
    });

    test('removes attribute in storage', () async {
      await fieldsManager.addAttributes({
        attrKey1: attrValue1,
        attrKey2: attrValue2,
      });

      await fieldsManager.removeAttribute(attrKey1);

      expect(fieldsManager.globalAttributes.containsKey(attrKey1), false);
      expect(fieldsManager.globalAttributes[attrKey2], attrValue2);

      final storedAttrs = await getStoredAttributes();
      expect(storedAttrs.containsKey(attrKey1), false);
      expect(storedAttrs[attrKey2], attrValue2);
    });

    test('removes metric in storage', () async {
      await fieldsManager.addMetrics({
        metricKey1: metricValue1,
        metricKey2: metricValue2,
      });

      await fieldsManager.removeMetric(metricKey1);

      expect(fieldsManager.globalMetrics.containsKey(metricKey1), false);
      expect(fieldsManager.globalMetrics[metricKey2], metricValue2);

      final storedMetrics = await getStoredMetrics();
      expect(storedMetrics.containsKey(metricKey1), false);
      expect(storedMetrics[metricKey2], metricValue2);
    });

    test('attribute key/values longer than "maxLength" are truncated',
        () async {
      final stringBuffer = StringBuffer();
      for (var i = 0;
          i < EndpointGlobalFieldsManager.maxAttributeValueLength * 2;
          i++) {
        stringBuffer.write('a');
      }

      final longAttrKey = stringBuffer.toString();
      final longAttrValue = stringBuffer.toString();

      await fieldsManager.addAttribute(longAttrKey, longAttrValue);

      expect(fieldsManager.globalAttributes.containsKey(longAttrKey), false);

      final storedAttrKey =
          longAttrKey.substring(0, EndpointGlobalFieldsManager.maxKeyLength);

      final storedAttrValue = longAttrValue.substring(
        0,
        EndpointGlobalFieldsManager.maxAttributeValueLength,
      );

      expect(fieldsManager.globalAttributes[storedAttrKey], storedAttrValue);

      // Validate stored attributes are truncated.
      final storedAttributes = await getStoredAttributes();
      expect(storedAttributes[storedAttrKey], storedAttrValue);
    });

    test('metric key longer than "maxLength" is truncated', () async {
      final stringBuffer = StringBuffer();
      for (var i = 0;
          i < EndpointGlobalFieldsManager.maxAttributeValueLength * 2;
          i++) {
        stringBuffer.write('a');
      }

      final longMetricKey = stringBuffer.toString();

      await fieldsManager.addMetric(longMetricKey, 12.3);

      expect(fieldsManager.globalMetrics.containsKey(longMetricKey), false);

      final storedMetricKey =
          longMetricKey.substring(0, EndpointGlobalFieldsManager.maxKeyLength);

      expect(fieldsManager.globalMetrics[storedMetricKey], 12.3);

      final storedMetrics = await getStoredMetrics();
      expect(storedMetrics[storedMetricKey], 12.3);
    });

    test('storing more than "maxCount" attributes and metrics are ignored',
        () async {
      for (var i = 0; i < EndpointGlobalFieldsManager.maxAttributes; i++) {
        await fieldsManager.addAttribute(i.toString(), i.toString());
      }

      expect(
        fieldsManager.globalAttributes.length,
        EndpointGlobalFieldsManager.maxAttributes,
      );

      // Validate additional saves are ignored
      await fieldsManager.addAttribute(attrKey1, attrValue1);

      expect(fieldsManager.globalAttributes.containsKey(attrKey1), false);

      final storedAttrs = await getStoredAttributes();
      expect(storedAttrs.containsKey(attrKey1), false);

      await fieldsManager.addMetric(metricKey1, metricValue1);

      expect(fieldsManager.globalAttributes.containsKey(metricKey1), false);

      final storedMetrics = await getStoredMetrics();
      expect(storedMetrics.containsKey(metricKey1), false);
    });
  });
}
