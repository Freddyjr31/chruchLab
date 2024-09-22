import 'package:churchlab/common/common.dart';
import 'package:churchlab/common/providers/cmm_theme_provider.dart';
import 'package:churchlab/common/ui/theme/cmm_app_theme.dart';
import 'package:churchlab/homepage/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {

  @override
  Widget build(BuildContext context) {

    /// Dimensiones de los elemtos desde el contexto
    final size = MediaQuery.of(context).size;

    return ChangeNotifierProvider(
      create: (context) => CmmThemeProvider(),
      builder: (context, child) {

        final themeProvider = context.watch<CmmThemeProvider>();

        return CmmScaffold(
        showReturn: false,
        body: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              
              //* Buscador
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: size.width * 0.93,
                    height: size.height * 0.05,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[300]
                    ),
                    margin: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10
                    ),
                    child: const Text('Buscar'),
                  )
                ],
              ),
              
              //* titulo o cabecera #1
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CmmText(
                      title: 'Modulos/Etapas',
                      isBool: true,
                      fontSize: 16,
                      color: themeProvider.isDarkModeEnabled ? lightColor : secondaryColor,
                      )
                  ],
                ),
              ),
          
              //* cards de modulos
              CardsModules(),
              CardsModules(),
              CardsModules(),
              CardsModules(),
          
              //* margen/espacio final
              const SizedBox(height: 20)
            ],
        ),
      );
      },
    );
  }
}