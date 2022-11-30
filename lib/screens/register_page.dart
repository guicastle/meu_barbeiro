import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meu_barbeiro/screens/components/text_widget.dart';
import 'package:meu_barbeiro/values/colors.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late final TextEditingController passController = TextEditingController();
  late final TextEditingController repassController = TextEditingController();
  late final TextEditingController emailController = TextEditingController();
  late final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: primaryColor),
        leading: IconButton(
          padding: const EdgeInsets.only(left: 14, top: 12),
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF363f93)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            left: width * 0.09,
            right: width * 0.09,
            top: height * 0.04,
            bottom: height * 0.04,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: "Bem-vindo ao ",
                fontSize: 26,
                isUnderLine: false,
              ),
              TextWidget(
                text: "Meu Barbeiro !",
                fontSize: 28,
                isUnderLine: false,
                font: 'Syncopate',
                fontWeight: FontWeight.w800,
              ),
              SizedBox(height: height * 0.05),
              TextFieldInput(
                textString: "Nome ou Apelido",
                textController: nameController,
                obscureText: false,
              ),
              SizedBox(
                height: height * .02,
              ),
              TextFieldInput(
                textString: "Telefone",
                textController: emailController,
                obscureText: false,
              ),
              SizedBox(
                height: height * .02,
              ),
              TextFieldInput(
                textString: "Senha",
                textController: passController,
                obscureText: true,
              ),
              SizedBox(
                height: height * .02,
              ),
              TextFieldInput(
                textString: "Repita sua senha",
                textController: repassController,
                obscureText: true,
              ),
              SizedBox(
                height: height * .05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                      text: "Entre agora", fontSize: 22, isUnderLine: false),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: primaryColor,
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Container()));
                    },
                    child: TextWidget(
                        text: "Registrar", fontSize: 16, isUnderLine: true),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: TextWidget(
                        text: "Esqueci a senha",
                        fontSize: 16,
                        isUnderLine: true),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldInput extends StatelessWidget {
  final String textString;
  TextEditingController textController;
  bool obscureText;
  TextFieldInput(
      {Key? key,
      required this.textString,
      required this.textController,
      required this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Color(0xFF000000)),
      cursorColor: const Color(0xFF9b9b9b),
      controller: textController,
      keyboardType: TextInputType.text,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: textString,
        hintStyle: const TextStyle(
          color: Color(0xFF9b9b9b),
          fontSize: 15,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
