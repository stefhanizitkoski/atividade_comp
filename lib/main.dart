import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
      ),
      home: const ContentPage(),
    );
  }
}

Color backgroundColor = const Color.fromRGBO(131, 10, 210, 1);
Color secondaryColor = const Color.fromRGBO(155, 59, 218, 1);

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  @override
  initState() {
    _setStatusBarColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }
}

_body() {
  return SafeArea(
    child: SingleChildScrollView(
      child: Column(
        children: [
          _header(),
          _account(),
          _accountList(),
          _cards(),
          _cardsInfo(),
          _divider(),
          _cardCredit(),
          _divider(),
          _cardEmp(),
          _divider(),
          _cardInvest(),
          _divider(),
          _cardSeg(),
          _divider(),
          _cardShopping(),
          _divider(),
          _cardEnd(),
        ],
      ),
    ),
  );
}

_header() {
  return Container(
    color: backgroundColor,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _profile(),
            _options(),
          ],
        ),
        _welcome(),
      ],
    ),
  );
}

_welcome() {
  return Container(
    margin: const EdgeInsets.only(
      left: 20,
      bottom: 20,
    ),
    child: const Text(
      'Olá Stéfhani',
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

_profile() {
  return InkWell(
    child: Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Icon(
        MdiIcons.accountOutline,
        color: Colors.white,
      ),
    ),
    onTap: () {},
  );
}

_options() {
  return Row(
    children: [
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: const Icon(MdiIcons.eyeOutline, color: Colors.white)),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: const Icon(MdiIcons.helpCircleOutline, color: Colors.white)),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: const Icon(MdiIcons.emailPlus, color: Colors.white)),
    ],
  );
}

_setStatusBarColor() {
// change the status bar color to material color [green-400]
}

_account() {
  return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _accountText(),
          _accountMoney(),
        ],
      ));
}

_accountText() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: const [
      Text('Conta',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )),
      Icon(MdiIcons.chevronRight),
    ],
  );
}

_accountMoney() {
  return Container(
    margin: const EdgeInsets.only(
      top: 20,
    ),
    child: const Text('R\$ 1.000,00',
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.bold,
        )),
  );
}

_accountList() {
  return Container(
    height: 120,
    margin: const EdgeInsets.symmetric(vertical: 10),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _actionItem(MdiIcons.clover, 'Área Pix'),
          _actionItem(MdiIcons.barcode, 'Pagar'),
          _actionItem(MdiIcons.cash, 'Transferir'),
          _actionItem(MdiIcons.cash, 'Depositar'),
          _actionItem(MdiIcons.cash, 'Pegar emprestado'),
          _actionItem(MdiIcons.cellphone, 'Recarga de celular'),
          _actionItem(MdiIcons.cash, 'Cobrar'),
          _actionItem(MdiIcons.heartOutline, 'Doação'),
        ],
      ),
    ),
  );
}

_divider() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 20),
    child: const Divider(
      thickness: 2,
    ),
  );
}

_actionItem(IconData icon, String name) {
  return SizedBox(
    width: 100,
    child: Column(
      children: [
        Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(240, 241, 245, 1),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Icon(icon)),
        Container(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        )
      ],
    ),
  );
}

_cards() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
    child: Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(240, 241, 245, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const Icon(MdiIcons.creditCard),
          Container(
              margin: const EdgeInsets.only(left: 10),
              child: const Text('Meus Cartões',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )))
        ],
      ),
    ),
  );
}

_cardsInfo() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(240, 241, 245, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                  width: 220,
                  child: RichText(
                    text: TextSpan(
                      text: 'Seu ',
                      style: const TextStyle(color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Informe de rendimentos',
                            style: TextStyle(color: backgroundColor)),
                        const TextSpan(
                          text: ' 2023 já esta disponível',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(240, 241, 245, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                    width: 220,
                    child: RichText(
                      text: TextSpan(
                        text: 'Você tem até ',
                        style: const TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'R\$ 25.000,00',
                              style: TextStyle(color: backgroundColor)),
                          const TextSpan(
                            text: ' Disponíveis para empréstimo.',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(240, 241, 245, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                    width: 200,
                    child: RichText(
                      text: TextSpan(
                        text: 'Invista em ',
                        style: const TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'CDBs escolhidos pelo Nu, ',
                              style: TextStyle(color: backgroundColor)),
                          const TextSpan(
                            text: 'a partir de R\$ 100,00',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

_cardCredit() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _cardCreditIcon(),
        _cardCredText(),
        _cardCredFat(),
        _cardCredValue(),
        _cardCredLimit(),
        _cardCredButton(),
      ],
    ),
  );
}

_cardCreditIcon() {
  return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: const Icon(MdiIcons.creditCard));
}

_cardCredText() {
  return Container(
    margin: const EdgeInsets.only(bottom: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text('Cartão de Crédito',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
        Icon(MdiIcons.chevronRight),
      ],
    ),
  );
}

_cardCredFat() {
  return Container(
    margin: const EdgeInsets.only(bottom: 10),
    child: const Text('Fatura atual',
        style: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        )),
  );
}

_cardCredValue() {
  return Container(
    margin: const EdgeInsets.only(bottom: 10),
    child: const Text('R\$ 100,00',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        )),
  );
}

_cardCredLimit() {
  return Container(
    margin: const EdgeInsets.only(bottom: 20),
    child: const Text('Limite disponivel de R\$ 800,00',
        style: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        )),
  );
}

_cardCredButton() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: const Color.fromRGBO(240, 241, 245, 1),
    ),
    child: MaterialButton(
      onPressed: () {},
      child: const Text('Parcelar compras',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
    ),
  );
}

