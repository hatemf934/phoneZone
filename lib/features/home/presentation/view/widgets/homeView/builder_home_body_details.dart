import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_zone/core/api/end_point.dart';
import 'package:phone_zone/core/widgets/error_view.dart';
import 'package:phone_zone/features/home/presentation/bloc/phone_cubit/phone_cubit.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/homeView/custom_grid_view.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/homeView/shimmer_grid_view.dart';

class BuilderHomeBodyDetails extends StatelessWidget {
  const BuilderHomeBodyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhoneCubit, PhoneState>(
      builder: (context, state) {
        if (state is PhoneLoading) {
          return ShimmerGridView();
        } else if (state is PhoneSeccess) {
          return CustomGridView(phoneModel: state.phoneList);
        } else if (state is PhoneFailure) {
          return ErrorView(
            failure: state.failure,
            onRetry: () {
              context.read<PhoneCubit>().getPhones(
                baseUrl:
                    "${EndPointClass.productbaseUrl}${EndPointClass.product}${EndPointClass.smartPhone}",
              );
            },
          );
        }
        return SizedBox.shrink();
      },
    );
  }
}
