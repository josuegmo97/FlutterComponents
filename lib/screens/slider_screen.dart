import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sliders & Checks")),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const Text("Sliders Android"),
            Slider(
                min: 50,
                max: 400,
                activeColor: AppTheme.primary,
                value: _sliderValue,
                onChanged: _sliderEnabled
                    ? (value) {
                        setState(() {
                          _sliderValue = value;
                        });
                      }
                    : null),
            const SizedBox(height: 40),
            const Text("Sliders Android"),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: Text(
                "If you are on an iOS device this slider will have a different design, otherwise it will look the same as above.",
                style: TextStyle(fontSize: 10, color: Colors.red),
              ),
            ),
            Slider.adaptive(
                min: 50,
                max: 400,
                activeColor: AppTheme.primary,
                value: _sliderValue,
                onChanged: _sliderEnabled
                    ? (value) {
                        setState(() {
                          _sliderValue = value;
                        });
                      }
                    : null),
            Checkbox(
                value: _sliderEnabled,
                onChanged: (value) => setState(() {
                      _sliderEnabled = value ?? true;
                    })),
            CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text('Enabled Slider'),
              value: _sliderEnabled,
              onChanged: (value) => setState(() {
                _sliderEnabled = value ?? true;
              }),
            ),
            Switch(
                value: _sliderEnabled,
                onChanged: (value) => setState(() {
                      _sliderEnabled = value;
                    })),
            SwitchListTile(
              activeColor: AppTheme.primary,
              title: const Text('Enabled Slider'),
              value: _sliderEnabled,
              onChanged: (value) => setState(() {
                _sliderEnabled = value;
              }),
            ),
            SwitchListTile.adaptive(
              activeColor: AppTheme.primary,
              title: const Text('Enabled Slider IOS'),
              value: _sliderEnabled,
              onChanged: (value) => setState(() {
                _sliderEnabled = value;
              }),
            ),

            // const AboutListTile(),

            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: Image(
                    image: const NetworkImage(
                        "https://imagenpng.com/wp-content/uploads/2015/09/imagenes-png.png"),
                    fit: BoxFit.contain,
                    width: _sliderValue,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}
