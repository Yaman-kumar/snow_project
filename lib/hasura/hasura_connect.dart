import 'package:hasura_connect/hasura_connect.dart';

class HasuraConnectWithAuth extends HasuraConnect {
  HasuraConnectWithAuth(String url) : super(url);
  @override
  // ignore: overridden_fields
  var headers = {
    'content-type': 'application/json',
    'x-hasura-admin-secret': 'Kse2vS5WNpaD2N6f8MLFBIpbDIDJUqhlSUYjoPw21PTSIJ8bfhza3Bl3nyaiQJ6f'
  };
}
