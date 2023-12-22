import 'products.dart';

abstract class PurchaseHandler {

  /// Verify if purchase is valid and update the database
  Future<bool> verifyPurchase({
    required String userId,
    required ProductData productData,
    required String token,
  }) async {
    switch (productData.type) {
      case ProductType.subscription:
        return handleSubscription(
          userId: userId,
          productData: productData,
          token: token,
        );
      case ProductType.nonSubscription:
        return handleNonSubscription(
          userId: userId,
          productData: productData,
          token: token,
        );
    }
  }


  Future<bool> handleNonSubscription({
    required String userId,
    required ProductData productData,
    required String token,
  });

  Future<bool> handleSubscription({
    required String userId,
    required ProductData productData,
    required String token,
  });
}
