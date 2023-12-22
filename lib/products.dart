class ProductData {
  final String productId;
  final ProductType type;

  const ProductData(this.productId, this.type);
}

enum ProductType {
  subscription,
  nonSubscription,
}

const productDataMap = {
  'dash_consumable_2k': ProductData(
    'dash_consumable_2k',
    ProductType.nonSubscription,
  ),
  'dash_upgrade_3d': ProductData(
    'dash_upgrade_3d',
    ProductType.nonSubscription,
  ),
  'dum_pro_1': ProductData(
    'dum_pro_1',
    ProductType.nonSubscription,
  ),
  'dum_pro_2': ProductData(
    'dum_pro_2',
    ProductType.nonSubscription,
  ),
  'dash_subscription_doubler': ProductData(
    'dash_subscription_doubler',
    ProductType.subscription,
  ),
  'sub_for_dummy': ProductData(
    'sub_for_dummy',
    ProductType.subscription,
  ),
};