_cardEmp() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _cardEmpIcon(),
        _cardEmpTitle(),
        _cardEmpText(),
      ],
    ),
  );
}

_cardEmpIcon() {
  return const Icon(MdiIcons.cash, size: 30);
}

_cardEmpTitle() {
  return Container(
    margin: const EdgeInsets.only(top: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text('Emprestimos',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Icon(MdiIcons.chevronRight),
      ],
    ),
  );
}

_cardEmpText() {
  return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Valor disponível de até',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              )),
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: const Text(
              'R\$ 25.000,00',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ));
}

_cardSeg() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20),
    child: Align(
      alignment: AlignmentDirectional.centerStart,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _cardSegIcon(),
          _cardSegTitle(),
          _cardSegText(),
          _cardSegButton(),
        ],
      ),
    ),
  );
}

_cardSegIcon() {
  return const Icon(MdiIcons.umbrella);
}

_cardSegTitle() {
  return Container(
    margin: const EdgeInsets.only(top: 10),
    child: const Text('Seguros',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
  );
}

_cardSegText() {
  return Container(
    margin: const EdgeInsets.only(top: 10),
    child: const Text('Proteção para você cuidar do que importa',
        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
  );
}

_cardSegButton() {
  return Container(
    margin: const EdgeInsets.only(top: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: const Color.fromRGBO(240, 241, 245, 1),
    ),
    child: ListTile(
      leading: const Icon(
        MdiIcons.heartOutline,
        color: Colors.black,
      ),
      title: const Text(
        'Seguro vida',
        style: TextStyle(fontWeight: FontWeight.bold),
        textAlign: TextAlign.start,
      ),
      trailing: Text(
        'Conhecer',
        style: TextStyle(fontWeight: FontWeight.bold, color: backgroundColor),
        textAlign: TextAlign.start,
      ),
    ),
  );
}

_cardInvest() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _cardInvestIcon(),
        _cardInvestTitle(),
        _cardInvestText(),
      ],
    ),
  );
}

_cardInvestIcon() {
  return const Icon(
    MdiIcons.chartBar,
  );
}

_cardInvestTitle() {
  return Container(
    margin: const EdgeInsets.only(top: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text('Investimentos',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Icon(MdiIcons.chevronRight),
      ],
    ),
  );
}

_cardInvestText() {
  return Container(
      padding: const EdgeInsets.only(right: 40),
      margin: const EdgeInsets.only(top: 10),
      child: const Text(
          'O jeito Nu de investir: sem asteriscos, linguagem fácil e a partir de R\$1. Saiba mais.',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)));
}

_cardShopping() {
  return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _cardShopIcon(),
          _cardShopTitle(),
          _cardShopText(),
        ],
      ));
}

_cardShopIcon() {
  return const Icon(MdiIcons.shopping);
}

_cardShopTitle() {
  return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Shopping',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Icon(MdiIcons.chevronRight),
        ],
      ));
}

_cardShopText() {
  return Container(
      margin: const EdgeInsets.only(top: 10),
      child: const Text('Vantagens exclusivas das nossas marcas preferidas',
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)));
}

_cardEnd() {
  return Container(
    margin: const EdgeInsets.only(bottom: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _cardEndTitle(),
        _cardEndSlide(),
      ],
    ),
  );
}

_cardEndTitle() {
  return Align(
    alignment: AlignmentDirectional.centerStart,
    child: Container(
      margin: const EdgeInsets.only(bottom: 30, left: 20),
      child: const Text('Descubra mais',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
    ),
  );
}

_cardEndSlide() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Container(
      margin: const EdgeInsets.only(left: 20, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _cardSlide(),
          _cardSlide(),
          _cardSlide(),
        ],
      ),
    ),
  );
}

_cardSlide() {
  return Container(
    margin: const EdgeInsets.only(right: 10),
    width: 220,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: const Color.fromRGBO(240, 241, 245, 1),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
            child: Image.asset(
              'assets/images/nubank.jpg',
              fit: BoxFit.cover,
            )),
        const Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'Portabilidade de salário',
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, bottom: 20),
          child: const Text(
              'Sua liberdade financeira começa com você escolhend...',
              style: TextStyle(
                color: Colors.grey,
              )),
        ),
        _cardEndButton(),
      ],
    ),
  );
}

_cardEndButton() {
  return Container(
    height: 40,
    margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: backgroundColor,
    ),
    child: MaterialButton(
      onPressed: () {},
      child: const Text('Conhecer',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white)),
    ),
  );
}