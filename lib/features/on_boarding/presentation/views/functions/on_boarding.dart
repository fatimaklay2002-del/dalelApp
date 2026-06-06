import 'package:dalel_project/core/database/cache/cache_helper.dart';
import 'package:dalel_project/core/di/injection.dart';

void onBoardingVisited() {
  getIt.get<CacheHelper>().saveData(key: "isOnBoardingVisited", value: true);
}