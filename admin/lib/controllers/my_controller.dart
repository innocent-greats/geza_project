import 'package:demopod_client/demopod_client.dart';
import 'package:flatten/services/theme/theme_customizer.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

// Sets up a singleton client object that can be used to talk to the server from
// anywhere in our app. The client is generated from your server code.
// The client is set up to connect to a Serverpod running on a local server on
// the default port. You will need to modify this to connect to staging or
// production servers.

abstract class MyController extends GetxController {
  var client = Client(
      'https://e5b3-2c0f-f8f0-c600-1f02-886e-1b8f-168e-5fec.eu.ngrok.io/')
    ..connectivityMonitor = FlutterConnectivityMonitor();
  @override
  void onInit() {
    super.onInit();
    ThemeCustomizer.addListener((old, newVal) {
      if (old.theme != newVal.theme ||
          (old.currentLanguage.languageName !=
              newVal.currentLanguage.languageName)) {
        update();
      }
    });
  }
}
