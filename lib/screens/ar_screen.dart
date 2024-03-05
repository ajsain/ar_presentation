/*
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:arkit_plugin/arkit_plugin.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as vector;
class ArKitScreen extends StatefulWidget {
  const ArKitScreen({super.key});

  @override
  State<ArKitScreen> createState() => _ArKitScreenState();
}

class _ArKitScreenState extends State<ArKitScreen> {
  late ARKitController arkitController;

  @override
  void dispose() {
    arkitController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('ARKit in Flutter'),
      ),
      body: Container(
        child: ARKitSceneView(
          onARKitViewCreated: onARKitViewCreated,
          //environmentTexturing: ARWorldTrackingConfigurationEnvironmentTexturing.automatic,
        ),
      )
  );

  void onARKitViewCreated(ARKitController arkitController) {
    this.arkitController = arkitController;

   */
/* this.arkitController.add(_createSphere());
    this.arkitController.add(_createPlane());*//*

    this.arkitController.add(_createText());
    */
/*this.arkitController.add(_createBox());
    this.arkitController.add(_createCylinder());
    this.arkitController.add(_createCone());
    this.arkitController.add(_createPyramid());
    this.arkitController.add(_createTube());
    this.arkitController.add(_createTorus());
    this.arkitController.add(_createCapsule());*//*

  }
  ARKitNode _createText() {
    final text = ARKitText(
      text: 'AR Personalization',
      extrusionDepth: 1,
      materials: [
        ARKitMaterial(
          diffuse: ARKitMaterialProperty.color(Colors.blue),
        )
      ],
    );
    return ARKitNode(
      geometry: text,
      position: vector.Vector3(-0.3, 0.3, -1.4),
      scale: vector.Vector3(0.02, 0.02, 0.02),
    );
  }
}
*/
