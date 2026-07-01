import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_zone/core/widgets/error_view.dart';
import 'package:phone_zone/features/home/data/model/phone_model.dart';
import 'package:phone_zone/features/home/presentation/bloc/phone_details/phone_details_cubit.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/product_details_content.dart';

class BuilderBodyProductDetails extends StatelessWidget {
  const BuilderBodyProductDetails({super.key, required this.phoneModel});
  final PhoneModel phoneModel;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhoneDetailsCubit, PhoneDetailsState>(
      builder: (context, state) {
        if (state is PhoneDetailLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is PhoneDetailFailure) {
          return ErrorView(
            failure: state.failure,
            onRetry: () {
              context.read<PhoneDetailsCubit>().getPhoneByid(
                phoneModel.idProduct,
              );
            },
          );
        } else if (state is PhoneDetailSeccess) {
          return ProductDetailsContent(phoneModel: state.phoneModel);
        }
        return SizedBox.shrink();
      },
    );
  }
}
