import 'package:flutter/material.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/custom_animated_container.dart';

class AddToCartButton extends StatefulWidget {
  const AddToCartButton({super.key});

  @override
  State<AddToCartButton> createState() => _AddToCartButtonState();
}

class _AddToCartButtonState extends State<AddToCartButton>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;
  bool added = false;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 120),
      lowerBound: 0.95,
      upperBound: 1.0,
      value: 1.0,
    );
    scaleAnimation = controller;
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Future<void> handleTap() async {
    await controller.reverse();
    await controller.forward();
    setState(() => added = true);
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) setState(() => added = false);
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: scaleAnimation,
      child: GestureDetector(
        onTap: handleTap,
        child: CustomAnimatedContainer(added: added),
      ),
    );
  }
}
