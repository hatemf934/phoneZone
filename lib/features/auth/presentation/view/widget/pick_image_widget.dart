import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:phone_zone/core/utils/assets_manager.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/font_size_manager.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/raduis_manager.dart';
import 'package:phone_zone/core/utils/width_manager.dart';
import 'package:phone_zone/features/auth/presentation/bloc/user_cubit/user_cubit.dart';

class PickImageWidget extends StatelessWidget {
  const PickImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit, UserState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SizedBox(
          width: WidthManager.w120,
          height: HeightManager.h120,
          child: context.read<UserCubit>().profilePic == null
              ? CircleAvatar(
                  backgroundColor: ColorManager.colorWhite,
                  backgroundImage: const AssetImage(AssetsManager.avatarImage),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 3,
                        right: 8,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: WidthManager.w40,
                            width: HeightManager.h40,
                            decoration: BoxDecoration(
                              color: ColorManager.primaryColor,
                              border: Border.all(
                                color: ColorManager.colorWhite,
                                width: WidthManager.w4,
                              ),
                              borderRadius: BorderRadius.circular(
                                RaduisManager.r25,
                              ),
                            ),
                            child: GestureDetector(
                              onTap: () async {
                                await ImagePicker()
                                    .pickImage(source: ImageSource.gallery)
                                    .then(
                                      (value) => context
                                          .read<UserCubit>()
                                          .upLoadProfilePic(value!),
                                    );
                              },
                              child: const Icon(
                                Icons.camera_alt_sharp,
                                color: ColorManager.colorWhite,
                                size: FontSizeManager.font18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : CircleAvatar(
                  backgroundImage: FileImage(
                    context.read<UserCubit>().profilePic != null
                        ? File(context.read<UserCubit>().profilePic!.path)
                        : File(AssetsManager.avatarImage),
                  ),
                ),
        );
      },
    );
  }
}
