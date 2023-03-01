  import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:mini_zoo/screens/login/login_screen.dart';
import 'package:mini_zoo/utils/app_color.dart';
import 'package:mini_zoo/utils/app_constants.dart';
import 'package:mini_zoo/utils/preference_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroScreenDefault extends StatelessWidget {
  static var routeName = "/intro_screen";
  final PageController _pageController = PageController();


  List<OnBoardModel> onBoardData = [
     OnBoardModel(
      title: "Shop for your pet",
      description: "We will help you to find your animal best products",
      imgUrl: AppConstants.petBagImage,
    ),
     OnBoardModel(
      title: "Life is better with a pet",
      description:
      "We will help you to find your animal best friend",
      imgUrl: AppConstants.petHouseImage,
    ),
     OnBoardModel(
      title: "Fast delivery",
      description:
      "Donate, the money you donate means a lot in helping animals in need",
      imgUrl: AppConstants.petCarImage,
    ),
  ];

  IntroScreenDefault({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: OnBoard(
        onBoardData: onBoardData ,
        titleStyles: const TextStyle(
          fontSize: 24,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,

        ),
        descriptionStyles: TextStyle(
          fontSize: 16,
          color: Colors.brown.shade300,
          fontFamily: 'Poppins'),
        pageIndicatorStyle: const PageIndicatorStyle(
          width: 70,
          inactiveColor: Colors.black12,
          activeColor: Color(AppColor.splashColor),
          inactiveSize: Size(8, 8),
          activeSize: Size(12, 12),
        ),
        imageWidth: 200,
        imageHeight: 200,
        nextButton: OnBoardConsumer(
          builder: (context, ref, child){
            final state = ref.watch(onBoardStateProvider);
            return InkWell(
              onTap: () => _onNextTap(state,context),
              child: Container(
                margin:const EdgeInsets.only(bottom: 16),
                width: 160,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(colors: [Colors.orange,Colors.orangeAccent],)
                  ),
                child: Text(
                  state.isLastPage ? "Get Started" : "Next",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            );
          },
        ),
        pageController: _pageController,
        // Either Provide onSkip Callback or skipButton Widget to handle skip state
        onSkip: () {
          Prefs.setBool(AppConstants.isReachedToLoginPage, true);
          Navigator.pushNamedAndRemoveUntil(context, LoginScreen.routeName, (route) => false);
          },
        // Either Provide onDone Callback or nextButton Widget to handle done state
        onDone: () {
          print('done tapped');
        },
      ),
    );
  }

  void _onNextTap(OnBoardState onBoardState,BuildContext context) {
    if (!onBoardState.isLastPage) {
      _pageController.animateToPage(
        onBoardState.page + 1,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOutSine,
      );
    } else {
      Prefs.setBool(AppConstants.isReachedToLoginPage, true);
      Navigator.pushNamedAndRemoveUntil(context, LoginScreen.routeName, (route) => false);
    }
  }
}
