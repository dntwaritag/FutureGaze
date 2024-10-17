import 'package:flutter/material.dart';

void main() {
  runApp(FutureGazeApp());
}

class FutureGazeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FutureGaze',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PredictionScreen(),
    );
  }
}

class PredictionScreen extends StatefulWidget {
  @override
  _PredictionScreenState createState() => _PredictionScreenState();
}

class _PredictionScreenState extends State<PredictionScreen> {
  final TextEditingController _inputController = TextEditingController();
  String _prediction = "";

  void _showPrediction() {
    setState(() {
      _prediction =
          "Static Prediction: Your future is bright with FutureGaze!"; // Static prediction text
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FutureGaze'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Input TextField
            TextField(
              controller: _inputController,
              decoration: InputDecoration(
                labelText: 'Enter your data',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),

            // Button to trigger prediction
            ElevatedButton(
              onPressed: _showPrediction,
              child: Text('Get Prediction'),
            ),
            SizedBox(height: 20.0),

            // Prediction display
            Text(
              _prediction,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
