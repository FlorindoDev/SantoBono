import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:santobono_gui/src/view/widget/Home/InfoCardReparti.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoReparti extends StatelessWidget {
  const InfoReparti({super.key});
  // L’altezza “preferita” per un AppBar standard

  //TODO fare SvgPicture più generica e fare un pò di refactoring
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Benvenuto! Qui sotto trovi i reparti e altre informazioni.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),

          SizedBox(
            height: 120,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment
                        .center, // <— centra i figli orizzontalmente
                children: <Widget>[
                  InfoCardReparti(
                    icon: SvgPicture.asset(
                      'assets/images/rianimazione.svg',
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.onPrimary,
                        BlendMode.srcIn,
                      ),
                    ),
                    reparto: 'Rianimazione',
                    onTap: () => print('Rianimazione'),
                  ),
                  const SizedBox(width: 30), // spaziatura
                  InfoCardReparti(
                    icon: SvgPicture.asset(
                      'assets/images/rianimazione.svg',
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.onPrimary,
                        BlendMode.srcIn,
                      ),
                    ),
                    reparto: 'Neurologia',
                    onTap: () => print('Neurologia'),
                  ),
                  // … altri InfoCardReparti con SizedBox(width: 16) se vuoi…
                ],
              ),
            ),
          ),

          const SizedBox(height: 24),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Altre informazioni utili:',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),

          const SizedBox(height: 8),

          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                // ... altri widget orizzontali ...
              ],
            ),
          ),

          const SizedBox(height: 24),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Fine dei contenuti.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
