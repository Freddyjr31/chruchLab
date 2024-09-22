import 'package:churchlab/common/common.dart';
import 'package:churchlab/common/providers/cmm_theme_provider.dart';
import 'package:churchlab/common/ui/ui.dart';
import 'package:churchlab/config/config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardsModules extends StatefulWidget {
  const CardsModules({super.key});

  @override
  State<CardsModules> createState() => _CardsModulesState();
}

class _CardsModulesState extends State<CardsModules> {

  /// Boolenao para validar si se presiono o no el boton
  bool _isPressed = false;

  /// Función para cambiar el estado de la presion del elemento
  void _togglePress() {
    setState(() {
      _isPressed = !_isPressed;
    });
  }

  /// Color con opacidad
  Color pressColor = Colors.black38;
  
  @override
  Widget build(BuildContext context) {

    /// Dimensiones desde el contexto
    final size = MediaQuery.of(context).size;

    return ChangeNotifierProvider(
      create: (context) => CmmThemeProvider(),
      builder: (context, child) {

        final themeProvider = context.watch<CmmThemeProvider>();

        return Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            //* Imagen de fondo
            image: NetworkImage(
                'https://faithgateway.com/cdn/shop/articles/dd-4-23-22-50-final-events-in-world-history-blog_1.png?v=1649769485'
              ),
            fit: BoxFit.cover
            ),
          borderRadius: const BorderRadius.all(
            Radius.circular(25)
            ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: themeProvider.isDarkModeEnabled ? Colors.black12 : Colors.grey[400]!,
              blurRadius: 10.0,
              offset: const Offset(0.0, 10.0)
            )
          ],
        ),
        width: size.width * 0.92,
        height: size.height * 0.2,
        margin: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10
        ),
        //* Para darle un radius al contenido
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(25)
            ),
            //* Detectar los gestos del usuario
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, stageDetail);
            },
            onTapDown: (_) => _togglePress(),
            onTapUp: (_) => _togglePress(),
            onTapCancel: _togglePress,
            //* Widget de animación al hacer click
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              width: _isPressed ? 90 : 100,
              height: _isPressed ? 90 : 100,
              color: _isPressed ? Colors.white12 : pressColor,
              child: Container(
                decoration: BoxDecoration(
                  color: pressColor
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CmmTitleText(
                        title: 'Titulo',
                        isBool: true,
                        color: Colors.white,
                      ),
                      CmmText(
                        title: 'Descripción...',
                        isBool: false,
                        color: Colors.white70,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
      },
    );
  }
}