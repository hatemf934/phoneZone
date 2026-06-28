import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/text_manager.dart';
import 'package:phone_zone/features/auth/presentation/view/widget/pick_image_widget.dart';
import 'package:phone_zone/features/auth/presentation/view/widget/title_auth_view.dart';

class AvatarAndTitleRow extends StatelessWidget {
  const AvatarAndTitleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const TitleAuthView(
          textTitle1: TextManager.createAn,
          textTitle2: TextManager.account,
        ),
        PickImageWidget(),
      ],
    );
  }
}
