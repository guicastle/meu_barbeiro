import 'package:flutter/material.dart';
import 'package:meu_barbeiro/values/utils.dart';

class IntroFirstStep extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 420;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Center(
      child: Container(
        width: double.infinity,
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image header and Title and Description
            Container(
              padding: EdgeInsets.fromLTRB(
                  20 * fem, 16 * fem, 20.02 * fem, 24 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 501 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 12 * fem, 271 * fem, 0 * fem),
                          child: Text(
                            '9:41',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1 * ffem / fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 12 * fem, 8 * fem, 0 * fem),
                          width: 18 * fem,
                          height: 10 * fem,
                          child: Image.asset(
                            'assets/design/images/mobile-signal-GGN.png',
                            width: 18 * fem,
                            height: 10 * fem,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 10 * fem, 6.73 * fem, 0 * fem),
                          width: 15.27 * fem,
                          height: 10.97 * fem,
                          child: Image.asset(
                            'assets/design/images/wifi-558.png',
                            width: 15.27 * fem,
                            height: 10.97 * fem,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 10 * fem, 0 * fem, 0 * fem),
                          width: 26.98 * fem,
                          height: 13 * fem,
                          child: Image.asset(
                            'assets/design/images/battery.png',
                            width: 26.98 * fem,
                            height: 13 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        10 * fem, 0 * fem, 8.98 * fem, 0 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 8 * fem),
                          constraints: BoxConstraints(
                            maxWidth: 375 * fem,
                          ),
                          child: Text(
                            'Seu novo barbeiro, perto de você',
                            style: SafeGoogleFont(
                              'Zen Dots',
                              fontSize: 31 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5 * ffem / fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                        Container(
                          constraints: BoxConstraints(
                            maxWidth: 375 * fem,
                          ),
                          child: Text(
                            'Veja nossos planos mensais, a partir R\$ 79,90 e fique com o seu corte em dia.',
                            style: SafeGoogleFont(
                              'Space Grotesk',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5 * ffem / fem,
                              color: const Color(0xffdfdfdf),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //color: const Color(0x19ffffff),

            // ClipRect(
            //   child: BackdropFilter(
            //     filter: ImageFilter.blur(
            //       sigmaX: 20 * fem,
            //       sigmaY: 20 * fem,
            //     ),
            //     child: Container(
            //       padding: const EdgeInsets.only(left: 24, right: 24),
            //       child:
            //     ),
            //   ),
            // ),

            Container(
              padding: EdgeInsets.only(left: 36 * fem, right: 36 * fem),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/design/images/frame-1261154305.png',
                    width: 42 * fem,
                    height: 10 * fem,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(196 * fem),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Continuar',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5 * ffem / fem,
                        color: const Color(0xff061023),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 36,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(3 * fem, 0 * fem, 0 * fem, 0 * fem),
              width: 148 * fem,
              height: 5 * fem,
              child: Image.asset(
                'assets/design/images/native-home-indicator-6gv.png',
                width: 148 * fem,
                height: 5 * fem,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
