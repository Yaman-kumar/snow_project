class AllQuery {
  static String getAllCities = '''
   query MyQuery {
  cities {
    boundry
    city_admin_assigned
    city_admin_id
    city_admin_name
    green_markers
    green_zone
    id
    location
    manger
    name
    orange_zone
    outside_zone
    parking_zone
    red_zone
    yellow_zone
  }
}
''';

  static String getActivePassByCityIdByUserId(
      {required int cityId, required int userId}) {
    return '''
  query MyQuery {
  pass_history(where: {city_id: {_eq: $cityId}, user_id: {_eq: $userId}}) {
    id
    expiry
  }
}
''';
  }

  static String getAllScooterByCityId({required int cityId}) {
    return '''
  query MyQuery {
  scooter(where: {city_id: {_eq: $cityId}}) {
    battery
    city_id
    id
    imei
    location
    on_trip
    on_side
    status
    uuid
  }
}
''';
  }

  static String getgreenZonebyCityId({required int cityId}) {
    return '''
  query MyQuery {
  zones(where: {city_id: {_eq: $cityId}, type: {_eq: "green"}}) {
    id
    polygon
  }
}
''';
  }
}
