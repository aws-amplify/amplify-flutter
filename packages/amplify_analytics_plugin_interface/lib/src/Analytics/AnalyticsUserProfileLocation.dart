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
