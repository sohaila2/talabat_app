import 'package:flutter/material.dart';
import 'package:talabat_app/components/dot_indicator.dart';
import 'package:talabat_app/components/onboarding_component.dart';
import 'package:talabat_app/models/onboard.dart';
import 'package:talabat_app/views/home_screen.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  late PageController _pageController;
int _pageIndex = 0;
  @override
  void initState() {
   _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
  _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: demo_data.length,
                  controller: _pageController,
                  onPageChanged: (index){
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  itemBuilder: (context, index) => OnboardContent(
                    image: demo_data[index].image,
                    title: demo_data[index].title,
                    description: demo_data[index].description),
                ),
              ),
              Row(
                children: [
                 ...List.generate(demo_data.length,
                         (index) => Padding(
                           padding: const EdgeInsets.only(right: 4 ),
                           child: DotIndicator(
                             isActive: index == _pageIndex,
                           ),
                         )),
                  Spacer(),
                  SizedBox(height: 50,
                 // width: 120,
                  child: ElevatedButton(
                    onPressed: (){
if(_pageIndex == demo_data.length - 1){
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (_) => HomeScreen(),
    ),
  );
}
_pageController.nextPage(
  duration: Duration(milliseconds: 300),
  curve: Curves.ease,
);

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                //      shape: const CircleBorder()

                    ),
                    child: Text(
                      _pageIndex == demo_data.length - 1 ?   "Get Started" : "Next"
                    ),
                  ),),
                ],
              )
            ],
          ),
        ),

      ),
    );
  }
}
