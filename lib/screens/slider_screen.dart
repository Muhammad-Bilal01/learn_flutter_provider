import 'package:flutter/material.dart';
import 'package:learn_flutter_provider/provider/slider_provider.dart';
import 'package:provider/provider.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<SliderProvider>(context, listen: true);

    print("Build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<SliderProvider>(builder: (context, value, child) {
            return Slider(
                min: 0,
                max: 1,
                value: value.slider,
                onChanged: (slide) {
                  value.setSlider(slide);
                });
          }),
          const SizedBox(height: 10),
          Consumer<SliderProvider>(builder: (context, value, child) {
            return Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red.withOpacity(value.slider),
                    height: 100,
                    child: Text("Box 1"),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green.withOpacity(value.slider),
                    height: 100,
                    child: Text("Box 2"),
                  ),
                ),
              ],
            );
          })
        ],
      ),
    );
  }
}
