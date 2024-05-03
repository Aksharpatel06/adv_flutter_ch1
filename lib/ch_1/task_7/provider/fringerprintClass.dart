import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:local_auth/local_auth.dart';

class FringerProvider extends ChangeNotifier {
  final auth = LocalAuthentication();
  bool reponse= false;

  Future<void> checkFringerprint() async {
    bool isSupported = await auth.isDeviceSupported();
    bool isActive = await auth.canCheckBiometrics;


    if (isSupported && isActive) {
      reponse = await auth.authenticate(
          localizedReason: 'Please add your fingerprint...');

      if (reponse) {
        log('fingerprint successfully worked!');
      }
    } else {
      log("Your device is not supported for fingerprint...!");
    }
    notifyListeners();
  }
}
