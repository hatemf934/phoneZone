import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/width_manager.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/icon_button_app_bar.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/search_app_bar.dart';

class ShopTopBar extends StatelessWidget {
  final ValueChanged<String>? onSearchChanged;
  final VoidCallback? onCartTap;
  final VoidCallback? onNotificationTap;
  final int cartItemCount;
  final bool hasUnreadNotification;

  const ShopTopBar({
    super.key,
    this.onSearchChanged,
    this.onCartTap,
    this.onNotificationTap,
    this.cartItemCount = 0,
    this.hasUnreadNotification = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: SearchAppBar(onChanged: onSearchChanged)),
        const SizedBox(width: WidthManager.w8),
        IconButtonAppBar(
          icon: Icons.shopping_cart_outlined,
          badgeCount: cartItemCount,
          onTap: onCartTap,
        ),
        const SizedBox(width: WidthManager.w4),
        IconButtonAppBar(
          icon: Icons.notifications_outlined,
          showDot: hasUnreadNotification,
          onTap: onNotificationTap,
        ),
      ],
    );
  }
}
