import 'package:flutter/material.dart';
import '../models/emergency_guide.dart';
import '../theme/app_theme.dart';

class EmergencyData {
  static const List<EmergencyCategory> categories = [
    EmergencyCategory(
      id: 'choking',
      title: 'Étouffement',
      shortDescription: 'La personne ne peut plus parler ni respirer',
      icon: Icons.air,
      color: AppColors.primary,
      steps: [
        GuideStep(
          title: 'Évaluez la situation',
          description:
              'Demandez "Tu t\'étouffes ?". Si la personne ne peut ni parler, ni tousser, ni respirer, agissez immédiatement.',
          icon: Icons.search,
        ),
        GuideStep(
          title: 'Penchez-la vers l\'avant',
          description:
              'Placez-vous sur le côté, légèrement en arrière. Soutenez son thorax d\'une main et penchez-la bien vers l\'avant.',
          icon: Icons.accessibility,
        ),
        GuideStep(
          title: 'Donnez 5 claques dans le dos',
          description:
              'Avec le talon de votre main, donnez 5 claques fermes entre les omoplates.',
          icon: Icons.back_hand,
        ),
        GuideStep(
          title: 'Faites 5 compressions abdominales',
          description:
              'Si les claques ne suffisent pas : placez-vous derrière la personne, un poing au-dessus du nombril, l\'autre main par-dessus, et tirez vers vous et vers le haut 5 fois (manœuvre de Heimlich).',
          icon: Icons.pan_tool,
        ),
        GuideStep(
          title: 'Alternez et appelez les secours',
          description:
              'Continuez à alterner 5 claques / 5 compressions. Si la personne perd connaissance, allongez-la et appelez immédiatement les secours.',
          icon: Icons.call,
        ),
      ],
    ),
    EmergencyCategory(
      id: 'burn',
      title: 'Brûlure',
      shortDescription: 'Brûlure thermique légère à modérée',
      icon: Icons.local_fire_department,
      color: AppColors.warning,
      steps: [
        GuideStep(
          title: 'Écartez la source de chaleur',
          description:
              'Éloignez immédiatement la personne de la source de brûlure (feu, liquide chaud, objet chaud).',
          icon: Icons.block,
        ),
        GuideStep(
          title: 'Refroidissez à l\'eau',
          description:
              'Passez la zone brûlée sous l\'eau tiède/fraîche (pas glacée) pendant au moins 15 à 20 minutes.',
          icon: Icons.water_drop,
        ),
        GuideStep(
          title: 'Retirez bijoux et vêtements',
          description:
              'Enlevez délicatement bijoux, montres ou vêtements près de la zone avant qu\'elle ne gonfle. Ne retirez jamais un tissu collé à la peau.',
          icon: Icons.watch_off,
        ),
        GuideStep(
          title: 'Protégez la brûlure',
          description:
              'Couvrez avec un linge propre et humide ou un pansement stérile non adhésif. N\'appliquez ni glace, ni beurre, ni dentifrice.',
          icon: Icons.healing,
        ),
        GuideStep(
          title: 'Consultez si nécessaire',
          description:
              'Si la brûlure est étendue, profonde, sur le visage/mains/organes génitaux, ou touche un enfant, appelez les secours.',
          icon: Icons.call,
        ),
      ],
    ),
    EmergencyCategory(
      id: 'bleeding',
      title: 'Saignement',
      shortDescription: 'Hémorragie externe importante',
      icon: Icons.bloodtype,
      color: AppColors.primary,
      steps: [
        GuideStep(
          title: 'Protégez-vous',
          description:
              'Si possible, mettez des gants ou un sac plastique sur vos mains avant tout contact avec le sang.',
          icon: Icons.health_and_safety,
        ),
        GuideStep(
          title: 'Allongez la personne',
          description:
              'Installez la personne au calme, si possible allongée, et rassurez-la.',
          icon: Icons.airline_seat_flat,
        ),
        GuideStep(
          title: 'Comprimez la plaie',
          description:
              'Appuyez fermement sur la plaie avec un linge propre ou un pansement pendant plusieurs minutes sans relâcher.',
          icon: Icons.pan_tool,
        ),
        GuideStep(
          title: 'Surélevez le membre',
          description:
              'Si la blessure est sur un bras ou une jambe, surélevez le membre au-dessus du niveau du cœur.',
          icon: Icons.arrow_upward,
        ),
        GuideStep(
          title: 'Maintenez et appelez',
          description:
              'Ne retirez jamais le linge imbibé (ajoutez-en un autre par-dessus). Appelez les secours si le saignement ne s\'arrête pas.',
          icon: Icons.call,
        ),
      ],
    ),
    EmergencyCategory(
      id: 'faint',
      title: 'Malaise',
      shortDescription: 'Perte de connaissance, respiration normale',
      icon: Icons.sick,
      color: AppColors.secondary,
      steps: [
        GuideStep(
          title: 'Vérifiez la conscience',
          description:
              'Parlez fort et tapotez ses épaules. Si elle ne répond pas mais respire normalement, passez à l\'étape suivante.',
          icon: Icons.record_voice_over,
        ),
        GuideStep(
          title: 'Vérifiez la respiration',
          description:
              'Penchez-vous près de sa bouche pendant 10 secondes : regardez, écoutez, sentez si elle respire.',
          icon: Icons.air,
        ),
        GuideStep(
          title: 'Placez en Position Latérale de Sécurité',
          description:
              'Si elle respire, tournez-la sur le côté, tête légèrement inclinée vers le bas, pour éviter qu\'elle s\'étouffe.',
          icon: Icons.airline_seat_individual_suite,
        ),
        GuideStep(
          title: 'Surveillez en continu',
          description:
              'Restez auprès d\'elle et vérifiez sa respiration régulièrement en attendant les secours.',
          icon: Icons.visibility,
        ),
        GuideStep(
          title: 'Appelez les secours',
          description:
              'Appelez immédiatement si elle ne reprend pas connaissance rapidement.',
          icon: Icons.call,
        ),
      ],
    ),
    EmergencyCategory(
      id: 'fracture',
      title: 'Fracture',
      shortDescription: 'Suspicion de fracture ou entorse grave',
      icon: Icons.accessibility_new,
      color: AppColors.secondary,
      steps: [
        GuideStep(
          title: 'Ne bougez pas le membre',
          description:
              'Ne tentez jamais de redresser ou remettre en place un os. Immobilisez la zone telle qu\'elle est.',
          icon: Icons.do_not_touch,
        ),
        GuideStep(
          title: 'Immobilisez la zone',
          description:
              'Si possible, calez le membre avec un vêtement roulé ou une attelle de fortune, sans forcer.',
          icon: Icons.healing,
        ),
        GuideStep(
          title: 'Appliquez du froid',
          description:
              'Mettez une poche de glace enveloppée dans un tissu sur la zone pour limiter le gonflement (jamais directement sur la peau).',
          icon: Icons.ac_unit,
        ),
        GuideStep(
          title: 'Surveillez la circulation',
          description:
              'Vérifiez que les doigts/orteils restent chauds et colorés. Desserrez tout bandage trop compressif.',
          icon: Icons.favorite,
        ),
        GuideStep(
          title: 'Appelez les secours',
          description:
              'Contactez les secours, surtout en cas de déformation visible, de douleur intense ou d\'incapacité à bouger.',
          icon: Icons.call,
        ),
      ],
    ),
    EmergencyCategory(
      id: 'electrocution',
      title: 'Électrocution',
      shortDescription: 'Contact avec une source électrique',
      icon: Icons.bolt,
      color: AppColors.warning,
      steps: [
        GuideStep(
          title: 'Coupez le courant',
          description:
              'Coupez l\'alimentation électrique (disjoncteur) avant tout contact. Ne touchez jamais la victime tant que le courant n\'est pas coupé.',
          icon: Icons.power_off,
        ),
        GuideStep(
          title: 'Éloignez la source si besoin',
          description:
              'Si vous ne pouvez pas couper le courant, écartez la source avec un objet non conducteur (bois, plastique sec).',
          icon: Icons.block,
        ),
        GuideStep(
          title: 'Vérifiez l\'état de la victime',
          description:
              'Une fois le danger écarté, vérifiez si elle respire et si elle est consciente.',
          icon: Icons.search,
        ),
        GuideStep(
          title: 'Position Latérale de Sécurité si besoin',
          description:
              'Si elle respire mais est inconsciente, mettez-la en position latérale de sécurité.',
          icon: Icons.airline_seat_individual_suite,
        ),
        GuideStep(
          title: 'Appelez les secours immédiatement',
          description:
              'Toute électrocution nécessite un avis médical, même si la personne semble aller bien.',
          icon: Icons.call,
        ),
      ],
    ),
    EmergencyCategory(
      id: 'cpr',
      title: 'RCP',
      shortDescription: 'Arrêt cardiaque — ne respire pas',
      icon: Icons.favorite,
      color: AppColors.primary,
      steps: [
        GuideStep(
          title: 'Vérifiez l\'absence de réponse',
          description:
              'Secouez et parlez fort. Si aucune réponse et aucune respiration normale, commencez la RCP immédiatement.',
          icon: Icons.record_voice_over,
        ),
        GuideStep(
          title: 'Appelez les secours en premier',
          description:
              'Appelez ou faites appeler les secours avant de commencer, ou mettez le haut-parleur pour être guidé en direct.',
          icon: Icons.call,
        ),
        GuideStep(
          title: 'Positionnez vos mains',
          description:
              'Placez le talon d\'une main au centre de la poitrine, l\'autre main par-dessus, doigts entrelacés.',
          icon: Icons.pan_tool,
        ),
        GuideStep(
          title: 'Compressions thoraciques',
          description:
              'Comprimez fort et vite, à 5-6 cm de profondeur, à un rythme de 100 à 120 compressions par minute. Utilisez le minuteur de l\'application pour garder le rythme.',
          icon: Icons.favorite,
        ),
        GuideStep(
          title: 'Continuez sans interruption',
          description:
              'Poursuivez les compressions jusqu\'à l\'arrivée des secours ou jusqu\'à ce que la personne montre des signes de vie.',
          icon: Icons.timer,
        ),
      ],
    ),
  ];

  static EmergencyCategory getById(String id) {
    return categories.firstWhere((cat) => cat.id == id);
  }
}