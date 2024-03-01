import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

/// Examples of step_progress_indicators, direction [Axis.horizontal]
class HorizontalBar extends StatelessWidget {
  const HorizontalBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 24,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const StepProgressIndicator(
                      totalSteps: 10,
                    ),
                    const StepProgressIndicator(
                      totalSteps: 10,
                      currentStep: 6,
                      selectedColor: Colors.red,
                      unselectedColor: Colors.yellow,
                    ),
                    const StepProgressIndicator(
                      totalSteps: 20,
                      currentStep: 6,
                      size: 10,
                      selectedColor: Colors.purple,
                      unselectedColor: Colors.transparent,
                    ),
                    const StepProgressIndicator(
                      totalSteps: 15,
                      currentStep: 12,
                      size: 20,
                      selectedColor: Colors.amber,
                      unselectedColor: Colors.black,
                      roundedEdges: Radius.circular(10),
                      gradientColor: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.orange, Colors.white],
                      ),
                    ),
                    const StepProgressIndicator(
                      totalSteps: 100,
                      currentStep: 32,
                      size: 8,
                      padding: 0,
                      selectedColor: Colors.yellow,
                      unselectedColor: Colors.cyan,
                      roundedEdges: Radius.circular(10),
                      selectedGradientColor: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.yellowAccent, Colors.deepOrange],
                      ),
                      unselectedGradientColor: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.black, Colors.blue],
                      ),
                    ),
                    const StepProgressIndicator(
                      totalSteps: 12,
                      currentStep: 4,
                      padding: 6,
                      size: 12,
                      progressDirection: TextDirection.rtl,
                      selectedColor: Colors.green,
                      unselectedColor: Colors.black12,
                      selectedGradientColor: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.yellowAccent, Colors.deepOrange],
                      ),
                      unselectedGradientColor: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.black, Colors.blue],
                      ),
                    ),
                    StepProgressIndicator(
                      totalSteps: 5,
                      padding: 20,
                      size: 20,
                      customColor: (index) => index == 0
                          ? Colors.redAccent
                          : index == 4
                              ? Colors.blueAccent
                              : Colors.deepOrange,
                    ),
                    StepProgressIndicator(
                      totalSteps: 6,
                      currentStep: 4,
                      size: 36,
                      selectedColor: Colors.black,
                      unselectedColor: Colors.lightBlue,
                      customStep: (index, color, _) => color == Colors.black
                          ? ColoredBox(
                              color: color,
                              child: const Icon(
                                Icons.check,
                                color: Colors.white,
                              ),
                            )
                          : ColoredBox(
                              color: color,
                              child: const Icon(
                                Icons.remove,
                              ),
                            ),
                    ),
                    StepProgressIndicator(
                      totalSteps: 10,
                      currentStep: 7,
                      selectedColor: Colors.pink,
                      unselectedColor: Colors.amber,
                      customSize: (index, _) => (index + 1) * 10.0,
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              'https//www.sandromaglione.com',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
