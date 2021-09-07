import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:nubank_clone/Shared/Widget/AppBar/app_bar.dart';
import 'package:nubank_clone/Shared/Widget/Buttons/button_purple.dart';
import 'package:nubank_clone/Shared/Widget/Buttons/circle_button_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(178),
        child:
            AppBarWidget(), // Criei a AppBar como Widget, pois achei mais facil que tentar realizar os ajustes no AppBar() padrão.
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w800),
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
                    child: Text("R\$ 250,00",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w700)),
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
                        CircleButtonWidget(
                          title: 'Pix',
                          onPressed: () {},
                          icon: Icons.ac_unit,
                        ),
                        CircleButtonWidget(
                          title: 'Pagar',
                          onPressed: () {},
                          icon: FlutterRemix.barcode_line,
                        ),
                        CircleButtonWidget(
                            title: 'Transferir',
                            onPressed: () {},
                            icon: FlutterRemix.money_dollar_box_line),
                        CircleButtonWidget(
                            title: 'Depositar',
                            onPressed: () {},
                            icon: Icons.attach_money_rounded),
                        CircleButtonWidget(
                            title: 'Recarga de\n   celular',
                            onPressed: () {},
                            icon: FluentIcons.phone_16_regular),
                        CircleButtonWidget(
                            title: 'Cobrar',
                            onPressed: () {},
                            icon: FluentIcons.money_24_filled),
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
                                      borderRadius: BorderRadius.circular(4)),
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
                  Icon(Icons.credit_card_outlined),
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
              height: 65,
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
                                          style: TextStyle(color: Colors.black))
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
                      RotatedBox(
                          //Como não achei o icone de cartao utilizado no original, improvisei com um icone smartphone do flutter remix e rotacionei ele.
                          quarterTurns: 2,
                          child: Icon(FlutterRemix.smartphone_line)),
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
                        Text(
                          'R\$ 19,89',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 23,
                              fontWeight: FontWeight
                                  .w800), //0xFF73737a cor de outras fontes para salvar
                        ),
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
                                                  fontWeight: FontWeight.w600)),
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
            Divider(
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
