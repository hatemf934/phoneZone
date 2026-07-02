import 'package:phone_zone/core/api/end_point.dart';
import 'package:phone_zone/core/utils/text_manager.dart';

class CategoryItem {
  final String label;
  final String url;

  const CategoryItem({required this.label, required this.url});
}

final List<CategoryItem> categories = [
  CategoryItem(
    label: TextManager.all,
    url:
        "${EndPointClass.productbaseUrl}${EndPointClass.product}${EndPointClass.smartPhone}",
  ),
  CategoryItem(
    label: TextManager.samsung,
    url:
        "${EndPointClass.productbaseUrl}${EndPointClass.product}${EndPointClass.samsungSearch}",
  ),
  CategoryItem(
    label: TextManager.apple,
    url:
        "${EndPointClass.productbaseUrl}${EndPointClass.product}${EndPointClass.iphoneSearch}",
  ),
  CategoryItem(
    label: TextManager.oppo,
    url:
        "${EndPointClass.productbaseUrl}${EndPointClass.product}${EndPointClass.oppoSearch}",
  ),
  CategoryItem(
    label: TextManager.realme,
    url:
        "${EndPointClass.productbaseUrl}${EndPointClass.product}${EndPointClass.realmeSearch}",
  ),
  CategoryItem(
    label: TextManager.vivo,
    url:
        "${EndPointClass.productbaseUrl}${EndPointClass.product}${EndPointClass.vivoSearch}",
  ),
  CategoryItem(
    label: TextManager.laptop,
    url:
        "${EndPointClass.productbaseUrl}${EndPointClass.product}${EndPointClass.laptops}",
  ),
  CategoryItem(
    label: TextManager.tablets,
    url:
        "${EndPointClass.productbaseUrl}${EndPointClass.product}${EndPointClass.tablets}",
  ),
];
