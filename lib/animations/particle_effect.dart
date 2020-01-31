import 'package:flutter/material.dart';
import 'package:flutter_particles/particles.dart';

class ShadyParticleEffect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Particles(20, Colors.blue),
    );
  }
}
