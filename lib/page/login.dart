import 'package:flutter/material.dart';
import 'package:light_dark_theme/provider/provider.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 70, bottom: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Consumer<UiProvider>(
                  builder: (context, UiProvider notifier, child) {
                return Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Theme.of(context).brightness == Brightness.light
                            ? Icons.dark_mode
                            : Icons.light_mode,
                      ),
                      title: Text(
                        Theme.of(context).brightness == Brightness.light
                            ? 'Dark Mode'
                            : 'Light Mode',
                      ),
                      trailing: Switch(
                        value: notifier.isDark,
                        onChanged: (value) => notifier.changeTheme(),
                      ),
                    ),
                  ],
                );
              }),
              Text(
                "Hello, \nSelamat Datang",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorLight,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Masukan email atau username"),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorLight,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: const TextField(
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Masukan password",
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Theme.of(context).brightness == Brightness.light
                              ? Colors.black
                              : Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? Colors.white
                                  : Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Buat akun baru ?",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
