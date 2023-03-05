import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Bichos extends StatefulWidget {
  const Bichos({super.key});

  @override
  State<Bichos> createState() => _BichosState();
}

class _BichosState extends State<Bichos> {
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
          onTap: () => _executarAudio('cao'),
          child: Image.asset('assets/imagens/cao.png'),
        ),
        GestureDetector(
          onTap: () => _executarAudio('gato'),
          child: Image.asset('assets/imagens/gato.png'),
        ),
        GestureDetector(
          onTap: () => _executarAudio('leao'),
          child: Image.asset('assets/imagens/leao.png'),
        ),
        GestureDetector(
          onTap: () => _executarAudio('macaco'),
          child: Image.asset('assets/imagens/macaco.png'),
        ),
        GestureDetector(
          onTap: () => _executarAudio('ovelha'),
          child: Image.asset('assets/imagens/ovelha.png'),
        ),
        GestureDetector(
          onTap: () => _executarAudio('vaca'),
          child: Image.asset('assets/imagens/vaca.png'),
        ),
      ],
    );
  }
}
