import 'package:googleapis/androidpublisher/v3.dart';

import 'iap_repository.dart';
import 'products.dart';
import 'purchase_handler.dart';

class AppStorePurchaseHandler extends PurchaseHandler {

  final IapRepository iapRepository;

  AppStorePurchaseHandler(

      this.iapRepository,
      );

  @override
  Future<bool> handleNonSubscription({
    required String userId,
    required ProductData productData,
    required String token,
  }) async {
    return true;
  }

  @override
  Future<bool> handleSubscription({
    required String userId,
    required ProductData productData,
    required String token,
  }) async {
    return true;
  }
}
