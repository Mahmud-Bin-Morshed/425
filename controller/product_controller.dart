import 'package:get/state_manager.dart';
import 'package:morshed_app/model/products.dart';
import 'package:morshed_app/services/remote_services.dart';


class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <Empty>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await RemoteServices.fetchProducts();
      if (products != null) {
        productList.value = products;
      }
    } finally {
      isLoading(false);
    }
  }
}