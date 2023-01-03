import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:get/get.dart';


class FirebaseAnalyticsService extends GetxService{
  FirebaseAnalytics? analytics;

  Future<FirebaseAnalyticsService> init() async {
    analytics= FirebaseAnalytics.instance;
    return this;
  }

  logEvent() async {
    await FirebaseAnalytics.instance.logEvent(
    name: "select_content",
    parameters: {
        "content_type": "rr",
        "item_id": "222",
    },
).then((value) => print("asd"));
  }


}
