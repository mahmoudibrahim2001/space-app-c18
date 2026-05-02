import 'package:flutter/material.dart';
import 'package:space/data/planet_data.dart';
import 'package:space/modules/planet_details.dart';

class PlanetItem extends StatelessWidget {
  final Planet planet;
  final VoidCallback next;
  final VoidCallback back;
  final bool showRight;
  final bool showLeft;

  const PlanetItem({
    super.key,
    required this.planet,
    required this.next,
    required this.back,
    required this.showRight,
    required this.showLeft,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    Size size = MediaQuery.sizeOf(context);
    return Column(
      spacing: size.height * 0.02,
      children: [
        Expanded(child: Image.asset(planet.pngImage)),
        SizedBox(height: size.height * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Visibility(
              visible: showLeft,
              child: CircleAvatar(
                child: IconButton(
                  onPressed: () {
                    back.call();
                  },
                  icon: const Icon(Icons.chevron_left),
                ),
              ),
            ),
            Text(planet.name, style: theme.textTheme.bodyLarge),
            Visibility(
              visible: showRight,
              child: CircleAvatar(
                child: IconButton(
                  onPressed: () {
                    next.call();
                  },
                  icon: const Icon(Icons.chevron_right),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: size.height * 0.02),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            // padding: EdgeInsets.symmetric(horizontal: 26, vertical: 18),
            fixedSize: const Size(double.infinity, 50),
          ),
          onPressed: () {
            Navigator.pushNamed(
              context,
              PlanetDetails.routeName,
              arguments: planet,
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Explore ${planet.name}",
                style: const TextStyle(fontSize: 18),
              ),
              const Icon(Icons.chevron_right_rounded),
            ],
          ),
        ),
      ],
    );
  }
}
