/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

class AnalyticsProperties {

  Map<String, Object> _properties = new Map<String,Object>();
  Map<String, String> _propertiesTypes = new Map<String, String>();

  void addStringProperty(String key, String value){
    _properties[key] = value;
    _propertiesTypes[key] = "STRING";
  }

  void addDoubleProperty(String key, double value){
    _properties[key] = value;
    _propertiesTypes[key] = "DOUBLE";
  }

  void addBoolProperty(String key, bool value){
    _properties[key] = value;
    _propertiesTypes[key] = "BOOL";
  }

  void addIntProperty(String key, int value){
    _properties[key] = value;
    _propertiesTypes[key] = "INT";
  }

  Map<String, Object> getAllProperties(){
    return new Map<String, Object>.from(_properties);
  }

  Map<String, String> getAllPropertiesTypes(){
    return new Map<String, String>.from(_propertiesTypes);
  }

}