import 'package:flutter/cupertino.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/padding_manager.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/homeView/home_body.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/homeView/shop_top_bar.dart';

class BodyHomeView extends StatelessWidget {
  const BodyHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            ColorManager.primaryColor,
            ColorManager.colorWhite,
            ColorManager.colorWhite,
            ColorManager.colorWhite,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(PaddingManager.p16),
        child: Column(
          children: [
            const SizedBox(height: HeightManager.h55),
            ShopTopBar(
              cartItemCount: 3,
              hasUnreadNotification: true,
              onCartTap: () {},
              onNotificationTap: () {},
            ),
            Expanded(child: HomeBodyDetails()),
          ],
        ),
      ),
    );
  }
}
