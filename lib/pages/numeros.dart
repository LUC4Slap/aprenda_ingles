import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Numeros extends StatefulWidget {
  const Numeros({super.key});

  @override
  State<Numeros> createState() => _NumerosState();
}

class _NumerosState extends State<Numeros> {
  AudioPlayer audioPlayer = AudioPlayer();

  _executarAudio(String animal) async {
    await audioPlayer.play(AssetSource('audios/${animal}.mp3'));
    await audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      children: [
        GestureDetector(
          onTap: () => _executarAudio('1'),
          child: Image.asset('assets/imagens/1.png'),
        ),
        GestureDetector(
          onTap: () => _executarAudio('2'),
          child: Image.asset('assets/imagens/2.png'),
        ),
        GestureDetector(
          onTap: () => _executarAudio('3'),
          child: Image.asset('assets/imagens/3.png'),
        ),
        GestureDetector(
          onTap: () => _executarAudio('4'),
          child: Image.asset('assets/imagens/4.png'),
        ),
        GestureDetector(
          onTap: () => _executarAudio('5'),
          child: Image.asset('assets/imagens/5.png'),
        ),
        GestureDetector(
          onTap: () => _executarAudio('6'),
          child: Image.asset('assets/imagens/6.png'),
        ),
      ],
    );
  }
}
