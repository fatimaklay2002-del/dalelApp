import 'package:dalel_project/app/dalel_app.dart';
import 'package:dalel_project/core/database/cache/cache_helper.dart';
import 'package:dalel_project/core/di/injection.dart';
import 'package:dalel_project/core/functions/check_state_changes.dart';
import 'package:dalel_project/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupLocator();
  await getIt.get<CacheHelper>().init();
  checkStateChanges();
  runApp(const DalelApp());
}
