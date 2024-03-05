import 'package:flutter/material.dart';
import 'package:swamp/features/effects/presentation/widgets/glass_back_drop_filter.dart';
import 'package:swamp/features/effects/presentation/widgets/glass_linear_gradient_filter.dart';

import '../widgets/glass_box_shadow_filter.dart';
import '../widgets/stunning_glass_effects.dart';

class GlassList extends StatelessWidget {
  const GlassList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("GlassList")),
        body: const SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  GlassBackDropFilter(),
                  SizedBox(height: 20),
                  GlassBoxShadow(),
                  SizedBox(height: 20),
                  // StunningGlassEffects(),
                  // SizedBox(height: 20),
                  // GlassLinearGradient( ),
                  // SizedBox(height: 20),
                ],
              ),
            )));
  }
}
