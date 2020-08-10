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

class AnalyticsUserProfileLocation {

  double latitude;
  double longitude;
  String postalCode;
  String city;
  String region;
  String country;

  AnalyticsUserProfileLocation({
    double latitude, double longitude, String postalCode, String city, String region, String country
  }){
    this.latitude = latitude;
    this.longitude = longitude;
    this.postalCode = postalCode;
    this.city = city;
    this.region = region;
    this.country = country;
  }

  Map<String, Object> getAllProperties(){

    Map<String, Object> allProperties = {};

    if(latitude != null ){
      allProperties["latitude"] = latitude;
    }
    if(longitude != null ){
      allProperties["longitude"] = longitude;
    }
    if(postalCode != null){
      allProperties["postalCode"] = postalCode;
    }
    if(city != null){
      allProperties["city"] = city;
    }
    if(region != null){
      allProperties["region"] = region;
    }
    if(country != null){
      allProperties["country"] = country;
    }

    return allProperties;
  }

}
