import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as vector;
class ArCoreScreen extends StatefulWidget {
  const ArCoreScreen({super.key});

  @override
  State<ArCoreScreen> createState() => _ArCoreScreenState();
}

class _ArCoreScreenState extends State<ArCoreScreen> {
  late ArCoreController arcoreController;

  @override
  void dispose() {
    arcoreController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('ARKit in Flutter'),
      ),
      body: Container(
        child: ArCoreView(
          onArCoreViewCreated: onARCoreViewCreated,
          //environmentTexturing: ARWorldTrackingConfigurationEnvironmentTexturing.automatic,
        ),
      )
  );

  void onARCoreViewCreated(ArCoreController arcoreController) {
    this.arcoreController = arcoreController;
    _addSphere(arcoreController);
    _addCylindre(arcoreController);
    _addCube(arcoreController);
  }
  void _addSphere(ArCoreController controller) {
    final material = ArCoreMaterial(
        color: const Color.fromARGB(120, 66, 134, 244));
    final sphere = ArCoreSphere(
      materials: [material],
      radius: 0.1,
    );
    final node = ArCoreNode(
      shape: sphere,
      position: vector.Vector3(0, 0, -1.5),
    );
    controller.addArCoreNode(node);
  }

  void _addCylindre(ArCoreController controller) {
    final material = ArCoreMaterial(
      color: Colors.red,
      reflectance: 1.0,
    );
    final cylindre = ArCoreCylinder(
      materials: [material],
      radius: 0.5,
      height: 0.3,
    );
    final node = ArCoreNode(
      shape: cylindre,
      position: vector.Vector3(0.0, -0.5, -2.0),
    );
    controller.addArCoreNode(node);
  }

  void _addCube(ArCoreController controller) {
    final material = ArCoreMaterial(
      color: const Color.fromARGB(120, 66, 134, 244),
      metallic: 1.0,
    );
    final cube = ArCoreCube(
      materials: [material],
      size: vector.Vector3(0.5, 0.5, 0.5),
    );
    final node = ArCoreNode(
      shape: cube,
      position: vector.Vector3(-0.5, 0.5, -3.5),
    );
    controller.addArCoreNode(node);
  }
}
