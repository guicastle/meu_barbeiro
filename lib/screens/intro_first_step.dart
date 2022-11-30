import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:meu_barbeiro/screens/register_page.dart';
import 'package:meu_barbeiro/values/colors.dart';
import 'package:meu_barbeiro/values/utils.dart';

class IntroFirstStep extends StatelessWidget {
  const IntroFirstStep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.90;
    double height = MediaQuery.of(context).size.height * 0.90;
    return Center(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 5,
          sigmaY: 5,
        ),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(bottom: height / 16),
          decoration: const BoxDecoration(
            color: Color(0xffffffff),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/design/images/man-portrait-1-1-bg.png',
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /* TITULO E DESCRIÇÃO */
              Container(
                constraints: BoxConstraints(
                  maxWidth: width,
                ),
                child: Text(
                  'Seu novo barbeiro, perto de você',
                  style: SafeGoogleFont(
                    'Zen Dots',
                    fontSize: width / 15,
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              SizedBox(
                height: width / 24,
              ),
              Container(
                padding: EdgeInsets.only(right: width * 0.06),
                constraints: BoxConstraints(
                  maxWidth: width,
                ),
                child: Text(
                  'Veja nossos planos mensais, a partir R\$ 79,90 e fique com o seu corte em dia.',
                  style: SafeGoogleFont(
                    'Space Grotesk',
                    fontSize: width / 24,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                    color: const Color(0xffdfdfdf),
                  ),
                ),
              ),
              SizedBox(
                height: width / 14,
              ),

              /* BOTÃO CONTINUAR */
              Padding(
                padding: EdgeInsets.only(
                  left: width * 0.06,
                  right: width * 0.06,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/design/images/frame-1261154305.png',
                      width: width / 8,
                      height: height / 14,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(196),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Continuar',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: width / 24,
                          fontWeight: FontWeight.w600,
                          height: 1.5,
                          color: primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: width / 32,
              ),
              SizedBox(
                width: width / 3.8,
                // height: height / 14,
                child: Image.asset(
                  'assets/design/images/native-home-indicator-6gv.png',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
