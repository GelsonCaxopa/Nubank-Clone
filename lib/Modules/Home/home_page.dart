import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_remix/flutter_remix.dart';
import 'package:nubank_clone/Modules/Home/home_controller.dart';
import 'package:nubank_clone/Shared/Widget/Buttons/button_purple.dart';
import 'package:nubank_clone/Shared/Widget/Buttons/circle_button_widget%20copy.dart';
import 'package:nubank_clone/Shared/Widget/Buttons/circle_button_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> _refresh() {
    return Future.delayed(Duration(seconds: 0));
  }

  final controller = StatusController();

  final IconData eyeOpen = FluentIcons.eye_show_24_regular;
  final IconData eyeClosed = FlutterRemix.eye_close_line;
  var hide = Container(
    color: Color(0xFFF0F1F5),
    height: 30,
    width: 250,
  );
  var showSaldo = Container(
    child: Text("R\$ 250,00",
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
  );
  var showFatura = Container(
    child: Text("R\$ 250,00",
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
  );

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
        statusBarColor: Color(0xFF830AD1),
        systemNavigationBarIconBrightness: Brightness.dark));

    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: ListView(
          children: [
            Column(
              children: [
                //APP BAR
                Container(
                    height: 170,
                    color: Color(0xFF830AD1),
                    child: Column(
                      children: [
                        SizedBox(height: 60),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 180),
                              child: Column(
                                children: [
                                  Container(
                                    height: 45,
                                    width: 55,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xFF9B3BDA),
                                    ),
                                    child: IconButton(
                                      icon: Icon(FlutterRemix.user_line),
                                      color: Colors.white,
                                      onPressed: () {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      controller.showInformations =
                                          !controller.showInformations;
                                    });
                                  },
                                  child: Icon(
                                    controller.showInformations
                                        ? eyeOpen
                                        : eyeClosed,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.help_outline_outlined),
                                  color: Colors.white,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(FlutterRemix.mail_add_line),
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 265, top: 25),
                          child: Text(
                            "Olá, Gelson",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    )),
                //FIM APPBAR

                SizedBox(
                  height: 17,
                  width: size.width,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 26),
                  child: Row(
                    children: [
                      Text(
                        "Conta",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w800),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 250),
                        child: IconButton(
                          alignment: AlignmentDirectional.topEnd,
                          iconSize: 19,
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 26, top: 5),
                  child: Row(
                    children: [
                      Container(
                        child: controller.showInformations ? showSaldo : hide,

                        /* Text("R\$ 250,00",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w700)), */
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 169,
                        child: Row(
                          children: [
                            CircleIcon(
                              title: 'Pix',
                              onPressed: () {},
                              imageIcon: Image.asset(
                                'assets/images/pixIco.png',
                                height: 20,
                              ),
                            ),
                            CircleIcon(
                              title: 'Pagar',
                              onPressed: () {},
                              imageIcon: Image.asset(
                                'assets/images/codebarIco.png',
                                height: 12,
                              ),
                            ),
                            CircleIcon(
                              title: 'Transferir',
                              onPressed: () {},
                              imageIcon: Image.asset(
                                'assets/images/trasnfIco.png',
                                height: 20,
                              ),
                            ),
                            CircleIcon(
                              title: 'Depositar',
                              onPressed: () {},
                              imageIcon: Image.asset(
                                'assets/images/deposIco.png',
                                height: 20,
                              ),
                            ),
                            CircleButtonWidget(
                                title: 'Recarga de\n   celular',
                                onPressed: () {},
                                icon: FluentIcons.phone_16_regular),
                            CircleIcon(
                              title: 'Cobrar',
                              onPressed: () {},
                              imageIcon: Image.asset(
                                  'assets/images/cobrarIco.png',
                                  height: 20),
                            ),
                            CircleButtonWidget(
                              title: 'Doaçao',
                              onPressed: () {},
                              icon: FlutterRemix.heart_line,
                            ),
                            Container(
                              child: Stack(
                                children: [
                                  Container(
                                    child: CircleButtonWidget(
                                      title: 'Encontrar\n  atalhos',
                                      onPressed: () {},
                                      icon: Icons.help_outline,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 65,
                                    right: 23,
                                    child: Container(
                                      height: 22,
                                      width: 37,
                                      decoration: BoxDecoration(
                                          color: Color(0xFF820cce),
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      child: Center(
                                        child: Text("Dica",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 19,
                            ),
                          ],
                        ),
                      ),
                    )),
                Container(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Image.asset(
                          'assets/images/cardIco.png',
                          height: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Center(
                          child: Text(
                            "Meus cartões",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  height: 55,
                  width: 360,
                  decoration: BoxDecoration(
                      color: Color(
                        0xFFF0F1F5,
                      ),
                      borderRadius: BorderRadius.circular(15)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 15),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 26),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xFFF0F1F5),
                            ),
                            height: 90,
                            width: 270,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 27),
                              child: Container(
                                child: Text.rich(
                                  TextSpan(
                                    text: "Conheça a ",
                                    children: [
                                      TextSpan(
                                        text: "conta PJ",
                                        style: TextStyle(
                                          color: Color(0xFF830AD1),
                                        ),
                                        children: [
                                          TextSpan(
                                              text:
                                                  ": prática e livre de burocracia para seu negócio.",
                                              style: TextStyle(
                                                  color: Colors.black))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFFF0F1F5),
                          ),
                          height: 90,
                          width: 270,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 27),
                            child: Container(
                                child: Text.rich(
                              TextSpan(
                                text: "Salve seus amigos da burocracia.\n",
                                children: [
                                  TextSpan(
                                      text: "Faça um convite para o Nubank.",
                                      style: TextStyle(
                                        color: Color(0xFF830AD1),
                                      )),
                                ],
                              ),
                            )),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 26, top: 15, bottom: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Image.asset(
                              'assets/images/cardIco.png',
                              height: 20,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Cartão de crédito",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w800),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 170, top: 10),
                            child: IconButton(
                              alignment: AlignmentDirectional.topEnd,
                              iconSize: 19,
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Fatura atual',
                            style: TextStyle(
                                color: Color(0xFF656871),
                                fontSize: 15,
                                fontWeight: FontWeight
                                    .w700), //0xFF73737a cor de outras fontes para salvar
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Row(
                          children: [
                            /* Text(
                              'R\$ 19,89',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 23,
                                  fontWeight: FontWeight
                                      .w800), //0xFF73737a  cor de outras fontes para salvar
                            ), */
                            controller.showInformations ? showFatura : hide,
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Row(
                          children: [
                            Text(
                              'Limite disponível de R\$ 180,11',
                              style: TextStyle(
                                  color: Color(0xFF656871),
                                  fontSize: 15,
                                  fontWeight: FontWeight
                                      .w700), //0xFF73737a cor de outras fontes para salvar
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 26, top: 15, bottom: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(FlutterRemix.heart_line),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Seguro de vida",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w800),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 190, top: 10),
                            child: IconButton(
                              alignment: AlignmentDirectional.topEnd,
                              iconSize: 19,
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Conheça Nubank Vida: um seguro simples e que cabe\nno seu bolso.',
                            style: TextStyle(
                                color: Color(0xFF656871),
                                fontSize: 15,
                                fontWeight: FontWeight
                                    .w700), //0xFF73737a cor de outras fontes para salvar
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 15),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 26),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xFFF0F1F5),
                            ),
                            height: 220,
                            width: 300,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 27),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Parcele com a gente",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "A loja não parcela? Faça a compra e\n parcele depois, direto aqui no app.",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 45),
                                  Row(
                                    children: [
                                      ButtonPurple(
                                        title: 'Parcelar compra',
                                        onpressed: () {},
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFFF0F1F5),
                          ),
                          height: 220,
                          width: 300,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 27),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Conta PJ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "A gente te ajuda a gerenciar suas\nfinanças de um jeito fácil para fazer\nseu negócio acontecer.",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 30),
                                Row(
                                  children: [
                                    ButtonPurple(
                                      title: 'Pedir conta PJ',
                                      onpressed: () {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFFF0F1F5),
                          ),
                          height: 220,
                          width: 300,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 27),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Indique seus amigos",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Mostre aos seus amigos como é\nfácil ter uma vida sem burocracia.",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 45),
                                Row(
                                  children: [
                                    ButtonPurple(
                                      title: 'Indicar amigos',
                                      onpressed: () {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFFF0F1F5),
                          ),
                          height: 220,
                          width: 300,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 27),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "WhatsApp",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w800,
                                                fontSize: 20),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Container(
                                            height: 22,
                                            width: 37,
                                            decoration: BoxDecoration(
                                                color: Color(0xFF830AD1),
                                                borderRadius:
                                                    BorderRadius.circular(4)),
                                            child: Center(
                                              child: Text("Novo",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w600)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Pagamentos seguors, rápidos e sem\ntarifa. A experência Nubank sem\nnemsair da conversa.",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 30),
                                Row(
                                  children: [
                                    ButtonPurple(
                                      title: 'Quero Conhecer',
                                      onpressed: () {},
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),

                        // //"Parcele com a gente\n",
                        //           style: TextStyle(
                        //               fontWeight: FontWeight.w800, fontSize: 20),
                        //A loja não parcela? Faça a compra e parcele depois, direto aqui no app.
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
