import 'package:flutter/material.dart';
import 'package:tic_tac_toe/ui/game_page.dart';

class SingInPage extends StatefulWidget {
  const SingInPage({super.key});

  @override
  State<SingInPage> createState() => _SingInPageState();
}

class _SingInPageState extends State<SingInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[500],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: PlayersKey.playeroneKey,
              child: TextFormField(
                style: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'iranSans',
                ),
                controller: PlayersKey.playeronecontroler,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'باید یک نام وارد کنید ';
                  }
                  return null;
                },
                autofocus: false,
                decoration: const InputDecoration(
                  suffix: SizedBox(
                      width: 30,
                      height: 30,
                      child: Image(
                        image: AssetImage('assets/images/x.png'),
                      )),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2.5),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2.5),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2.5),
                  ),
                  focusColor: Colors.white,
                  errorStyle: TextStyle(fontSize: 18, fontFamily: 'iranSans'),
                  labelText: '... نام بازیکن اول ',
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'iranSans',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            ///////
            Form(
              key: PlayersKey.playertwoKey,
              child: TextFormField(
                style: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'iranSans',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'باید یک نام وارد کنید ';
                  }
                  return null;
                },
                controller: PlayersKey.playertwocontroler,
                autofocus: false,
                decoration: const InputDecoration(
                  suffix: SizedBox(
                      width: 30,
                      height: 30,
                      child: Image(
                        image: AssetImage('assets/images/o.png'),
                      )),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2.5),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2.5),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2.5),
                  ),
                  focusColor: Colors.white,
                  labelText: '... نام بازیکن دوم',
                  errorStyle: TextStyle(fontSize: 18, fontFamily: 'iranSans'),
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'iranSans',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 15,
                  backgroundColor: Colors.redAccent,
                  padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
                ),
                onPressed: () {
                  setState(() {
                    if (PlayersKey.playeroneKey.currentState!.validate() &&
                        PlayersKey.playertwoKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const GamePage(),
                          ));
                    }
                  });
                },
                child: const Text(
                  'برو به بازی',
                  style: TextStyle(fontFamily: 'lalezar', fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlayersKey {
  static final playeroneKey = GlobalKey<FormState>();
  static final playertwoKey = GlobalKey<FormState>();
  static final TextEditingController playeronecontroler =
      TextEditingController();
  static final TextEditingController playertwocontroler =
      TextEditingController();
}
