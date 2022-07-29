import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'data_modal.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _controller = PageController();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: data.length,
                controller: _controller,
                itemBuilder: (context, index) => OnboardingScreenContent(
                  image: data[index].image,
                  headText: data[index].headText,
                  bodyText: data[index].bodyText,
                ),
              ),
            ),
            Row(
              children: [
                const Spacer(),
                Center(
                  child: SmoothPageIndicator(
                    controller: _controller,
                    count: 4,
                    effect: const ExpandingDotsEffect(
                        activeDotColor: Colors.yellow, spacing: 16),
                    onDotClicked: ((index) {
                      _controller.animateToPage(index,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    }),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: 60,
                  width: 80,
                  child: TextButton(
                    // onPressed: () {
                    //   _controller.nextPage(
                    //       duration: const Duration(microseconds: 500),
                    //       curve: Curves.easeIn);
                    // },
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, '/login_screen');
                    },
                    style: TextButton.styleFrom(
                      shape: const CircleBorder(),
                    ),
                    child: Row(
                      children: const [
                        Text(
                          "Next",
                          style: TextStyle(
                              color: Color(0xffF4C9A2),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xffF4C9A2),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
