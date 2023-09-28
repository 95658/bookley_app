import 'package:bookley_app/core/utils/app_router.dart';
import 'package:bookley_app/core/utils/app_images.dart';
import 'package:bookley_app/features/Splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {


  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    InitSlidingAnimation();
    NavigateToHome();

  }




  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AppAssets.Logo),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }
  void InitSlidingAnimation() {

    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }

  void NavigateToHome() {
    Future.delayed(const Duration(seconds: 2), (){
      // Get.to(()=> const HomeView(), transition: Transition.fade , duration: KTranstionDuration  );
      GoRouter.of(context).push(AppRouter.KHomeView);
    });
  }
}
