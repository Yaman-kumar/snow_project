import 'package:avanza/hasura/hasura_connect.dart';
import 'package:get/get.dart';

class HasuraService extends GetxService{
  String url = 'https://mutual-sawfish-85.hasura.app/v1/graphql';
  late HasuraConnectWithAuth hasuraConnect;

  @override
  void onInit() {
    super.onInit();
    hasuraConnect = HasuraConnectWithAuth(url);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
