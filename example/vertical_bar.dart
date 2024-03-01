import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class VerticalBar extends StatelessWidget {
  const VerticalBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          bottom: 24,
          top: 60,
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const StepProgressIndicator(
                    totalSteps: 10,
                    direction: Axis.vertical,
                    currentStep: 2,
                  ),
                  const StepProgressIndicator(
                    totalSteps: 20,
                    direction: Axis.vertical,
                    currentStep: 2,
                    selectedColor: Colors.amber,
                    unselectedColor: Colors.black12,
                    size: 10,
                  ),
                  const StepProgressIndicator(
                    totalSteps: 8,
                    direction: Axis.vertical,
                    currentStep: 2,
                    roundedEdges: Radius.circular(12),
                    size: 10,
                    gradientColor: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.red, Colors.blueAccent],
                    ),
                  ),
                  StepProgressIndicator(
                    totalSteps: 25,
                    direction: Axis.vertical,
                    customColor: (index) => Colors.deepOrange,
                    customStep: (index, color, _) => Icon(
                      Icons.tag_faces,
                      color: color,
                    ),
                  ),
                  StepProgressIndicator(
                    totalSteps: 10,
                    direction: Axis.vertical,
                    padding: 6,
                    size: 30,
                    customColor: (index) => Colors.lightBlue,
                    customStep: (index, color, _) => Container(
                      color: color,
                      alignment: Alignment.center,
                      child: Text('$index'),
                    ),
                  ),
                  StepProgressIndicator(
                    totalSteps: 20,
                    direction: Axis.vertical,
                    padding: 3,
                    size: 40,
                    progressDirection: TextDirection.rtl,
                    customColor: (index) => Colors.lightGreen,
                    customStep: (index, color, _) => Container(
                      color: color,
                      alignment: Alignment.center,
                      child: Text('$index'),
                    ),
                  ),
                  const StepProgressIndicator(
                    totalSteps: 100,
                    direction: Axis.vertical,
                    currentStep: 87,
                    padding: 0,
                    selectedColor: Colors.redAccent,
                    unselectedColor: Colors.black12,
                    progressDirection: TextDirection.rtl,
                    selectedSize: 10,
                    roundedEdges: Radius.elliptical(6, 30),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
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
