
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(Uygulamam());
}

class Uygulamam extends StatefulWidget {
  @override
  State<Uygulamam> createState() => _UygulamamState();
}

class _UygulamamState extends State<Uygulamam> {
  @override
  int  yanitIndex=0;
  List<String> yanitlar = [
    'TIKLA FALIN GELSİN',
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Center(
                child: Text(
              "FALCIYA HOŞGELDİN",
              style: TextStyle(color: Colors.orange),
            )),
            backgroundColor: Colors.pink),
        backgroundColor: Colors.pink,
        body: Column(children: <Widget>[
          SizedBox(
            height: 200,
            width: 100,
          ),
          Center(
            child: Image.asset(
              'assets/kure.png',
              height: 135,
            ),
          ),
          Card(
            margin: EdgeInsets.only(left: 50, right: 50, bottom: 10),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  yanitIndex = Random().nextInt(5) + 1;
                });
              },
              child: ListTile(
                title: Text("AŞK"),
                leading: Icon(Icons.person),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(left: 50, right: 50, top: 10),
            child: ElevatedButton(
              onPressed: () {  setState(() {
                yanitIndex = Random().nextInt(5) + 6;
              });},
              child: ListTile(
                title: Text("PARA"),
                leading: Icon(Icons.ice_skating),
              ),
            ),
          ),
          Card(margin: EdgeInsets.only(left: 50,right: 50,top: 20),
          child: ElevatedButton(onPressed:  () {
            setState(() {
              yanitIndex = Random().nextInt(5) + 11;
            });
          }, child: ListTile(title: Text("TAVSİYE"),leading:Icon(Icons.airline_seat_legroom_extra_outlined)))
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              height: 150,
              width: double.infinity,
              child: Padding(
                  padding:
                  EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                  child: Text(yanitlar[yanitIndex],
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center))),
        ],

          ),
      ),
    );
  }
}
