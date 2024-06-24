
// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';
import 'package:flip_panel_plus/flip_panel_plus.dart';

class CustomTimer extends StatefulWidget {
  const CustomTimer({
    Key? key,
    required this.width,
    required this.height,
    required this.textColor,
    required this.courseDate,
    required this.textSize,
  }) : super(key: key);

  final double width;
  final double height;
  final Color textColor;
  final DateTime courseDate;
  final double textSize;

  @override
  State<CustomTimer> createState() => _CustomTimerState();
}

class _CustomTimerState extends State<CustomTimer> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        // Atualiza o widget a cada segundo
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Duration difference = widget.courseDate.difference(DateTime.now());

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlipClockPlus.countdown(
          duration: difference,
          digitColor: widget.textColor,
          digitSize: widget.textSize,
          backgroundColor: Colors.red, // cor de fundo opcional
          onDone: () {
            // Aqui você pode adicionar alguma ação quando o contador terminar
            print('Contador terminou!');
          },
        ),
      ],
    );
  }
}
