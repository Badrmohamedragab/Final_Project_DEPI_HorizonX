import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class SearchByVoiceScreen extends StatefulWidget {
  const SearchByVoiceScreen({super.key});

  @override
  SearchByVoiceScreenState createState() => SearchByVoiceScreenState();
}

class SearchByVoiceScreenState extends State<SearchByVoiceScreen> {
  late stt.SpeechToText speech;
  bool isListening = false;
  String text = "Search";
  double confidence = 1.0;

  @override
  void initState() {
    super.initState();
    speech = stt.SpeechToText();
  }

  void _listen() async {
    if (!isListening) {
      bool available = await speech.initialize(
          // onStatus: (val) => print('onStatus: $val'),
          // onError: (val) => print('onError: $val'),
          );
      if (available) {
        // print("IN BLOCK");

        setState(() => isListening = true);
        speech.listen(
          onResult: (val) => setState(() {
            text = val.recognizedWords;
            if (val.hasConfidenceRating && val.confidence > 0) {
              confidence = val.confidence;
            }
          }),
        );
        // print(text);
      }
    } else {
      setState(() => isListening = false);
      speech.stop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 11),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.35,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xff005A9E).withOpacity(0.15),
                      hintText: text,
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.search,
                          color: Color(0xffFFA841),
                        ),
                        onPressed: () {},
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.12,
                  decoration: BoxDecoration(
                      color: const Color(0xff005A9E).withOpacity(0.15),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(
                    Icons.mic,
                    color: Color(0xffFFA841),
                  ),
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 5),
            GestureDetector(
              onLongPressEnd: (details) {
                setState(() {
                  isListening = false;
                });
                speech.stop();
              },
              onLongPress: _listen,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue.shade700,
                    ),
                  ),
                  Container(
                    width: 230,
                    height: 230,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue.shade800,
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue.shade900,
                    ),
                    child: const Icon(
                      Icons.mic,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
