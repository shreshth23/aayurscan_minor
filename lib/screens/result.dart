import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 80),
      decoration: BoxDecoration(),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 280,
            decoration: BoxDecoration(
              color: Color.fromARGB(75, 255, 255, 255),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                ),
                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.white,
                  ),
                  child: ClipRRect(
                    child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Tulsi_or_Tulasi_Holy_basil.jpg/330px-Tulsi_or_Tulasi_Holy_basil.jpg",
                      width: 75,
                      height: 75,
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 120,
                  alignment: Alignment.center,
                  child: Text(
                    "Tulsi",
                    style:
                    GoogleFonts.aboreto(color: Colors.white, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Text(
                    "Scintific name : Ocimum tenuiflorum",
                    style: GoogleFonts.abel(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Text(
                    "Family :	Lamiaceae",
                    style: GoogleFonts.abel(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                )
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)),
            child: Container(
                margin: EdgeInsets.only(top: 280),
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                                height: 75.0,
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text(
                                        'Category',
                                        style: GoogleFonts.abel(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black87
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.black,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Medicinal plant',
                                        style: GoogleFonts.abel(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                margin: EdgeInsets.only(left: 50),
                                decoration: BoxDecoration(
                                    color: const Color(0xffffffff),
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30))
                                )
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(top: 10,right: 10),
                                      child: Text(
                                        'Uses',
                                        style: GoogleFonts.abel(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black87
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.black,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.symmetric(horizontal: 20),
                                      child: Text(
                                        '''
1. Promotes Healthy Heart
Holy basil contains vitamin C and antioxidants such as eugenol, which protects the heart from the harmful effects of free radicals. Eugenol also proves useful in reducing cholesterol levels in the blood.

2. Anti-aging
Vitamin C and A, phytonutrients, in Holy Basil are great antioxidants and protect the skin from almost all the damages caused by free radicals.

3. Treats Kidney Stones
Tulsi acts a mild diuretic & detoxifying agent which helps in lowering the uric acid levels in the body. Acetic acid present in holy basil helps in the breakdown of the stones.

4. Relieves Headaches
Tulsi is a natural headache reliever which can also relieve migraine pain.

5. Fights Acne
Holy basil helps kill bacteria and infections. The primary active compound of holy basil oil is eugenol which helps fight skin related disorders. Ocimum Sanctum helps treat skin infections both internally and externally.

6. Relives Fever
Tulsi is an age-old ingredient for treating fever. It is one of the prime ingredients in the formulation of various ayurvedic medicines & home remedies.

7. Eye Health
Tulsi's anti-inflammatory properties help promote eye health by preventing viral, bacterial and fungal infections. It also soothes eye inflammation and reduces stress.

8. Oral Health
Tulsi is a natural mouth freshener and an oral disinfectant. Ocimum Sanctum can also cure mouth ulcers. Holy basil destroys the bacteria that are responsible for dental cavities, plaque, tartar, and bad breath, while also protecting the teeth.

9. Cures Respiratory Disorders
Due to the presence of compounds like camphene, eugenol, and cineole, tulsi cures viral, bacterial, and fungal infections of the respiratory system. It can cure various respiratory disorders like bronchitis & tuberculosis.

10. Rich Source of Vitamin K
Vitamin K is an essential fat-soluble vitamin that plays an important role in bone health and heart health.
                                        ''',
                                        style: GoogleFonts.abel(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                margin: EdgeInsets.only(left: 50),
                                decoration: BoxDecoration(
                                    color: const Color(0xffffffff),
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30))
                                )
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              child: TextButton(
                                onPressed: (){},
                                child: Text("Read More",
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.black87,
                                  minimumSize: Size(100, 45),
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(2)),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
            ),
          )
        ],
      ),
    );
  }
}
