//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:graduation/app/routes/app_pages.dart';
import 'package:graduation/darkMode.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

void main() async {
  await GetStorage.init();
  await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
  OneSignal.shared.setLogLevel(OSLogLevel.none, OSLogLevel.none);
  OneSignal.shared.setAppId('5f15a4db-922d-4046-a569-652a803f55f9');
  await OneSignal.shared.getDeviceState().then((value) {});
  await OneSignal.shared.consentGranted(true);
  await OneSignal.shared.promptUserForPushNotificationPermission();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: DarkMode().lightTheme,
      darkTheme: DarkMode().darkTheme,
      themeMode: DarkMode().getThemeMode(),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: Locale('ar', 'AR'),
      supportedLocales: [
        Locale('ar', 'AR'),
        Locale('en', 'US'),
      ],
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.LOGO_SCREEN,
      //تحديد شاشة البداية
      getPages: AppPages.pages,
    );
  }
}
