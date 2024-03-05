/*
import 'package:ar_flutter_plugin/managers/ar_session_manager.dart';
import 'package:flutter/material.dart';
import 'package:ar_flutter_plugin/ar_flutter_plugin.dart';

class ArBoth extends StatefulWidget {
  const ArBoth({super.key});

  @override
  State<ArBoth> createState() => _ArBothState();
}

class _ArBothState extends State<ArBoth> {
  ArFlutterPlugin? arFlutterPlugin;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter AR Experience'),
      ),
      body: ARView(
        onARViewCreated: onARViewCreated,
      ),
    );
  }

  void onARViewCreated(ARSessionManager arSessionManager) {
    arSessionManager.onInitialize(
      showFeaturePoints: false,
      showPlanes: true,
      customPlaneTexturePath: "assets/texture.png",
      showWorldOrigin: true,
    );
    // Additional AR session setup can be done here
  }
}*/
