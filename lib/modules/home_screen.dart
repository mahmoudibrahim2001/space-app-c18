import 'package:flutter/material.dart';
import 'package:space/data/planet_data.dart';
import 'package:space/widgets/planet_item.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  static const String routeName = "home";

  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    Size size = MediaQuery.sizeOf(context);
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/home.png")),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              Text("Explore", style: theme.textTheme.bodyLarge),
              SizedBox(height: size.height * 0.1),
              Text(
                "Which planet\nwould you like to explore",
                // textAlign: TextAlign.start,
                style: theme.textTheme.bodyLarge,
              ),

              Expanded(
                child: PageView.builder(
                  controller: pageController,

                  itemCount: solarSystem.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(16),
                      child: PlanetItem(
                        showRight: index == solarSystem.length - 1
                            ? false
                            : true,
                        showLeft: index == 0 ? false : true,
                        planet: solarSystem[index],
                        next: () {
                          if (pageController.page?.toInt() ==
                              solarSystem.length - 1) {
                            return;
                          } else {
                            pageController.nextPage(
                              duration: const Duration(milliseconds: 250),
                              curve: Curves.easeInOut,
                            );
                          }
                        },
                        back: () {
                          if (pageController.page?.toInt() == 0) return;

                          pageController.previousPage(
                            duration: const Duration(milliseconds: 250),
                            curve: Curves.easeInOut,
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
