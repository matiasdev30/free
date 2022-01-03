import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardCall extends StatefulWidget {
  final int code;
  final String description;
  final String adress;
  final String city;

  const CardCall(
      {Key? key,
      required this.code,
      required this.description,
      required this.adress,
      required this.city})
      : super(key: key);

  @override
  _CardCallState createState() => _CardCallState();
}

class _CardCallState extends State<CardCall> {
  @override
  Widget build(BuildContext context) {
    // size of screen
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: heightScreen * .84,
            width: widthScreen * .2,
            decoration: const BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage('assets/backgroud.jpg'),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                Container(
                    height: 15,
                    width: widthScreen,
                    color: const Color(0xffEA3B26)),
                const Spacer(),
                // the rotate text with describe
                describeText(widthScreen, heightScreen),
                const Spacer(),
                Container(
                  height: heightScreen * .3,
                  width: widthScreen,
                  color: const Color(0xffEA3B26),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Spacer(),
                          Text(
                            'SIAC',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        widget.description,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.adress,
                        style: const TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontSize: 15),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '${widget.city}- Luanda',
                        style: const TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontSize: 15),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          const Spacer(),
                          SizedBox(
                            height: 20,
                            width: 50,
                            child: Image.asset('assets/logo.jpg'),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  describeText(double widthScreen, double heightScreen) {
    return RotatedBox(
      quarterTurns: 1,
      child: SizedBox(
        width: widthScreen * .9,
        height: heightScreen * .47,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Row(
              children: [
                const Text('D ',
                    style: TextStyle(color: Color(0xffEA3B26), fontSize: 140)),
                const Spacer(),
                Center(
                    child: Text(widget.code.toString(),
                        style: const TextStyle(fontSize: 140))),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Registo de propriedade de automovel',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic)),
                Text('23-05-2021 10h33',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic))
              ],
            ),
            const Spacer(),
            Row(
              children: [
                const Spacer(),
                Container(
                  height: 20,
                  width: 130,
                  color: const Color(0xffEA3B26),
                  child: const Center(
                    child: Text('Tolerância de 3 senhas',
                        style: TextStyle(fontSize: 12, color: Colors.white)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
