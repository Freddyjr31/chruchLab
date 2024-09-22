import 'package:churchlab/common/common.dart';
import 'package:churchlab/stages/stages.dart';
import 'package:flutter/material.dart';

/// Pantalla para mostrar las clases de cada modulo
class StageDetail extends StatefulWidget {
  const StageDetail({super.key});

  @override
  State<StageDetail> createState() => _StageDetailState();
}

class _StageDetailState extends State<StageDetail> {
  
  @override
  Widget build(BuildContext context) {

    /// ULR que se obtiene de la clase seleccionada
    String url = 'https://web.seducoahuila.gob.mx/biblioweb/upload/La%20biblia.pdf';

    /// Dimensiones de los elemtos desde el contexto
    final size = MediaQuery.of(context).size;

    return CmmScaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          Container(
            margin: const EdgeInsets.only(top: 15, bottom: 15),
            width: size.width * 0.9,
            height: size.height * 0.25,
            decoration: const BoxDecoration(
              // color: Colors.grey[300],
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://faithgateway.com/cdn/shop/articles/dd-4-23-22-50-final-events-in-world-history-blog_1.png?v=1649769485',
                  ), 
                ),
              borderRadius: BorderRadius.only(
                topLeft:  Radius.circular(50),
                topRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50)
              ),
            ),
          ),

          CmmTitleText(
            title: 'Nombre del modulo',
            isBool: true,
            fontSize: 17,
            ),

          Container(
            width: size.width,
            height: size.height * 0.75,
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              // scrollDirection: Axis.vertical,
              physics: const ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              shrinkWrap: true,
              itemCount: 20,
              itemBuilder: (context, item){
                return ListTile(
                  shape: RoundedRectangleBorder(
                    // side: BorderSide(width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  leading: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey[300]
                    ),
                    child: const Icon(Icons.class_outlined)
                    ),
                  title: CmmTitleText(
                    title: 'Fundamento ###',
                    isBool: true,
                    align: TextAlign.start,
                    fontSize: 17,
                    ),
                  subtitle: CmmText(
                    title: 'Nombre de la clase',
                    isBool: false,
                    align: TextAlign.start,
                    fontSize: 14,
                    color: Colors.grey[600],
                    ),
                  trailing: IconButton(
                    icon: const Icon(Icons.remove_red_eye),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context) => OpenPdfScreen(url: url)
                        ),
                      );
                    }
                    ),
                  onTap: () {
                    // Funcion al hace click ???
                  },
                );
              }
            ),
          ),

          const SizedBox(height: 15)

        ],
      )

      );
  }
}