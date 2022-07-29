import 'package:mikhailovsky_app/screens/mainhall/presentation/data/PlaceId.dart';

import 'GroupPlace.dart';
import 'Place.dart';

List<Place> allPlaces() {
  return [
    ..._benoir(),
    ..._benoirLodge(),
    ..._mezzanine(),
    ..._mezzanineLodge(),
    ..._firstTier(),
    ..._firstTierLodge(),
    ..._secondTier(),
    ..._secondTierLodge(),
    ..._thirdTier(),
    ..._thirdTierLodge(),
    ..._groundFloor(),
    ..._royalLodge(),
    ..._aLodge(),
    ..._bLodge(),
    ..._cLodge(),
  ];
}

// 1-ый Ярус (1 - 3 ряды)
List<Place> _firstTier() {
  return [

    // 1-й ярус 1-ый ряд
    // Слева
    Place(PlaceId(1, PlaceType.firstTier, groupPosition: 1, sectionId: 1168302), 536.656, 591.113),
    Place(PlaceId(2, PlaceType.firstTier, groupPosition: 1, sectionId: 1168302), 564.387, 577.248),
    Place(PlaceId(3, PlaceType.firstTier, groupPosition: 1, sectionId: 1168302), 625.953, 549.502),
    Place(PlaceId(4, PlaceType.firstTier, groupPosition: 1, sectionId: 1168302), 656.855, 537.186),
    Place(PlaceId(5, PlaceType.firstTier, groupPosition: 1, sectionId: 1168302), 688.137, 525.888),
    Place(PlaceId(6, PlaceType.firstTier, groupPosition: 1, sectionId: 1168302), 719.816, 515.602),
    Place(PlaceId(7, PlaceType.firstTier, groupPosition: 1, sectionId: 1168302), 751.766, 506.397),
    Place(PlaceId(8, PlaceType.firstTier, groupPosition: 1, sectionId: 1168302), 784.055, 498.35),
    // Справа
    Place(PlaceId(9 , PlaceType.firstTier, groupPosition: 1, sectionId: 79352), 1053.33, 487.94),
    Place(PlaceId(10, PlaceType.firstTier, groupPosition: 1, sectionId: 79352), 1085.56, 491.984),
    Place(PlaceId(11, PlaceType.firstTier, groupPosition: 1, sectionId: 79352), 1118.49, 498.186),
    Place(PlaceId(12, PlaceType.firstTier, groupPosition: 1, sectionId: 79352), 1151.23, 505.917),
    Place(PlaceId(13, PlaceType.firstTier, groupPosition: 1, sectionId: 79352), 1182.1, 514.422),
    Place(PlaceId(14, PlaceType.firstTier, groupPosition: 1, sectionId: 79352), 1215.09, 524.735),
    Place(PlaceId(15, PlaceType.firstTier, groupPosition: 1, sectionId: 79352), 1246.16, 535.607),
    Place(PlaceId(16, PlaceType.firstTier, groupPosition: 1, sectionId: 79352), 1277.54, 547.733),
    Place(PlaceId(18, PlaceType.firstTier, groupPosition: 1, sectionId: 79352), 1368.74, 591.113),
    Place(PlaceId(17, PlaceType.firstTier, groupPosition: 1, sectionId: 79352), 1341.01, 577.248),

    // 1-й ярус 2-ый ряд
    // Слева
    Place(PlaceId(1, PlaceType.firstTier, groupPosition: 2, sectionId: 1168302), 595.484, 526.26),
    Place(PlaceId(2, PlaceType.firstTier, groupPosition: 2, sectionId: 1168302), 625.953, 512.938),
    Place(PlaceId(3, PlaceType.firstTier, groupPosition: 2, sectionId: 1168302), 656.855, 500.622),
    Place(PlaceId(4, PlaceType.firstTier, groupPosition: 2, sectionId: 1168302), 688.133, 489.324),
    Place(PlaceId(5, PlaceType.firstTier, groupPosition: 2, sectionId: 1168302), 719.816, 479.038),
    Place(PlaceId(6, PlaceType.firstTier, groupPosition: 2, sectionId: 1168302), 751.766, 469.833),
    Place(PlaceId(7, PlaceType.firstTier, groupPosition: 2, sectionId: 1168302), 784.055, 461.786),
    // Справа
    Place(PlaceId(8 , PlaceType.firstTier, groupPosition: 2, sectionId: 79352), 1053.33, 449.12),
    Place(PlaceId(9 , PlaceType.firstTier, groupPosition: 2, sectionId: 79352), 1085.56, 453.164),
    Place(PlaceId(10, PlaceType.firstTier, groupPosition: 2, sectionId: 79352), 1118.49, 459.366),
    Place(PlaceId(11, PlaceType.firstTier, groupPosition: 2, sectionId: 79352), 1151.23, 467.096),
    Place(PlaceId(12, PlaceType.firstTier, groupPosition: 2, sectionId: 79352), 1182.1, 475.601),
    Place(PlaceId(13, PlaceType.firstTier, groupPosition: 2, sectionId: 79352), 1215.09, 485.915),
    Place(PlaceId(14, PlaceType.firstTier, groupPosition: 2, sectionId: 79352), 1246.16, 496.785),
    Place(PlaceId(15, PlaceType.firstTier, groupPosition: 2, sectionId: 79352), 1277.54, 508.913),
    Place(PlaceId(16, PlaceType.firstTier, groupPosition: 2, sectionId: 79352), 1307.05, 521.435),

    // 1-й ярус 3-ый ряд
    // Слева
    Place(PlaceId(1, PlaceType.firstTier, groupPosition: 3, sectionId: 1168302), 565.348, 504.329),
    Place(PlaceId(2, PlaceType.firstTier, groupPosition: 3, sectionId: 1168302), 595.484, 489.888),
    Place(PlaceId(3, PlaceType.firstTier, groupPosition: 3, sectionId: 1168302), 625.953, 476.565),
    Place(PlaceId(4, PlaceType.firstTier, groupPosition: 3, sectionId: 1168302), 656.855, 464.249),
    Place(PlaceId(5, PlaceType.firstTier, groupPosition: 3, sectionId: 1168302), 688.137, 452.951),
    Place(PlaceId(6, PlaceType.firstTier, groupPosition: 3, sectionId: 1168302), 719.816, 442.665),
    Place(PlaceId(7, PlaceType.firstTier, groupPosition: 3, sectionId: 1168302), 751.766, 433.46),
    Place(PlaceId(8, PlaceType.firstTier, groupPosition: 3, sectionId: 1168302), 784.055, 425.413),
    // Справа
    Place(PlaceId(9 , PlaceType.firstTier, groupPosition: 3, sectionId: 79352), 1053.33, 410.991),
    Place(PlaceId(10, PlaceType.firstTier, groupPosition: 3, sectionId: 79352), 1085.56, 415.035),
    Place(PlaceId(11, PlaceType.firstTier, groupPosition: 3, sectionId: 79352), 1118.49, 421.237),
    Place(PlaceId(12, PlaceType.firstTier, groupPosition: 3, sectionId: 79352), 1151.23, 428.967),
    Place(PlaceId(13, PlaceType.firstTier, groupPosition: 3, sectionId: 79352), 1182.1, 437.472),
    Place(PlaceId(14, PlaceType.firstTier, groupPosition: 3, sectionId: 79352), 1215.09, 447.786),
    Place(PlaceId(15, PlaceType.firstTier, groupPosition: 3, sectionId: 79352), 1246.16, 458.656),
    Place(PlaceId(16, PlaceType.firstTier, groupPosition: 3, sectionId: 79352), 1277.54, 470.784),
    Place(PlaceId(17, PlaceType.firstTier, groupPosition: 3, sectionId: 79352), 1307.05, 483.306),
    Place(PlaceId(18, PlaceType.firstTier, groupPosition: 3, sectionId: 79352), 1337.35, 497.367),
  ];
}

// Ложи 1-ого яруса (1 - 14 ложи)
List<Place> _firstTierLodge() {
  return [
    // Слева (1 - 7 ложи )
    // 1 ложа 1-го яруса
    Place(PlaceId(1, PlaceType.firstTierLodge, groupPosition: 1, sectionId: 15341), 232.148, 1344.96),
    Place(PlaceId(2, PlaceType.firstTierLodge, groupPosition: 1, sectionId: 15341), 232.148, 1311.68),
    Place(PlaceId(3, PlaceType.firstTierLodge, groupPosition: 1, sectionId: 15341), 232.148, 1278.4),
    // 2 ложа 1-го яруса
    Place(PlaceId(1, PlaceType.firstTierLodge, groupPosition: 2, sectionId: 15341), 232.148, 1245.13),
    Place(PlaceId(2, PlaceType.firstTierLodge, groupPosition: 2, sectionId: 15341), 232.148, 1211.85),
    Place(PlaceId(3, PlaceType.firstTierLodge, groupPosition: 2, sectionId: 15341), 232.148, 1178.57),
    // 3 ложа 1-го яруса
    Place(PlaceId(1, PlaceType.firstTierLodge, groupPosition: 3, sectionId: 15341), 232.148, 1145.29),
    Place(PlaceId(2, PlaceType.firstTierLodge, groupPosition: 3, sectionId: 15341), 232.148, 1112.02),
    Place(PlaceId(3, PlaceType.firstTierLodge, groupPosition: 3, sectionId: 15341), 232.148, 1078.74),
    // 4 ложа 1-го яруса
    Place(PlaceId(1, PlaceType.firstTierLodge, groupPosition: 4, sectionId: 15341), 232.148, 1045.46),
    Place(PlaceId(2, PlaceType.firstTierLodge, groupPosition: 4, sectionId: 15341), 232.148, 1012.19),
    Place(PlaceId(3, PlaceType.firstTierLodge, groupPosition: 4, sectionId: 15341), 233.172, 980.048),
    // 5 ложа 1-го яруса
    Place(PlaceId(1, PlaceType.firstTierLodge, groupPosition: 5, sectionId: 15341), 236.797, 947.133),
    Place(PlaceId(2, PlaceType.firstTierLodge, groupPosition: 5, sectionId: 15341), 243.391, 914.818),
    Place(PlaceId(3, PlaceType.firstTierLodge, groupPosition: 5, sectionId: 15341), 253.156, 882.772),
    // 6 ложа 1-го яруса
    Place(PlaceId(1, PlaceType.firstTierLodge, groupPosition: 6, sectionId: 15341), 265.723, 852.059),
    Place(PlaceId(2, PlaceType.firstTierLodge, groupPosition: 6, sectionId: 15341), 281.082, 822.383),
    Place(PlaceId(3, PlaceType.firstTierLodge, groupPosition: 6, sectionId: 15341), 298.852, 794.168),
    // 7 ложа 1-го яруса
    Place(PlaceId(1, PlaceType.firstTierLodge, groupPosition: 7, sectionId: 15341), 318.629, 767.624),
    Place(PlaceId(2, PlaceType.firstTierLodge, groupPosition: 7, sectionId: 15341), 340.461, 742.359),
    Place(PlaceId(3, PlaceType.firstTierLodge, groupPosition: 7, sectionId: 15341), 365.336, 716.79),


    // Справа (8 - 14 ложи )
    // 1 ложа 1-го яруса
    Place(PlaceId(1, PlaceType.firstTierLodge, groupPosition: 14, sectionId: 15341), 1672.78, 1344.94),
    Place(PlaceId(2, PlaceType.firstTierLodge, groupPosition: 14, sectionId: 15341), 1672.78, 1311.66),
    Place(PlaceId(3, PlaceType.firstTierLodge, groupPosition: 14, sectionId: 15341), 1672.78, 1278.38),
    // 2 ложа 1-го яруса
    Place(PlaceId(1, PlaceType.firstTierLodge, groupPosition: 13, sectionId: 15341), 1672.78, 1245.1),
    Place(PlaceId(2, PlaceType.firstTierLodge, groupPosition: 13, sectionId: 15341), 1672.78, 1211.83),
    Place(PlaceId(3, PlaceType.firstTierLodge, groupPosition: 13, sectionId: 15341), 1672.78, 1178.55),
    // 3 ложа 1-го яруса
    Place(PlaceId(1, PlaceType.firstTierLodge, groupPosition: 12, sectionId: 15341), 1672.78, 1145.27),
    Place(PlaceId(2, PlaceType.firstTierLodge, groupPosition: 12, sectionId: 15341), 1672.78, 1111.99),
    Place(PlaceId(3, PlaceType.firstTierLodge, groupPosition: 12, sectionId: 15341), 1672.78, 1078.71),
    // 4 ложа 1-го яруса
    Place(PlaceId(1, PlaceType.firstTierLodge, groupPosition: 11, sectionId: 15341), 1672.78, 1045.43),
    Place(PlaceId(2, PlaceType.firstTierLodge, groupPosition: 11, sectionId: 15341), 1672.78, 1012.15),
    Place(PlaceId(3, PlaceType.firstTierLodge, groupPosition: 11, sectionId: 15341), 1671.76, 980.013),
    // 5 ложа 1-го яруса
    Place(PlaceId(1, PlaceType.firstTierLodge, groupPosition: 10, sectionId: 15341), 1668.14, 947.096),
    Place(PlaceId(2, PlaceType.firstTierLodge, groupPosition: 10, sectionId: 15341), 1661.54, 914.777),
    Place(PlaceId(3, PlaceType.firstTierLodge, groupPosition: 10, sectionId: 15341), 1651.77, 882.731),
    // 6 ложа 1-го яруса
    Place(PlaceId(1, PlaceType.firstTierLodge, groupPosition: 9, sectionId: 15341), 1639.21, 852.016),
    Place(PlaceId(2, PlaceType.firstTierLodge, groupPosition: 9, sectionId: 15341), 1623.85, 822.339),
    Place(PlaceId(3, PlaceType.firstTierLodge, groupPosition: 9, sectionId: 15341), 1606.08, 794.123),
    // 7 ложа 1-го яруса
    Place(PlaceId(1, PlaceType.firstTierLodge, groupPosition: 8, sectionId: 15341), 1586.3, 767.577),
    Place(PlaceId(2, PlaceType.firstTierLodge, groupPosition: 8, sectionId: 15341), 1564.46, 742.31),
    Place(PlaceId(3, PlaceType.firstTierLodge, groupPosition: 8, sectionId: 15341), 1541.62, 716.915),
  ];
}

// 2-ой ярус (1 - 3 ряды)
List<Place> _secondTier() {
  return [
    // 1-ый ряд
    Place(PlaceId(1, PlaceType.secondTier, groupPosition: 1, sectionId: 54162), 390.405, 523.617),
    Place(PlaceId(2, PlaceType.secondTier, groupPosition: 1, sectionId: 54162), 417.35, 502.916),
    Place(PlaceId(3, PlaceType.secondTier, groupPosition: 1, sectionId: 54162), 445.421, 483.635),
    Place(PlaceId(4, PlaceType.secondTier, groupPosition: 1, sectionId: 54162), 474.447, 465.783),
    Place(PlaceId(5, PlaceType.secondTier, groupPosition: 1, sectionId: 54162), 504.552, 449.226),
    Place(PlaceId(6, PlaceType.secondTier, groupPosition: 1, sectionId: 54162), 535.082, 434.182),
    Place(PlaceId(7, PlaceType.secondTier, groupPosition: 1, sectionId: 54162), 566.348, 420.421),
    Place(PlaceId(8, PlaceType.secondTier, groupPosition: 1, sectionId: 54162), 598.204, 407.911),
    Place(PlaceId(9, PlaceType.secondTier, groupPosition: 1, sectionId: 54162), 630.411, 396.67),
    Place(PlaceId(10, PlaceType.secondTier, groupPosition: 1, sectionId: 54162), 663.052, 386.592),
    Place(PlaceId(11, PlaceType.secondTier, groupPosition: 1, sectionId: 54162), 696.041, 377.637),
    Place(PlaceId(12, PlaceType.secondTier, groupPosition: 1, sectionId: 54162), 729.335, 369.783),
    Place(PlaceId(13, PlaceType.secondTier, groupPosition: 1, sectionId: 54162), 762.827, 363.005),
    Place(PlaceId(14, PlaceType.secondTier, groupPosition: 1, sectionId: 54162), 796.543, 357.264),
    Place(PlaceId(15, PlaceType.secondTier, groupPosition: 1, sectionId: 54162), 830.399, 352.557),
    Place(PlaceId(16, PlaceType.secondTier, groupPosition: 1, sectionId: 54162), 864.4, 348.881),
    Place(PlaceId(17, PlaceType.secondTier, groupPosition: 1, sectionId: 54162), 898.518, 346.284),
    Place(PlaceId(18, PlaceType.secondTier, groupPosition: 1, sectionId: 54162), 931.673, 344.873),
    Place(PlaceId(19, PlaceType.secondTier, groupPosition: 1, sectionId: 54142), 975.325, 344.873),
    Place(PlaceId(20, PlaceType.secondTier, groupPosition: 1, sectionId: 54142), 1008.48, 346.284),
    Place(PlaceId(21, PlaceType.secondTier, groupPosition: 1, sectionId: 54142), 1042.6, 348.881),
    Place(PlaceId(22, PlaceType.secondTier, groupPosition: 1, sectionId: 54142), 1076.6, 352.557),
    Place(PlaceId(23, PlaceType.secondTier, groupPosition: 1, sectionId: 54142), 1110.46, 357.264),
    Place(PlaceId(24, PlaceType.secondTier, groupPosition: 1, sectionId: 54142), 1144.17, 363.006),
    Place(PlaceId(25, PlaceType.secondTier, groupPosition: 1, sectionId: 54142), 1177.66, 369.783),
    Place(PlaceId(26, PlaceType.secondTier, groupPosition: 1, sectionId: 54142), 1210.95, 377.637),
    Place(PlaceId(27, PlaceType.secondTier, groupPosition: 1, sectionId: 54142), 1243.94, 386.591),
    Place(PlaceId(28, PlaceType.secondTier, groupPosition: 1, sectionId: 54142), 1276.59, 396.67),
    Place(PlaceId(29, PlaceType.secondTier, groupPosition: 1, sectionId: 54142), 1308.79, 407.911),
    Place(PlaceId(30, PlaceType.secondTier, groupPosition: 1, sectionId: 54142), 1340.65, 420.42),
    Place(PlaceId(31, PlaceType.secondTier, groupPosition: 1, sectionId: 54142), 1371.91, 434.182),
    Place(PlaceId(32, PlaceType.secondTier, groupPosition: 1, sectionId: 54142), 1402.44, 449.226),
    Place(PlaceId(33, PlaceType.secondTier, groupPosition: 1, sectionId: 54142), 1432.55, 465.783),
    Place(PlaceId(34, PlaceType.secondTier, groupPosition: 1, sectionId: 54142), 1461.57, 483.634),
    Place(PlaceId(35, PlaceType.secondTier, groupPosition: 1, sectionId: 54142), 1489.65, 502.915),
    Place(PlaceId(36, PlaceType.secondTier, groupPosition: 1, sectionId: 54142), 1516.59, 523.617),

    // 2-ой ряд
    Place(PlaceId(1, PlaceType.secondTier, groupPosition: 2, sectionId: 54162), 475.013, 426.565),
    Place(PlaceId(2, PlaceType.secondTier, groupPosition: 2, sectionId: 54162), 505.118, 410.008),
    Place(PlaceId(3, PlaceType.secondTier, groupPosition: 2, sectionId: 54162), 535.649, 394.964),
    Place(PlaceId(4, PlaceType.secondTier, groupPosition: 2, sectionId: 54162), 566.914, 381.203),
    Place(PlaceId(5, PlaceType.secondTier, groupPosition: 2, sectionId: 54162), 598.771, 368.693),
    Place(PlaceId(6, PlaceType.secondTier, groupPosition: 2, sectionId: 54162), 630.974, 357.452),
    Place(PlaceId(7, PlaceType.secondTier, groupPosition: 2, sectionId: 54162), 663.615, 347.374),
    Place(PlaceId(8, PlaceType.secondTier, groupPosition: 2, sectionId: 54162), 696.608, 338.418),
    Place(PlaceId(9, PlaceType.secondTier, groupPosition: 2, sectionId: 54162), 729.905, 330.564),
    Place(PlaceId(10, PlaceType.secondTier, groupPosition: 2, sectionId: 54162), 763.398, 323.787),
    Place(PlaceId(11, PlaceType.secondTier, groupPosition: 2, sectionId: 54162), 797.105, 318.045),
    Place(PlaceId(12, PlaceType.secondTier, groupPosition: 2, sectionId: 54162), 830.961, 313.338),
    Place(PlaceId(13, PlaceType.secondTier, groupPosition: 2, sectionId: 54162), 864.966, 309.663),
    Place(PlaceId(14, PlaceType.secondTier, groupPosition: 2, sectionId: 54162), 899.085, 307.064),
    Place(PlaceId(15, PlaceType.secondTier, groupPosition: 2, sectionId: 54162), 932.239, 305.655),
    Place(PlaceId(16, PlaceType.secondTier, groupPosition: 2, sectionId: 54142), 975.325, 305.655),
    Place(PlaceId(17, PlaceType.secondTier, groupPosition: 2, sectionId: 54142), 1008.48, 307.064),
    Place(PlaceId(18, PlaceType.secondTier, groupPosition: 2, sectionId: 54142), 1042.6, 309.663),
    Place(PlaceId(19, PlaceType.secondTier, groupPosition: 2, sectionId: 54142), 1076.6, 313.339),
    Place(PlaceId(20, PlaceType.secondTier, groupPosition: 2, sectionId: 54142), 1110.46, 318.046),
    Place(PlaceId(21, PlaceType.secondTier, groupPosition: 2, sectionId: 54142), 1144.17, 323.788),
    Place(PlaceId(22, PlaceType.secondTier, groupPosition: 2, sectionId: 54142), 1177.66, 330.565),
    Place(PlaceId(23, PlaceType.secondTier, groupPosition: 2, sectionId: 54142), 1210.95, 338.42),
    Place(PlaceId(24, PlaceType.secondTier, groupPosition: 2, sectionId: 54142), 1243.94, 347.373),
    Place(PlaceId(25, PlaceType.secondTier, groupPosition: 2, sectionId: 54142), 1276.59, 357.452),
    Place(PlaceId(26, PlaceType.secondTier, groupPosition: 2, sectionId: 54142), 1308.79, 368.693),
    Place(PlaceId(27, PlaceType.secondTier, groupPosition: 2, sectionId: 54142), 1340.65, 381.203),
    Place(PlaceId(28, PlaceType.secondTier, groupPosition: 2, sectionId: 54142), 1371.91, 394.964),
    Place(PlaceId(29, PlaceType.secondTier, groupPosition: 2, sectionId: 54142), 1402.44, 410.008),
    Place(PlaceId(30, PlaceType.secondTier, groupPosition: 2, sectionId: 54142), 1432.55, 426.566),


    // 3-ий ряд
    Place(PlaceId(1, PlaceType.secondTier, groupPosition: 3, sectionId: 54162), 504.552, 370.283),
    Place(PlaceId(2, PlaceType.secondTier, groupPosition: 3, sectionId: 54162), 535.082, 355.238),
    Place(PlaceId(3, PlaceType.secondTier, groupPosition: 3, sectionId: 54162), 566.348, 341.477),
    Place(PlaceId(4, PlaceType.secondTier, groupPosition: 3, sectionId: 54162), 598.204, 328.967),
    Place(PlaceId(5, PlaceType.secondTier, groupPosition: 3, sectionId: 54162), 630.411, 317.726),
    Place(PlaceId(6, PlaceType.secondTier, groupPosition: 3, sectionId: 54162), 663.052, 307.648),
    Place(PlaceId(7, PlaceType.secondTier, groupPosition: 3, sectionId: 54162), 696.041, 298.693),
    Place(PlaceId(8, PlaceType.secondTier, groupPosition: 3, sectionId: 54162), 729.335, 290.839),
    Place(PlaceId(9, PlaceType.secondTier, groupPosition: 3, sectionId: 54162), 762.827, 284.061),
    Place(PlaceId(10, PlaceType.secondTier, groupPosition: 3, sectionId: 54162), 796.543, 278.32),
    Place(PlaceId(11, PlaceType.secondTier, groupPosition: 3, sectionId: 54162), 830.399, 273.613),
    Place(PlaceId(12, PlaceType.secondTier, groupPosition: 3, sectionId: 54162), 864.4, 269.937),
    Place(PlaceId(13, PlaceType.secondTier, groupPosition: 3, sectionId: 54162), 898.518, 267.339),
    Place(PlaceId(14, PlaceType.secondTier, groupPosition: 3, sectionId: 54162), 931.673, 265.93),
    Place(PlaceId(15, PlaceType.secondTier, groupPosition: 3, sectionId: 54142), 975.325, 265.93),
    Place(PlaceId(16, PlaceType.secondTier, groupPosition: 3, sectionId: 54142), 1008.48, 267.339),
    Place(PlaceId(17, PlaceType.secondTier, groupPosition: 3, sectionId: 54142), 1042.6, 269.937),
    Place(PlaceId(18, PlaceType.secondTier, groupPosition: 3, sectionId: 54142), 1076.6, 273.613),
    Place(PlaceId(19, PlaceType.secondTier, groupPosition: 3, sectionId: 54142), 1110.46, 278.32),
    Place(PlaceId(20, PlaceType.secondTier, groupPosition: 3, sectionId: 54142), 1144.17, 284.062),
    Place(PlaceId(21, PlaceType.secondTier, groupPosition: 3, sectionId: 54142), 1177.66, 290.84),
    Place(PlaceId(22, PlaceType.secondTier, groupPosition: 3, sectionId: 54142), 1210.95, 298.694),
    Place(PlaceId(23, PlaceType.secondTier, groupPosition: 3, sectionId: 54142), 1243.94, 307.647),
    Place(PlaceId(24, PlaceType.secondTier, groupPosition: 3, sectionId: 54142), 1276.59, 317.726),
    Place(PlaceId(25, PlaceType.secondTier, groupPosition: 3, sectionId: 54142), 1308.79, 328.967),
    Place(PlaceId(26, PlaceType.secondTier, groupPosition: 3, sectionId: 54142), 1340.65, 341.477),
    Place(PlaceId(27, PlaceType.secondTier, groupPosition: 3, sectionId: 54142), 1371.91, 355.239),
    Place(PlaceId(28, PlaceType.secondTier, groupPosition: 3, sectionId: 54142), 1402.44, 370.283),
  ];
}

// Ложи 2-ого яруса (1 - 12 ложи)
List<Place> _secondTierLodge() {
  return [
    // Слева (1 - 6 ложи)
    // 1 ложа 2-го яруса
    Place(PlaceId(1, PlaceType.secondTierLodge, groupPosition: 1, sectionId: 15342), 165.16, 1186.37),
    Place(PlaceId(2, PlaceType.secondTierLodge, groupPosition: 1, sectionId: 15342), 165.16, 1152.9),
    Place(PlaceId(3, PlaceType.secondTierLodge, groupPosition: 1, sectionId: 15342), 165.16, 1119.43),
    // 2 ложа 2-го яруса
    Place(PlaceId(1, PlaceType.secondTierLodge, groupPosition: 2, sectionId: 15342), 165.16, 1085.96),
    Place(PlaceId(2, PlaceType.secondTierLodge, groupPosition: 2, sectionId: 15342), 165.16, 1052.49),
    Place(PlaceId(3, PlaceType.secondTierLodge, groupPosition: 2, sectionId: 15342), 165.16, 1019.02),
    // 3 ложа 2-го яруса
    Place(PlaceId(1, PlaceType.secondTierLodge, groupPosition: 3, sectionId: 15342), 167.266, 969.649),
    Place(PlaceId(2, PlaceType.secondTierLodge, groupPosition: 3, sectionId: 15342), 170.16, 936.919),
    Place(PlaceId(3, PlaceType.secondTierLodge, groupPosition: 3, sectionId: 15342), 174.66, 903.263),
    // 4 ложа 2-го яруса
    Place(PlaceId(1, PlaceType.secondTierLodge, groupPosition: 4, sectionId: 15342), 180.527, 871.086),
    Place(PlaceId(2, PlaceType.secondTierLodge, groupPosition: 4, sectionId: 15342), 188.199, 838.18),
    Place(PlaceId(3, PlaceType.secondTierLodge, groupPosition: 4, sectionId: 15342), 197.273, 806.959),
    // 5 ложа 2-го яруса
    Place(PlaceId(1, PlaceType.secondTierLodge, groupPosition: 5, sectionId: 15342), 208.391, 775.217),
    Place(PlaceId(2, PlaceType.secondTierLodge, groupPosition: 5, sectionId: 15342), 221.309, 744.184),
    Place(PlaceId(3, PlaceType.secondTierLodge, groupPosition: 5, sectionId: 15342), 235.523, 715.045),
    // 6 ложа 2-го яруса
    Place(PlaceId(1, PlaceType.secondTierLodge, groupPosition: 6, sectionId: 15342), 252.129, 685.626),
    Place(PlaceId(2, PlaceType.secondTierLodge, groupPosition: 6, sectionId: 15342), 269.926, 658.147),
    Place(PlaceId(3, PlaceType.secondTierLodge, groupPosition: 6, sectionId: 15342), 290.363, 630.529),

    // Справа (7 - 12 ложи)
    // 1 ложа 2-го яруса
    Place(PlaceId(1, PlaceType.secondTierLodge, groupPosition: 11, sectionId: 15342), 1740.21, 1085.96),
    Place(PlaceId(2, PlaceType.secondTierLodge, groupPosition: 11, sectionId: 15342), 1740.21, 1052.49),
    Place(PlaceId(3, PlaceType.secondTierLodge, groupPosition: 11, sectionId: 15342), 1740.21, 1019.02),
    // 2 ложа 2-го яруса
    Place(PlaceId(1, PlaceType.secondTierLodge, groupPosition: 12, sectionId: 15342), 1740.21, 1186.37),
    Place(PlaceId(2, PlaceType.secondTierLodge, groupPosition: 12, sectionId: 15342), 1740.21, 1152.9),
    Place(PlaceId(3, PlaceType.secondTierLodge, groupPosition: 12, sectionId: 15342), 1740.21, 1119.43),
    // 3 ложа 2-го яруса
    Place(PlaceId(1, PlaceType.secondTierLodge, groupPosition: 10, sectionId: 15342), 1736.43, 970.684),
    Place(PlaceId(2, PlaceType.secondTierLodge, groupPosition: 10, sectionId: 15342), 1733.54, 937.966),
    Place(PlaceId(3, PlaceType.secondTierLodge, groupPosition: 10, sectionId: 15342), 1729.05, 904.319),
    // 4 ложа 2-го яруса
    Place(PlaceId(1, PlaceType.secondTierLodge, groupPosition: 9, sectionId: 15342), 1723.21, 872.151),
    Place(PlaceId(2, PlaceType.secondTierLodge, groupPosition: 9, sectionId: 15342), 1715.55, 839.254),
    Place(PlaceId(3, PlaceType.secondTierLodge, groupPosition: 9, sectionId: 15342), 1706.5, 808.039),
    // 5 ложа 2-го яруса
    Place(PlaceId(1, PlaceType.secondTierLodge, groupPosition: 8, sectionId: 15342), 1695.39, 776.307),
    Place(PlaceId(2, PlaceType.secondTierLodge, groupPosition: 8, sectionId: 15342), 1682.5, 745.28),
    Place(PlaceId(3, PlaceType.secondTierLodge, groupPosition: 8, sectionId: 15342), 1668.3, 716.149),
    // 6 ложа 2-го яруса
    Place(PlaceId(1, PlaceType.secondTierLodge, groupPosition: 7, sectionId: 15342), 1651.73, 686.734),
    Place(PlaceId(2, PlaceType.secondTierLodge, groupPosition: 7, sectionId: 15342), 1633.95, 659.26),
    Place(PlaceId(3, PlaceType.secondTierLodge, groupPosition: 7, sectionId: 15342), 1613.54, 631.644),
  ];
}

// 3-ий ярус (1 - 3 ряды)
List<Place> _thirdTier() {
  return [
    // 1-ый ряд
    Place(PlaceId(1, PlaceType.thirdTier, groupPosition: 1, sectionId: 54164), 395.023, 367.546),
    Place(PlaceId(2, PlaceType.thirdTier, groupPosition: 1, sectionId: 54164), 422.896, 349.472),
    Place(PlaceId(3, PlaceType.thirdTier, groupPosition: 1, sectionId: 54164), 451.686, 332.589),
    Place(PlaceId(4, PlaceType.thirdTier, groupPosition: 1, sectionId: 54164), 481.094, 317.003),
    Place(PlaceId(5, PlaceType.thirdTier, groupPosition: 1, sectionId: 54164), 511.266, 302.558),
    Place(PlaceId(6, PlaceType.thirdTier, groupPosition: 1, sectionId: 54164), 541.884, 289.341),
    Place(PlaceId(7, PlaceType.thirdTier, groupPosition: 1, sectionId: 54164), 573.053, 277.211),
    Place(PlaceId(8, PlaceType.thirdTier, groupPosition: 1, sectionId: 54164), 604.625, 266.178),
    Place(PlaceId(9, PlaceType.thirdTier, groupPosition: 1, sectionId: 54164), 636.619, 256.188),
    Place(PlaceId(10, PlaceType.thirdTier, groupPosition: 1, sectionId: 54164), 668.926, 247.226),
    Place(PlaceId(11, PlaceType.thirdTier, groupPosition: 1, sectionId: 54164), 701.475, 239.254),
    Place(PlaceId(12, PlaceType.thirdTier, groupPosition: 1, sectionId: 54164), 734.317, 232.244),
    Place(PlaceId(13, PlaceType.thirdTier, groupPosition: 1, sectionId: 54164), 767.311, 226.19),
    Place(PlaceId(14, PlaceType.thirdTier, groupPosition: 1, sectionId: 54164), 800.49, 221.064),
    Place(PlaceId(15, PlaceType.thirdTier, groupPosition: 1, sectionId: 54164), 833.816, 216.872),
    Place(PlaceId(16, PlaceType.thirdTier, groupPosition: 1, sectionId: 54164), 867.254, 213.637),
    Place(PlaceId(17, PlaceType.thirdTier, groupPosition: 1, sectionId: 54164), 900.778, 211.381),
    Place(PlaceId(18, PlaceType.thirdTier, groupPosition: 1, sectionId: 54164), 933.343, 210.207),
    Place(PlaceId(19, PlaceType.thirdTier, groupPosition: 1, sectionId: 54163), 974.367, 210.207),
    Place(PlaceId(20, PlaceType.thirdTier, groupPosition: 1, sectionId: 54163), 1006.93, 211.381),
    Place(PlaceId(21, PlaceType.thirdTier, groupPosition: 1, sectionId: 54163), 1040.46, 213.637),
    Place(PlaceId(22, PlaceType.thirdTier, groupPosition: 1, sectionId: 54163), 1073.89, 216.872),
    Place(PlaceId(23, PlaceType.thirdTier, groupPosition: 1, sectionId: 54163), 1107.22, 221.064),
    Place(PlaceId(24, PlaceType.thirdTier, groupPosition: 1, sectionId: 54163), 1140.4, 226.19),
    Place(PlaceId(25, PlaceType.thirdTier, groupPosition: 1, sectionId: 54163), 1173.4, 232.245),
    Place(PlaceId(26, PlaceType.thirdTier, groupPosition: 1, sectionId: 54163), 1206.23, 239.254),
    Place(PlaceId(27, PlaceType.thirdTier, groupPosition: 1, sectionId: 54163), 1238.78, 247.226),
    Place(PlaceId(28, PlaceType.thirdTier, groupPosition: 1, sectionId: 54163), 1271.09, 256.187),
    Place(PlaceId(29, PlaceType.thirdTier, groupPosition: 1, sectionId: 54163), 1303.08, 266.179),
    Place(PlaceId(30, PlaceType.thirdTier, groupPosition: 1, sectionId: 54163), 1334.66, 277.212),
    Place(PlaceId(31, PlaceType.thirdTier, groupPosition: 1, sectionId: 54163), 1365.83, 289.34),
    Place(PlaceId(32, PlaceType.thirdTier, groupPosition: 1, sectionId: 54163), 1396.45, 302.557),
    Place(PlaceId(33, PlaceType.thirdTier, groupPosition: 1, sectionId: 54163), 1426.61, 317.002),
    Place(PlaceId(34, PlaceType.thirdTier, groupPosition: 1, sectionId: 54163), 1456.03, 332.588),
    Place(PlaceId(35, PlaceType.thirdTier, groupPosition: 1, sectionId: 54163), 1484.81, 349.471),
    Place(PlaceId(36, PlaceType.thirdTier, groupPosition: 1, sectionId: 54163), 1512.69, 367.545),

    // 2-ой ряд
    Place(PlaceId(1, PlaceType.thirdTier, groupPosition: 2, sectionId: 54164), 510.809, 265.391),
    Place(PlaceId(2, PlaceType.thirdTier, groupPosition: 2, sectionId: 54164), 541.427, 252.173),
    Place(PlaceId(3, PlaceType.thirdTier, groupPosition: 2, sectionId: 54164), 572.596, 240.043),
    Place(PlaceId(4, PlaceType.thirdTier, groupPosition: 2, sectionId: 54164), 604.172, 229.01),
    Place(PlaceId(5, PlaceType.thirdTier, groupPosition: 2, sectionId: 54164), 636.166, 219.02),
    Place(PlaceId(6, PlaceType.thirdTier, groupPosition: 2, sectionId: 54164), 668.473, 210.058),
    Place(PlaceId(7, PlaceType.thirdTier, groupPosition: 2, sectionId: 54164), 701.021, 202.086),
    Place(PlaceId(8, PlaceType.thirdTier, groupPosition: 2, sectionId: 54164), 733.86, 195.077),
    Place(PlaceId(9, PlaceType.thirdTier, groupPosition: 2, sectionId: 54164), 766.854, 189.023),
    Place(PlaceId(10, PlaceType.thirdTier, groupPosition: 2, sectionId: 54164), 800.036, 183.896),
    Place(PlaceId(11, PlaceType.thirdTier, groupPosition: 2, sectionId: 54164), 833.363, 179.704),
    Place(PlaceId(12, PlaceType.thirdTier, groupPosition: 2, sectionId: 54164), 866.797, 176.469),
    Place(PlaceId(13, PlaceType.thirdTier, groupPosition: 2, sectionId: 54164), 900.321, 174.213),
    Place(PlaceId(14, PlaceType.thirdTier, groupPosition: 2, sectionId: 54164), 932.886, 173.039),
    Place(PlaceId(15, PlaceType.thirdTier, groupPosition: 2, sectionId: 54163), 974.367, 173.039),
    Place(PlaceId(16, PlaceType.thirdTier, groupPosition: 2, sectionId: 54163), 1006.93, 174.213),
    Place(PlaceId(17, PlaceType.thirdTier, groupPosition: 2, sectionId: 54163), 1040.46, 176.47),
    Place(PlaceId(18, PlaceType.thirdTier, groupPosition: 2, sectionId: 54163), 1073.89, 179.704),
    Place(PlaceId(19, PlaceType.thirdTier, groupPosition: 2, sectionId: 54163), 1107.22, 183.896),
    Place(PlaceId(20, PlaceType.thirdTier, groupPosition: 2, sectionId: 54163), 1140.4, 189.022),
    Place(PlaceId(21, PlaceType.thirdTier, groupPosition: 2, sectionId: 54163), 1173.4, 195.077),
    Place(PlaceId(22, PlaceType.thirdTier, groupPosition: 2, sectionId: 54163), 1206.23, 202.086),
    Place(PlaceId(23, PlaceType.thirdTier, groupPosition: 2, sectionId: 54163), 1238.78, 210.058),
    Place(PlaceId(24, PlaceType.thirdTier, groupPosition: 2, sectionId: 54163), 1271.09, 219.019),
    Place(PlaceId(25, PlaceType.thirdTier, groupPosition: 2, sectionId: 54163), 1303.08, 229.011),
    Place(PlaceId(26, PlaceType.thirdTier, groupPosition: 2, sectionId: 54163), 1334.66, 240.044),
    Place(PlaceId(27, PlaceType.thirdTier, groupPosition: 2, sectionId: 54163), 1365.83, 252.172),
    //Place(PlaceId(28, PlaceType.thirdTier, groupPosition: 2, sectionId: 54163), 1396.44, 265.389),

    // 3-ий ряд
    Place(PlaceId(1, PlaceType.thirdTier, groupPosition: 3, sectionId: 54164), 636.17, 181.852),
    Place(PlaceId(2, PlaceType.thirdTier, groupPosition: 3, sectionId: 54164), 668.477, 172.889),
    Place(PlaceId(3, PlaceType.thirdTier, groupPosition: 3, sectionId: 54164), 701.029, 164.919),
    Place(PlaceId(4, PlaceType.thirdTier, groupPosition: 3, sectionId: 54164), 733.856, 157.909),
    Place(PlaceId(5, PlaceType.thirdTier, groupPosition: 3, sectionId: 54164), 766.866, 151.853),
    Place(PlaceId(6, PlaceType.thirdTier, groupPosition: 3, sectionId: 54164), 800.04, 146.727),
    Place(PlaceId(7, PlaceType.thirdTier, groupPosition: 3, sectionId: 54164), 866.808, 139.299),
    Place(PlaceId(8, PlaceType.thirdTier, groupPosition: 3, sectionId: 54164), 900.337, 137.043),
    Place(PlaceId(9, PlaceType.thirdTier, groupPosition: 3, sectionId: 54164), 932.89, 135.87),
    Place(PlaceId(10, PlaceType.thirdTier, groupPosition: 3, sectionId: 54163), 973.906, 135.869),
    Place(PlaceId(11, PlaceType.thirdTier, groupPosition: 3, sectionId: 54163), 1006.46, 137.043),
    Place(PlaceId(12, PlaceType.thirdTier, groupPosition: 3, sectionId: 54163), 1039.99, 139.299),
    Place(PlaceId(13, PlaceType.thirdTier, groupPosition: 3, sectionId: 54163), 1106.75, 146.728),
    Place(PlaceId(14, PlaceType.thirdTier, groupPosition: 3, sectionId: 54163), 1139.93, 151.852),
    Place(PlaceId(15, PlaceType.thirdTier, groupPosition: 3, sectionId: 54163), 1172.93, 157.91),
    Place(PlaceId(16, PlaceType.thirdTier, groupPosition: 3, sectionId: 54163), 1205.76, 164.919),
    Place(PlaceId(17, PlaceType.thirdTier, groupPosition: 3, sectionId: 54163), 1238.32, 172.889),
    Place(PlaceId(18, PlaceType.thirdTier, groupPosition: 3, sectionId: 54163), 1270.62, 181.852),

  ];
}

// Ложи 3-ого яруса (1 - 14 ложи)
List<Place> _thirdTierLodge() {
  return [
    // Слева (1 - 7 ложи)
    // 1-ая ложа 3-го яруса
    Place(PlaceId(1, PlaceType.thirdTierLodge, groupPosition: 1, sectionId: 15345 ), 100.535, 1219.84),
    Place(PlaceId(2, PlaceType.thirdTierLodge, groupPosition: 1, sectionId: 15345 ), 100.535, 1186.37),
    Place(PlaceId(3, PlaceType.thirdTierLodge, groupPosition: 1, sectionId: 15345 ), 100.535, 1152.9),
    // 2-ая ложа 3-го яруса
    Place(PlaceId(1, PlaceType.thirdTierLodge, groupPosition: 2, sectionId: 15345 ), 100.535, 1119.43),
    Place(PlaceId(2, PlaceType.thirdTierLodge, groupPosition: 2, sectionId: 15345 ), 100.535, 1085.96),
    Place(PlaceId(3, PlaceType.thirdTierLodge, groupPosition: 2, sectionId: 15345 ), 100.535, 1052.49),
    // 3-ья ложа 3-го яруса
    Place(PlaceId(1, PlaceType.thirdTierLodge, groupPosition: 3, sectionId: 15345 ), 100.535, 1019.02),
    Place(PlaceId(2, PlaceType.thirdTierLodge, groupPosition: 3, sectionId: 15345 ), 100.535, 985.548),
    Place(PlaceId(3, PlaceType.thirdTierLodge, groupPosition: 3, sectionId: 15345 ), 100.535, 952.077),
    // 4-ая ложа 3-го яруса
    Place(PlaceId(1, PlaceType.thirdTierLodge, groupPosition: 4, sectionId: 15345 ), 101.855, 918.338),
    Place(PlaceId(2, PlaceType.thirdTierLodge, groupPosition: 4, sectionId: 15345 ), 103.664, 884.451),
    Place(PlaceId(3, PlaceType.thirdTierLodge, groupPosition: 4, sectionId: 15345 ), 106.691, 851.601),
    // 5-ая ложа 3-го яруса
    Place(PlaceId(1, PlaceType.thirdTierLodge, groupPosition: 5, sectionId: 15345 ), 111.086, 818.758),
    Place(PlaceId(2, PlaceType.thirdTierLodge, groupPosition: 5, sectionId: 15345 ), 116.891, 786.019),
    Place(PlaceId(3, PlaceType.thirdTierLodge, groupPosition: 5, sectionId: 15345 ), 124.199, 753.498),
    // 6-ая ложа 3-го яруса
    Place(PlaceId(1, PlaceType.thirdTierLodge, groupPosition: 6, sectionId: 15345 ), 133.074, 721.303),
    Place(PlaceId(2, PlaceType.thirdTierLodge, groupPosition: 6, sectionId: 15345 ), 143.574, 689.537),
    Place(PlaceId(3, PlaceType.thirdTierLodge, groupPosition: 6, sectionId: 15345 ), 155.488, 658.844),
    // 7-ая ложа 3-го яруса
    Place(PlaceId(1, PlaceType.thirdTierLodge, groupPosition: 7, sectionId: 15345 ), 169.324, 628.211),
    Place(PlaceId(2, PlaceType.thirdTierLodge, groupPosition: 7, sectionId: 15345 ), 184.613, 598.755),
    Place(PlaceId(3, PlaceType.thirdTierLodge, groupPosition: 7, sectionId: 15345 ), 201.578, 570.077),

    // Справа (8 - 14 ложи)
    // 1-ая ложа 3-го яруса
    Place(PlaceId(1, PlaceType.thirdTierLodge, groupPosition: 14, sectionId: 15345  ), 1806.46, 1219.84),
    Place(PlaceId(2, PlaceType.thirdTierLodge, groupPosition: 14, sectionId: 15345  ), 1806.46, 1186.37),
    Place(PlaceId(3, PlaceType.thirdTierLodge, groupPosition: 14, sectionId: 15345  ), 1806.46, 1152.9),
    // 2-ая ложа 3-го яруса
    Place(PlaceId(1, PlaceType.thirdTierLodge, groupPosition: 13, sectionId: 15345  ), 1806.46, 1119.43),
    Place(PlaceId(2, PlaceType.thirdTierLodge, groupPosition: 13, sectionId: 15345  ), 1806.46, 1085.96),
    Place(PlaceId(3, PlaceType.thirdTierLodge, groupPosition: 13, sectionId: 15345  ), 1806.46, 1052.49),
    // 3-ья ложа 3-го яруса
    Place(PlaceId(1, PlaceType.thirdTierLodge, groupPosition: 12, sectionId: 15345  ), 1806.46, 1019.02),
    Place(PlaceId(2, PlaceType.thirdTierLodge, groupPosition: 12, sectionId: 15345  ), 1806.46, 985.548),
    Place(PlaceId(3, PlaceType.thirdTierLodge, groupPosition: 12, sectionId: 15345  ), 1806.46, 952.077),
    // 4-ая ложа 3-го яруса
    Place(PlaceId(1, PlaceType.thirdTierLodge, groupPosition: 11, sectionId: 15345  ), 1804.55, 918.705),
    Place(PlaceId(2, PlaceType.thirdTierLodge, groupPosition: 11, sectionId: 15345  ), 1802.74, 884.818),
    Place(PlaceId(3, PlaceType.thirdTierLodge, groupPosition: 11, sectionId: 15345  ), 1799.71, 851.966),
    // 5-ая ложа 3-го яруса
    Place(PlaceId(1, PlaceType.thirdTierLodge, groupPosition: 10, sectionId: 15345  ), 1795.32, 819.121),
    Place(PlaceId(2, PlaceType.thirdTierLodge, groupPosition: 10, sectionId: 15345  ), 1789.51, 786.381),
    Place(PlaceId(3, PlaceType.thirdTierLodge, groupPosition: 10, sectionId: 15345  ), 1782.2, 753.857),
    // 6-ая ложа 3-го яруса
    Place(PlaceId(1, PlaceType.thirdTierLodge, groupPosition: 9, sectionId: 15345 ), 1773.33, 721.659),
    Place(PlaceId(2, PlaceType.thirdTierLodge, groupPosition: 9, sectionId: 15345 ), 1762.82, 689.894),
    Place(PlaceId(3, PlaceType.thirdTierLodge, groupPosition: 9, sectionId: 15345 ), 1750.91, 659.198),
    // 7-ая ложа 3-го яруса
    Place(PlaceId(1, PlaceType.thirdTierLodge, groupPosition: 8, sectionId: 15345 ), 1737.07, 628.564),
    Place(PlaceId(2, PlaceType.thirdTierLodge, groupPosition: 8, sectionId: 15345 ), 1721.78, 599.106),
    Place(PlaceId(3, PlaceType.thirdTierLodge, groupPosition: 8, sectionId: 15345 ), 1704.82, 570.427),
  ];
}

// Бенуар (1 - 3 ряды)
List<Place> _benoir() {
  return [
    // 1-ый ряд
    Place(PlaceId(1, PlaceType.benoir, groupPosition: 1, sectionId: 86760), 562.977, 873.738),
    Place(PlaceId(2, PlaceType.benoir, groupPosition: 1, sectionId: 86760), 590.879, 854.537),
    Place(PlaceId(3, PlaceType.benoir, groupPosition: 1, sectionId: 86760), 618.559, 837.667),
    Place(PlaceId(4, PlaceType.benoir, groupPosition: 1, sectionId: 86760), 647.434, 821.897),
    Place(PlaceId(5, PlaceType.benoir, groupPosition: 1, sectionId: 86760), 679.293, 806.305),
    Place(PlaceId(6, PlaceType.benoir, groupPosition: 1, sectionId: 86760), 708.758, 793.377),
    Place(PlaceId(7, PlaceType.benoir, groupPosition: 1, sectionId: 86760), 739.895, 781.158),
    Place(PlaceId(8, PlaceType.benoir, groupPosition: 1, sectionId: 86760), 771.777, 770.101),
    Place(PlaceId(9, PlaceType.benoir, groupPosition: 1, sectionId: 86760), 803.34, 760.657),
    Place(PlaceId(10, PlaceType.benoir, groupPosition: 1, sectionId: 86760), 835.262, 752.759),
    Place(PlaceId(11, PlaceType.benoir, groupPosition: 1, sectionId: 86760), 867.199, 746.885),
    Place(PlaceId(12, PlaceType.benoir, groupPosition: 1, sectionId: 86760), 899.895, 743.864),
    Place(PlaceId(13, PlaceType.benoir, groupPosition: 1, sectionId: 86761), 1004.97, 743.306),
    Place(PlaceId(14, PlaceType.benoir, groupPosition: 1, sectionId: 86761), 1037.66, 746.327),
    Place(PlaceId(15, PlaceType.benoir, groupPosition: 1, sectionId: 86761), 1069.61, 752.2),
    Place(PlaceId(16, PlaceType.benoir, groupPosition: 1, sectionId: 86761), 1101.52, 760.098),
    Place(PlaceId(17, PlaceType.benoir, groupPosition: 1, sectionId: 86761), 1133.09, 769.542),
    Place(PlaceId(18, PlaceType.benoir, groupPosition: 1, sectionId: 86761), 1164.97, 780.601),
    Place(PlaceId(19, PlaceType.benoir, groupPosition: 1, sectionId: 86761), 1196.11, 792.818),
    Place(PlaceId(20, PlaceType.benoir, groupPosition: 1, sectionId: 86761), 1225.57, 805.747),
    Place(PlaceId(21, PlaceType.benoir, groupPosition: 1, sectionId: 86761), 1257.43, 821.338),
    Place(PlaceId(22, PlaceType.benoir, groupPosition: 1, sectionId: 86761), 1286.31, 837.109),
    Place(PlaceId(23, PlaceType.benoir, groupPosition: 1, sectionId: 86761), 1313.99, 853.979),
    Place(PlaceId(24, PlaceType.benoir, groupPosition: 1, sectionId: 86761), 1341.89, 873.18),

    // 2-ой ряд
    Place(PlaceId(1, PlaceType.benoir, groupPosition: 2, sectionId: 86760), 531.219, 852.749),
    Place(PlaceId(2, PlaceType.benoir, groupPosition: 2, sectionId: 86760), 556.77, 832.947),
    Place(PlaceId(3, PlaceType.benoir, groupPosition: 2, sectionId: 86760), 584.824, 813.952),
    Place(PlaceId(4, PlaceType.benoir, groupPosition: 2, sectionId: 86760), 612.613, 797.281),
    Place(PlaceId(5, PlaceType.benoir, groupPosition: 2, sectionId: 86760), 641.602, 781.717),
    Place(PlaceId(6, PlaceType.benoir, groupPosition: 2, sectionId: 86760), 673.594, 766.354),
    Place(PlaceId(7, PlaceType.benoir, groupPosition: 2, sectionId: 86760), 703.141, 753.643),
    Place(PlaceId(8, PlaceType.benoir, groupPosition: 2, sectionId: 86760), 734.348, 741.649),
    Place(PlaceId(9, PlaceType.benoir, groupPosition: 2, sectionId: 86760), 766.32, 730.822),
    Place(PlaceId(10, PlaceType.benoir, groupPosition: 2, sectionId: 86760), 797.957, 721.602),
    Place(PlaceId(11, PlaceType.benoir, groupPosition: 2, sectionId: 86760), 829.941, 713.934),
    Place(PlaceId(12, PlaceType.benoir, groupPosition: 2, sectionId: 86760), 861.902, 708.295),
    Place(PlaceId(13, PlaceType.benoir, groupPosition: 2, sectionId: 86760), 894.633, 705.509),
    Place(PlaceId(14, PlaceType.benoir, groupPosition: 2, sectionId: 86761), 1010.23, 704.948),
    Place(PlaceId(15, PlaceType.benoir, groupPosition: 2, sectionId: 86761), 1042.96, 707.735),
    Place(PlaceId(16, PlaceType.benoir, groupPosition: 2, sectionId: 86761), 1074.92, 713.373),
    Place(PlaceId(17, PlaceType.benoir, groupPosition: 2, sectionId: 86761), 1106.91, 721.042),
    Place(PlaceId(18, PlaceType.benoir, groupPosition: 2, sectionId: 86761), 1138.55, 730.262),
    Place(PlaceId(19, PlaceType.benoir, groupPosition: 2, sectionId: 86761), 1170.52, 741.088),
    Place(PlaceId(20, PlaceType.benoir, groupPosition: 2, sectionId: 86761), 1201.71, 753.082),
    Place(PlaceId(21, PlaceType.benoir, groupPosition: 2, sectionId: 86761), 1231.27, 765.793),
    Place(PlaceId(22, PlaceType.benoir, groupPosition: 2, sectionId: 86761), 1263.27, 781.157),
    Place(PlaceId(23, PlaceType.benoir, groupPosition: 2, sectionId: 86761), 1292.25, 796.72),
    Place(PlaceId(24, PlaceType.benoir, groupPosition: 2, sectionId: 86761), 1320.04, 813.391),
    Place(PlaceId(25, PlaceType.benoir, groupPosition: 2, sectionId: 86761), 1348.09, 832.388),
    Place(PlaceId(26, PlaceType.benoir, groupPosition: 2, sectionId: 86761), 1373.64, 852.188),
    // 3-ий ряд
    Place(PlaceId(1, PlaceType.benoir, groupPosition: 3, sectionId: 86760), 476.008, 855.474),
    Place(PlaceId(2, PlaceType.benoir, groupPosition: 3, sectionId: 86760), 498.164, 831.905),
    Place(PlaceId(3, PlaceType.benoir, groupPosition: 3, sectionId: 86760), 524.379, 808.963),
    Place(PlaceId(4, PlaceType.benoir, groupPosition: 3, sectionId: 86760), 550.305, 789.643),
    Place(PlaceId(5, PlaceType.benoir, groupPosition: 3, sectionId: 86760), 578.711, 771.173),
    Place(PlaceId(6, PlaceType.benoir, groupPosition: 3, sectionId: 86760), 606.805, 755.023),
    Place(PlaceId(7, PlaceType.benoir, groupPosition: 3, sectionId: 86760), 636.078, 740.003),
    Place(PlaceId(8, PlaceType.benoir, groupPosition: 3, sectionId: 86760), 668.332, 725.241),
    Place(PlaceId(9, PlaceType.benoir, groupPosition: 3, sectionId: 86760), 698.129, 713.083),
    Place(PlaceId(10, PlaceType.benoir, groupPosition: 3, sectionId: 86760), 729.551, 701.674),
    Place(PlaceId(11, PlaceType.benoir, groupPosition: 3, sectionId: 86760), 761.727, 691.443),
    Place(PlaceId(12, PlaceType.benoir, groupPosition: 3, sectionId: 86760), 793.516, 682.817),
    Place(PlaceId(13, PlaceType.benoir, groupPosition: 3, sectionId: 86760), 825.648, 675.746),
    Place(PlaceId(14, PlaceType.benoir, groupPosition: 3, sectionId: 86760), 857.711, 670.704),
    Place(PlaceId(15, PlaceType.benoir, groupPosition: 3, sectionId: 86760), 890.477, 668.53),
    Place(PlaceId(16, PlaceType.benoir, groupPosition: 3, sectionId: 86761), 1014.39, 667.97),
    Place(PlaceId(17, PlaceType.benoir, groupPosition: 3, sectionId: 86761), 1047.16, 670.144),
    Place(PlaceId(18, PlaceType.benoir, groupPosition: 3, sectionId: 86761), 1079.22, 675.186),
    Place(PlaceId(19, PlaceType.benoir, groupPosition: 3, sectionId: 86761), 1111.36, 682.257),
    Place(PlaceId(20, PlaceType.benoir, groupPosition: 3, sectionId: 86761), 1143.14, 690.883),
    Place(PlaceId(21, PlaceType.benoir, groupPosition: 3, sectionId: 86761), 1175.31, 701.114),
    Place(PlaceId(22, PlaceType.benoir, groupPosition: 3, sectionId: 86761), 1206.74, 712.522),
    Place(PlaceId(23, PlaceType.benoir, groupPosition: 3, sectionId: 86761), 1236.54, 724.68),
    Place(PlaceId(24, PlaceType.benoir, groupPosition: 3, sectionId: 86761), 1268.79, 739.443),
    Place(PlaceId(25, PlaceType.benoir, groupPosition: 3, sectionId: 86761), 1298.06, 754.463),
    Place(PlaceId(26, PlaceType.benoir, groupPosition: 3, sectionId: 86761), 1326.16, 770.612),
    Place(PlaceId(27, PlaceType.benoir, groupPosition: 3, sectionId: 86761), 1354.56, 789.082),
    Place(PlaceId(28, PlaceType.benoir, groupPosition: 3, sectionId: 86761), 1380.48, 808.403),
    Place(PlaceId(29, PlaceType.benoir, groupPosition: 3, sectionId: 86761), 1406.7, 831.344),
    Place(PlaceId(30, PlaceType.benoir, groupPosition: 3, sectionId: 86761), 1428.86, 854.913),
  ];
}

// Ложи Бенуаров (1 - 14 ложи)
List<Place> _benoirLodge() {
  return [
    // 1-ая Ложа левого Бенуара // или 1
    Place(PlaceId(1, PlaceType.benoirLodge, groupPosition: 1, sectionId: 15349, isGroup: true, count: 2,), 458.352, 1447.32),
    Place(PlaceId(2, PlaceType.benoirLodge, groupPosition: 1, sectionId: 15349, isGroup: true, count: 2,), 458.352, 1415.32),
    Place(PlaceId(3, PlaceType.benoirLodge, groupPosition: 1, sectionId: 15349, isGroup: true, count: 2,), 433.352, 1447.32),
    Place(PlaceId(4, PlaceType.benoirLodge, groupPosition: 1, sectionId: 15349, isGroup: true, count: 2,), 433.352, 1415.32),
    // 1-ая Ложа правого Бенуара // или 14
    Place(PlaceId(1, PlaceType.benoirLodge, groupPosition: 14, sectionId: 15349, isGroup: true, count: 2,), 1448.35, 1442.32),
    Place(PlaceId(2, PlaceType.benoirLodge, groupPosition: 14, sectionId: 15349, isGroup: true, count: 2,), 1448.35, 1410.32),
    Place(PlaceId(3, PlaceType.benoirLodge, groupPosition: 14, sectionId: 15349, isGroup: true, count: 2,), 1473.35, 1442.32),
    Place(PlaceId(4, PlaceType.benoirLodge, groupPosition: 14, sectionId: 15349, isGroup: true, count: 2,), 1473.35, 1410.32),

    // 2-ая Ложа левого Бенуара // или 2
    Place(PlaceId(1, PlaceType.benoirLodge, groupPosition: 2, sectionId: 15349, isGroup: true, count: 2,), 458.352, 1380.32),
    Place(PlaceId(2, PlaceType.benoirLodge, groupPosition: 2, sectionId: 15349, isGroup: true, count: 2,), 458.352, 1348.32),
    Place(PlaceId(3, PlaceType.benoirLodge, groupPosition: 2, sectionId: 15349, isGroup: true, count: 2,), 433.352, 1380.32),
    Place(PlaceId(4, PlaceType.benoirLodge, groupPosition: 2, sectionId: 15349, isGroup: true, count: 2,), 433.352, 1348.32),
    // 2-ая Ложа правого Бенуара // или 13
    Place(PlaceId(1, PlaceType.benoirLodge, groupPosition: 13, sectionId: 15349, isGroup: true, count: 2,), 1448.35, 1375.32),
    Place(PlaceId(2, PlaceType.benoirLodge, groupPosition: 13, sectionId: 15349, isGroup: true, count: 2,), 1448.35, 1343.32),
    Place(PlaceId(3, PlaceType.benoirLodge, groupPosition: 13, sectionId: 15349, isGroup: true, count: 2,), 1473.35, 1375.32),
    Place(PlaceId(4, PlaceType.benoirLodge, groupPosition: 13, sectionId: 15349, isGroup: true, count: 2,), 1473.35, 1343.32),

    // 3-ая Ложа левого Бенуара // или 3
    Place(PlaceId(1, PlaceType.benoirLodge, groupPosition: 3, sectionId: 15349, isGroup: true, count: 2,), 458.352, 1313.32),
    Place(PlaceId(2, PlaceType.benoirLodge, groupPosition: 3, sectionId: 15349, isGroup: true, count: 2,), 458.352, 1281.32),
    Place(PlaceId(3, PlaceType.benoirLodge, groupPosition: 3, sectionId: 15349, isGroup: true, count: 2,), 433.352, 1313.32),
    Place(PlaceId(4, PlaceType.benoirLodge, groupPosition: 3, sectionId: 15349, isGroup: true, count: 2,), 433.352, 1281.32),
    // 3-ая Ложа правого Бенуара // или 12
    Place(PlaceId(1, PlaceType.benoirLodge, groupPosition: 12, sectionId: 15349, isGroup: true, count: 2,), 1448.35, 1308.32),
    Place(PlaceId(2, PlaceType.benoirLodge, groupPosition: 12, sectionId: 15349, isGroup: true, count: 2,), 1448.35, 1276.32),
    Place(PlaceId(3, PlaceType.benoirLodge, groupPosition: 12, sectionId: 15349, isGroup: true, count: 2,), 1473.35, 1308.32),
    Place(PlaceId(4, PlaceType.benoirLodge, groupPosition: 12, sectionId: 15349, isGroup: true, count: 2,), 1473.35, 1276.32),

    // 4-ая Ложа левого Бенуара // или 4
    Place(PlaceId(1, PlaceType.benoirLodge, groupPosition: 4, sectionId: 15349, isGroup: true, count: 2,), 458.352, 1246.32),
    Place(PlaceId(2, PlaceType.benoirLodge, groupPosition: 4, sectionId: 15349, isGroup: true, count: 2,), 458.352, 1214.32),
    Place(PlaceId(3, PlaceType.benoirLodge, groupPosition: 4, sectionId: 15349, isGroup: true, count: 2,), 433.352, 1246.32),
    Place(PlaceId(4, PlaceType.benoirLodge, groupPosition: 4, sectionId: 15349, isGroup: true, count: 2,), 433.352, 1214.32),
    // 4-ая Ложа правого Бенуара // или 11
    Place(PlaceId(1, PlaceType.benoirLodge, groupPosition: 11, sectionId: 15349, isGroup: true, count: 2,), 1448.35, 1241.32),
    Place(PlaceId(2, PlaceType.benoirLodge, groupPosition: 11, sectionId: 15349, isGroup: true, count: 2,), 1448.35, 1209.32),
    Place(PlaceId(3, PlaceType.benoirLodge, groupPosition: 11, sectionId: 15349, isGroup: true, count: 2,), 1473.35, 1241.32),
    Place(PlaceId(4, PlaceType.benoirLodge, groupPosition: 11, sectionId: 15349, isGroup: true, count: 2,), 1473.35, 1209.32),

    // 5-ая Ложа правого Бенуара // или 5
    Place(PlaceId(1, PlaceType.benoirLodge, groupPosition: 5, sectionId: 15349, isGroup: true, count: 2,), 458.352, 1179.32),
    Place(PlaceId(2, PlaceType.benoirLodge, groupPosition: 5, sectionId: 15349, isGroup: true, count: 2,), 458.352, 1147.32),
    Place(PlaceId(3, PlaceType.benoirLodge, groupPosition: 5, sectionId: 15349, isGroup: true, count: 2,), 433.352, 1179.32),
    Place(PlaceId(4, PlaceType.benoirLodge, groupPosition: 5, sectionId: 15349, isGroup: true, count: 2,), 433.352, 1147.32),
    // 5-ая Ложа правого Бенуара // или 10
    Place(PlaceId(1, PlaceType.benoirLodge, groupPosition: 10, sectionId: 15349, isGroup: true, count: 2,), 1448.35, 1174.32),
    Place(PlaceId(2, PlaceType.benoirLodge, groupPosition: 10, sectionId: 15349, isGroup: true, count: 2,), 1448.35, 1142.32),
    Place(PlaceId(3, PlaceType.benoirLodge, groupPosition: 10, sectionId: 15349, isGroup: true, count: 2,), 1473.35, 1174.32),
    Place(PlaceId(4, PlaceType.benoirLodge, groupPosition: 10, sectionId: 15349, isGroup: true, count: 2,), 1473.35, 1142.32),

    // 6-ая Ложа левого Бенуара // или 6
    Place(PlaceId(1, PlaceType.benoirLodge, groupPosition: 6, sectionId: 15349, isGroup: true, count: 2,), 458.352, 1112.32),
    Place(PlaceId(2, PlaceType.benoirLodge, groupPosition: 6, sectionId: 15349, isGroup: true, count: 2,), 458.352, 1080.32),
    Place(PlaceId(3, PlaceType.benoirLodge, groupPosition: 6, sectionId: 15349, isGroup: true, count: 2,), 433.352, 1112.32),
    Place(PlaceId(4, PlaceType.benoirLodge, groupPosition: 6, sectionId: 15349, isGroup: true, count: 2,), 433.352, 1080.32),
    // 6-ая Ложа правого Бенуара // или 9
    Place(PlaceId(1, PlaceType.benoirLodge, groupPosition: 9, sectionId: 15349, isGroup: true, count: 2,), 1448.35, 1107.32),
    Place(PlaceId(2, PlaceType.benoirLodge, groupPosition: 9, sectionId: 15349, isGroup: true, count: 2,), 1448.35, 1075.32),
    Place(PlaceId(3, PlaceType.benoirLodge, groupPosition: 9, sectionId: 15349, isGroup: true, count: 2,), 1473.35, 1107.32),
    Place(PlaceId(4, PlaceType.benoirLodge, groupPosition: 9, sectionId: 15349, isGroup: true, count: 2,), 1473.35, 1075.32),

    // 7-ая Ложа левого Бенуара // или 7
    Place(PlaceId(1, PlaceType.benoirLodge, groupPosition: 7, sectionId: 15349, isGroup: true, count: 2,), 458.352, 1045.32),
    Place(PlaceId(2, PlaceType.benoirLodge, groupPosition: 7, sectionId: 15349, isGroup: true, count: 2,), 458.352, 1013.32),
    Place(PlaceId(3, PlaceType.benoirLodge, groupPosition: 7, sectionId: 15349, isGroup: true, count: 2,), 433.352, 1045.32),
    Place(PlaceId(4, PlaceType.benoirLodge, groupPosition: 7, sectionId: 15349, isGroup: true, count: 2,), 433.352, 1013.32),
    // 7-ая Ложа правого Бенуара // или 8
    Place(PlaceId(1, PlaceType.benoirLodge, groupPosition: 8, sectionId: 15349, isGroup: true, count: 2,), 1448.35, 1040.32),
    Place(PlaceId(2, PlaceType.benoirLodge, groupPosition: 8, sectionId: 15349, isGroup: true, count: 2,), 1448.35, 1008.32),
    Place(PlaceId(3, PlaceType.benoirLodge, groupPosition: 8, sectionId: 15349, isGroup: true, count: 2,), 1473.35, 1040.32),
    Place(PlaceId(4, PlaceType.benoirLodge, groupPosition: 8, sectionId: 15349, isGroup: true, count: 2,), 1473.35, 1008.32),

  ];
}

// Бельэтаж (1 - 2 ряды)
List<Place> _mezzanine() {
  return [
    // 1-ый ряд
    Place(PlaceId(1, PlaceType.mezzanine, groupPosition: 1, sectionId: 15339), 399.129, 827.54),
    Place(PlaceId(2, PlaceType.mezzanine, groupPosition: 1, sectionId: 15339), 421.316, 805.357),
    Place(PlaceId(3, PlaceType.mezzanine, groupPosition: 1, sectionId: 15339), 504.98, 736.18),
    Place(PlaceId(4, PlaceType.mezzanine, groupPosition: 1, sectionId: 15339), 534.27, 717.239),
    Place(PlaceId(5, PlaceType.mezzanine, groupPosition: 1, sectionId: 15339), 563.113, 699.718),
    Place(PlaceId(6, PlaceType.mezzanine, groupPosition: 1, sectionId: 15339), 591.867, 683.67),
    Place(PlaceId(7, PlaceType.mezzanine, groupPosition: 1, sectionId: 15339), 621.508, 668.392),
    Place(PlaceId(8, PlaceType.mezzanine, groupPosition: 1, sectionId: 15339), 651.582, 654.141),
    Place(PlaceId(9, PlaceType.mezzanine, groupPosition: 1, sectionId: 15339), 682.16, 640.838),
    Place(PlaceId(10, PlaceType.mezzanine, groupPosition: 1, sectionId: 15339), 713.305, 628.561),
    Place(PlaceId(11, PlaceType.mezzanine, groupPosition: 1, sectionId: 15339), 744.762, 617.507),
    Place(PlaceId(12, PlaceType.mezzanine, groupPosition: 1, sectionId: 15339), 776.676, 607.84),
    Place(PlaceId(13, PlaceType.mezzanine, groupPosition: 1, sectionId: 15339), 809.164, 599.979),
    Place(PlaceId(14, PlaceType.mezzanine, groupPosition: 1, sectionId: 15339), 841.742, 594.915),
    Place(PlaceId(15, PlaceType.mezzanine, groupPosition: 1, sectionId: 15339), 1065.93, 594.915),
    Place(PlaceId(16, PlaceType.mezzanine, groupPosition: 1, sectionId: 15339), 1098.51, 599.979),
    Place(PlaceId(17, PlaceType.mezzanine, groupPosition: 1, sectionId: 15339), 1130.99, 607.84),
    Place(PlaceId(18, PlaceType.mezzanine, groupPosition: 1, sectionId: 15339), 1162.91, 617.507),
    Place(PlaceId(19, PlaceType.mezzanine, groupPosition: 1, sectionId: 15339), 1194.37, 628.561),
    Place(PlaceId(20, PlaceType.mezzanine, groupPosition: 1, sectionId: 15339), 1225.51, 640.838),
    Place(PlaceId(21, PlaceType.mezzanine, groupPosition: 1, sectionId: 15339), 1256.09, 654.141),
    Place(PlaceId(22, PlaceType.mezzanine, groupPosition: 1, sectionId: 15339), 1286.16, 668.392),
    Place(PlaceId(23, PlaceType.mezzanine, groupPosition: 1, sectionId: 15339), 1315.8, 683.67),
    Place(PlaceId(24, PlaceType.mezzanine, groupPosition: 1, sectionId: 15339), 1344.55, 699.718),
    Place(PlaceId(25, PlaceType.mezzanine, groupPosition: 1, sectionId: 15339), 1373.4, 717.239),
    Place(PlaceId(26, PlaceType.mezzanine, groupPosition: 1, sectionId: 15339), 1402.89, 736.18),
    Place(PlaceId(27, PlaceType.mezzanine, groupPosition: 1, sectionId: 15339), 1486.36, 805.358),
    Place(PlaceId(28, PlaceType.mezzanine, groupPosition: 1, sectionId: 15339), 1508.54, 827.541),

    // 2-ой ряд
    Place(PlaceId(1, PlaceType.mezzanine, groupPosition: 2, sectionId: 15339), 451.364, 737.118),
    Place(PlaceId(2, PlaceType.mezzanine, groupPosition: 2, sectionId: 15339), 479.022, 714.498),
    Place(PlaceId(3, PlaceType.mezzanine, groupPosition: 2, sectionId: 15339), 506.203, 695.356),
    Place(PlaceId(4, PlaceType.mezzanine, groupPosition: 2, sectionId: 15339), 534.233, 677.418),
    Place(PlaceId(5, PlaceType.mezzanine, groupPosition: 2, sectionId: 15339), 563.35, 660.355),
    Place(PlaceId(6, PlaceType.mezzanine, groupPosition: 2, sectionId: 15339), 592.354, 644.764),
    Place(PlaceId(7, PlaceType.mezzanine, groupPosition: 2, sectionId: 15339), 622.233, 629.957),
    Place(PlaceId(8, PlaceType.mezzanine, groupPosition: 2, sectionId: 15339), 652.528, 616.183),
    Place(PlaceId(9, PlaceType.mezzanine, groupPosition: 2, sectionId: 15339), 683.313, 603.366),
    Place(PlaceId(10, PlaceType.mezzanine, groupPosition: 2, sectionId: 15339), 714.649, 591.583),
    Place(PlaceId(11, PlaceType.mezzanine, groupPosition: 2, sectionId: 15339), 746.276, 581.029),
    Place(PlaceId(12, PlaceType.mezzanine, groupPosition: 2, sectionId: 15339), 778.338, 571.867),
    Place(PlaceId(13, PlaceType.mezzanine, groupPosition: 2, sectionId: 15339), 810.948, 564.523),
    Place(PlaceId(14, PlaceType.mezzanine, groupPosition: 2, sectionId: 15339), 843.602, 559.975),
    Place(PlaceId(15, PlaceType.mezzanine, groupPosition: 2, sectionId: 15339), 1064.03, 560.055),
    Place(PlaceId(16, PlaceType.mezzanine, groupPosition: 2, sectionId: 15339), 1096.69, 564.59),
    Place(PlaceId(17, PlaceType.mezzanine, groupPosition: 2, sectionId: 15339), 1129.3, 571.923),
    Place(PlaceId(18, PlaceType.mezzanine, groupPosition: 2, sectionId: 15339), 1161.37, 581.072),
    Place(PlaceId(19, PlaceType.mezzanine, groupPosition: 2, sectionId: 15339), 1193, 591.611),
    Place(PlaceId(20, PlaceType.mezzanine, groupPosition: 2, sectionId: 15339), 1224.34, 603.381),
    Place(PlaceId(21, PlaceType.mezzanine, groupPosition: 2, sectionId: 15339), 1255.13, 616.186),
    Place(PlaceId(22, PlaceType.mezzanine, groupPosition: 2, sectionId: 15339), 1285.43, 629.948),
    Place(PlaceId(23, PlaceType.mezzanine, groupPosition: 2, sectionId: 15339), 1315.32, 644.744),
    Place(PlaceId(24, PlaceType.mezzanine, groupPosition: 2, sectionId: 15339), 1344.33, 660.323),
    Place(PlaceId(25, PlaceType.mezzanine, groupPosition: 2, sectionId: 15339), 1373.45, 677.374),
    Place(PlaceId(26, PlaceType.mezzanine, groupPosition: 2, sectionId: 15339), 1401.49, 695.3),
    Place(PlaceId(27, PlaceType.mezzanine, groupPosition: 2, sectionId: 15339), 1428.68, 714.432),
    Place(PlaceId(28, PlaceType.mezzanine, groupPosition: 2, sectionId: 15339), 1456.34, 737.04),
  ];
}

// Ложи Бельэтажей (1 - 14 ложи)
List<Place> _mezzanineLodge() {
  return [
    // Бельетаж
    // 1-ая Ложа левого Бельетажа // или 1
    Place(PlaceId(1, PlaceType.mezzanineLodge, groupPosition: 1, sectionId: 15346, isGroup: true, count: 4,), 331.352, 1417.32),
    Place(PlaceId(2, PlaceType.mezzanineLodge, groupPosition: 1, sectionId: 15346, isGroup: true, count: 4,), 331.352, 1390.32),
    Place(PlaceId(3, PlaceType.mezzanineLodge, groupPosition: 1, sectionId: 15346, isGroup: true, count: 4,), 304.355, 1417.32),
    Place(PlaceId(4, PlaceType.mezzanineLodge, groupPosition: 1, sectionId: 15346, isGroup: true, count: 4,), 304.355, 1390.32),
    // 1-ая Ложа правого Бельетажа // или 14
    Place(PlaceId(1, PlaceType.mezzanineLodge, groupPosition: 14, sectionId: 15346, isGroup: true, count: 4,), 1575.36, 1417.32),
    Place(PlaceId(2, PlaceType.mezzanineLodge, groupPosition: 14, sectionId: 15346, isGroup: true, count: 4,), 1575.36, 1390.32),
    Place(PlaceId(3, PlaceType.mezzanineLodge, groupPosition: 14, sectionId: 15346, isGroup: true, count: 4,), 1602.35, 1417.32),
    Place(PlaceId(4, PlaceType.mezzanineLodge, groupPosition: 14, sectionId: 15346, isGroup: true, count: 4,), 1602.35, 1390.32),

    // 2-ая Ложа левого Бельетажа // или 2
    Place(PlaceId(1, PlaceType.mezzanineLodge, groupPosition: 2, sectionId: 15346, isGroup: true, count: 4,), 331.352, 1350.32),
    Place(PlaceId(2, PlaceType.mezzanineLodge, groupPosition: 2, sectionId: 15346, isGroup: true, count: 4,), 331.352, 1323.32),
    Place(PlaceId(3, PlaceType.mezzanineLodge, groupPosition: 2, sectionId: 15346, isGroup: true, count: 4,), 304.355, 1350.32),
    Place(PlaceId(4, PlaceType.mezzanineLodge, groupPosition: 2, sectionId: 15346, isGroup: true, count: 4,), 304.355, 1323.32),
    // 2-ая Ложа правого Бельетажа // или 13
    Place(PlaceId(1, PlaceType.mezzanineLodge, groupPosition: 13, sectionId: 15346, isGroup: true, count: 4,), 1575.36, 1350.32),
    Place(PlaceId(2, PlaceType.mezzanineLodge, groupPosition: 13, sectionId: 15346, isGroup: true, count: 4,), 1575.36, 1323.32),
    Place(PlaceId(3, PlaceType.mezzanineLodge, groupPosition: 13, sectionId: 15346, isGroup: true, count: 4,), 1602.35, 1350.32),
    Place(PlaceId(4, PlaceType.mezzanineLodge, groupPosition: 13, sectionId: 15346, isGroup: true, count: 4,), 1602.35, 1323.32),

    // 3-ая Ложа левого Бельетажа // или 3
    Place(PlaceId(1, PlaceType.mezzanineLodge, groupPosition: 3, sectionId: 15346, isGroup: true, count: 4,), 331.352, 1283.32),
    Place(PlaceId(2, PlaceType.mezzanineLodge, groupPosition: 3, sectionId: 15346, isGroup: true, count: 4,), 331.352, 1256.32),
    Place(PlaceId(3, PlaceType.mezzanineLodge, groupPosition: 3, sectionId: 15346, isGroup: true, count: 4,), 304.355, 1283.32),
    Place(PlaceId(4, PlaceType.mezzanineLodge, groupPosition: 3, sectionId: 15346, isGroup: true, count: 4,), 304.355, 1256.32),
    // 3-ая Ложа правого Бельетажа // или 12
    Place(PlaceId(1, PlaceType.mezzanineLodge, groupPosition: 12, sectionId: 15346, isGroup: true, count: 4,), 1575.36, 1283.32),
    Place(PlaceId(2, PlaceType.mezzanineLodge, groupPosition: 12, sectionId: 15346, isGroup: true, count: 4,), 1575.36, 1256.32),
    Place(PlaceId(3, PlaceType.mezzanineLodge, groupPosition: 12, sectionId: 15346, isGroup: true, count: 4,), 1602.35, 1283.32),
    Place(PlaceId(4, PlaceType.mezzanineLodge, groupPosition: 12, sectionId: 15346, isGroup: true, count: 4,), 1602.35, 1256.32),

    // 4-ая Ложа левого Бельетажа // или 4
    Place(PlaceId(1, PlaceType.mezzanineLodge, groupPosition: 4, sectionId: 15346, isGroup: true, count: 4,), 331.352, 1216.32),
    Place(PlaceId(2, PlaceType.mezzanineLodge, groupPosition: 4, sectionId: 15346, isGroup: true, count: 4,), 331.352, 1189.32),
    Place(PlaceId(3, PlaceType.mezzanineLodge, groupPosition: 4, sectionId: 15346, isGroup: true, count: 4,), 304.355, 1216.32),
    Place(PlaceId(4, PlaceType.mezzanineLodge, groupPosition: 4, sectionId: 15346, isGroup: true, count: 4,), 304.355, 1189.32),
    // 4-ая Ложа правого Бельетажа // или 11
    Place(PlaceId(1, PlaceType.mezzanineLodge, groupPosition: 11, sectionId: 15346, isGroup: true, count: 4,), 1575.36, 1216.32),
    Place(PlaceId(2, PlaceType.mezzanineLodge, groupPosition: 11, sectionId: 15346, isGroup: true, count: 4,), 1575.36, 1189.32),
    Place(PlaceId(3, PlaceType.mezzanineLodge, groupPosition: 11, sectionId: 15346, isGroup: true, count: 4,), 1602.35, 1216.32),
    Place(PlaceId(4, PlaceType.mezzanineLodge, groupPosition: 11, sectionId: 15346, isGroup: true, count: 4,), 1602.35, 1189.32),

    // 5-ая Ложа левого Бельетажа // или 5
    Place(PlaceId(1, PlaceType.mezzanineLodge, groupPosition: 5, sectionId: 15346, isGroup: true, count: 4,), 331.352, 1149.32),
    Place(PlaceId(2, PlaceType.mezzanineLodge, groupPosition: 5, sectionId: 15346, isGroup: true, count: 4,), 331.352, 1122.32),
    Place(PlaceId(3, PlaceType.mezzanineLodge, groupPosition: 5, sectionId: 15346, isGroup: true, count: 4,), 304.355, 1149.32),
    Place(PlaceId(4, PlaceType.mezzanineLodge, groupPosition: 5, sectionId: 15346, isGroup: true, count: 4,), 304.355, 1122.32),
    // 5-ая Ложа левого Бельетажа // или 10
    Place(PlaceId(3, PlaceType.mezzanineLodge, groupPosition: 10, sectionId: 15346, isGroup: true, count: 4,), 1602.35, 1149.32),
    Place(PlaceId(4, PlaceType.mezzanineLodge, groupPosition: 10, sectionId: 15346, isGroup: true, count: 4,), 1602.35, 1122.32),
    Place(PlaceId(1, PlaceType.mezzanineLodge, groupPosition: 10, sectionId: 15346, isGroup: true, count: 4,), 1575.36, 1149.32),
    Place(PlaceId(2, PlaceType.mezzanineLodge, groupPosition: 10, sectionId: 15346, isGroup: true, count: 4,), 1575.36, 1122.32),

    // 6-ая Ложа левого Бельетажа // или 6
    Place(PlaceId(1, PlaceType.mezzanineLodge, groupPosition: 6, sectionId: 15346, isGroup: true, count: 4,), 331.352, 1082.32),
    Place(PlaceId(2, PlaceType.mezzanineLodge, groupPosition: 6, sectionId: 15346, isGroup: true, count: 4,), 331.352, 1055.32),
    Place(PlaceId(3, PlaceType.mezzanineLodge, groupPosition: 6, sectionId: 15346, isGroup: true, count: 4,), 304.355, 1082.32),
    Place(PlaceId(4, PlaceType.mezzanineLodge, groupPosition: 6, sectionId: 15346, isGroup: true, count: 4,), 304.355, 1055.32),
    // 6-ая Ложа правого Бельетажа // или 9
    Place(PlaceId(1, PlaceType.mezzanineLodge, groupPosition: 9, sectionId: 15346, isGroup: true, count: 4,), 1575.36, 1082.32),
    Place(PlaceId(2, PlaceType.mezzanineLodge, groupPosition: 9, sectionId: 15346, isGroup: true, count: 4,), 1575.36, 1055.32),
    Place(PlaceId(3, PlaceType.mezzanineLodge, groupPosition: 9, sectionId: 15346, isGroup: true, count: 4,), 1602.35, 1082.32),
    Place(PlaceId(4, PlaceType.mezzanineLodge, groupPosition: 9, sectionId: 15346, isGroup: true, count: 4,), 1602.35, 1055.32),

    // 7-ая Ложа левого Бельетажа // или 7
    Place(PlaceId(1, PlaceType.mezzanineLodge, groupPosition: 7, sectionId: 15346, isGroup: true, count: 4,), 331.352, 1015.32),
    Place(PlaceId(2, PlaceType.mezzanineLodge, groupPosition: 7, sectionId: 15346, isGroup: true, count: 4,), 331.352, 988.323),
    Place(PlaceId(3, PlaceType.mezzanineLodge, groupPosition: 7, sectionId: 15346, isGroup: true, count: 4,), 304.355, 1015.32),
    Place(PlaceId(4, PlaceType.mezzanineLodge, groupPosition: 7, sectionId: 15346, isGroup: true, count: 4,), 304.355, 988.323),
    // 7-ая Ложа правого Бельетажа // или 8
    Place(PlaceId(1, PlaceType.mezzanineLodge, groupPosition: 8, sectionId: 15346, isGroup: true, count: 4,), 1575.36, 1015.32),
    Place(PlaceId(2, PlaceType.mezzanineLodge, groupPosition: 8, sectionId: 15346, isGroup: true, count: 4,), 1575.36, 988.323),
    Place(PlaceId(3, PlaceType.mezzanineLodge, groupPosition: 8, sectionId: 15346, isGroup: true, count: 4,), 1602.35, 1015.32),
    Place(PlaceId(4, PlaceType.mezzanineLodge, groupPosition: 8, sectionId: 15346, isGroup: true, count: 4,), 1602.35, 988.323),

  ];
}

// Партер (1 - 14 ряды)
List<Place> _groundFloor() {
  return [
    // 1 ряд Партер
    Place(PlaceId(1, PlaceType.groundFloor, groupPosition: 1, sectionId: 54070), 652.355, 1336.99),
    Place(PlaceId(2, PlaceType.groundFloor, groupPosition: 1, sectionId: 54070), 685.805, 1336.99),
    Place(PlaceId(3, PlaceType.groundFloor, groupPosition: 1, sectionId: 54070), 719.246, 1336.99),
    Place(PlaceId(4, PlaceType.groundFloor, groupPosition: 1, sectionId: 54070), 752.688, 1336.99),
    Place(PlaceId(5, PlaceType.groundFloor, groupPosition: 1, sectionId: 54070), 786.133, 1336.99),
    Place(PlaceId(6, PlaceType.groundFloor, groupPosition: 1, sectionId: 54070), 819.578, 1336.99),
    Place(PlaceId(7, PlaceType.groundFloor, groupPosition: 1, sectionId: 54070), 853.023, 1336.99),
    Place(PlaceId(8, PlaceType.groundFloor, groupPosition: 1, sectionId: 54070), 886.465, 1336.99),
    Place(PlaceId(9, PlaceType.groundFloor, groupPosition: 1, sectionId: 54070), 919.906, 1336.99),
    Place(PlaceId(10, PlaceType.groundFloor, groupPosition: 1, sectionId: 54070), 953.352, 1336.99),
    Place(PlaceId(11, PlaceType.groundFloor, groupPosition: 1, sectionId: 54068), 986.797, 1336.99),
    Place(PlaceId(12, PlaceType.groundFloor, groupPosition: 1, sectionId: 54068), 1020.24, 1336.99),
    Place(PlaceId(13, PlaceType.groundFloor, groupPosition: 1, sectionId: 54068), 1053.68, 1336.99),
    Place(PlaceId(14, PlaceType.groundFloor, groupPosition: 1, sectionId: 54068), 1087.12, 1336.99),
    Place(PlaceId(15, PlaceType.groundFloor, groupPosition: 1, sectionId: 54068), 1120.57, 1336.99),
    Place(PlaceId(16, PlaceType.groundFloor, groupPosition: 1, sectionId: 54068), 1154.02, 1336.99),
    Place(PlaceId(17, PlaceType.groundFloor, groupPosition: 1, sectionId: 54068), 1187.46, 1336.99),
    Place(PlaceId(18, PlaceType.groundFloor, groupPosition: 1, sectionId: 54068), 1220.9, 1336.99),
    Place(PlaceId(19, PlaceType.groundFloor, groupPosition: 1, sectionId: 54068), 1254.34, 1336.99),
    // 2 ряд Партер
    Place(PlaceId(1, PlaceType.groundFloor, groupPosition: 2, sectionId: 54070), 635.637, 1303.52),
    Place(PlaceId(2, PlaceType.groundFloor, groupPosition: 2, sectionId: 54070), 669.078, 1303.52),
    Place(PlaceId(3, PlaceType.groundFloor, groupPosition: 2, sectionId: 54070), 702.523, 1303.52),
    Place(PlaceId(4, PlaceType.groundFloor, groupPosition: 2, sectionId: 54070), 735.965, 1303.52),
    Place(PlaceId(5, PlaceType.groundFloor, groupPosition: 2, sectionId: 54070), 769.414, 1303.52),
    Place(PlaceId(6, PlaceType.groundFloor, groupPosition: 2, sectionId: 54070), 802.855, 1303.52),
    Place(PlaceId(7, PlaceType.groundFloor, groupPosition: 2, sectionId: 54070), 836.297, 1303.52),
    Place(PlaceId(8, PlaceType.groundFloor, groupPosition: 2, sectionId: 54070), 869.742, 1303.52),
    Place(PlaceId(9, PlaceType.groundFloor, groupPosition: 2, sectionId: 54070), 903.188, 1303.52),
    Place(PlaceId(10, PlaceType.groundFloor, groupPosition: 2, sectionId: 54070), 936.629, 1303.52),
    Place(PlaceId(11, PlaceType.groundFloor, groupPosition: 2, sectionId: 54068), 970.074, 1303.52),
    Place(PlaceId(12, PlaceType.groundFloor, groupPosition: 2, sectionId: 54068), 1003.52, 1303.52),
    Place(PlaceId(13, PlaceType.groundFloor, groupPosition: 2, sectionId: 54068), 1036.96, 1303.52),
    Place(PlaceId(14, PlaceType.groundFloor, groupPosition: 2, sectionId: 54068), 1070.41, 1303.52),
    Place(PlaceId(15, PlaceType.groundFloor, groupPosition: 2, sectionId: 54068), 1103.85, 1303.52),
    Place(PlaceId(16, PlaceType.groundFloor, groupPosition: 2, sectionId: 54068), 1137.29, 1303.52),
    Place(PlaceId(17, PlaceType.groundFloor, groupPosition: 2, sectionId: 54068), 1170.73, 1303.52),
    Place(PlaceId(18, PlaceType.groundFloor, groupPosition: 2, sectionId: 54068), 1204.18, 1303.52),
    Place(PlaceId(19, PlaceType.groundFloor, groupPosition: 2, sectionId: 54068), 1237.62, 1303.52),
    Place(PlaceId(20, PlaceType.groundFloor, groupPosition: 2, sectionId: 54068), 1271.07, 1303.52),
    // 3 ряд Партер
    Place(PlaceId(1, PlaceType.groundFloor, groupPosition: 3, sectionId: 54070), 618.914, 1270.05),
    Place(PlaceId(2, PlaceType.groundFloor, groupPosition: 3, sectionId: 54070), 652.355, 1270.05),
    Place(PlaceId(3, PlaceType.groundFloor, groupPosition: 3, sectionId: 54070), 685.805, 1270.05),
    Place(PlaceId(4, PlaceType.groundFloor, groupPosition: 3, sectionId: 54070), 719.246, 1270.05),
    Place(PlaceId(5, PlaceType.groundFloor, groupPosition: 3, sectionId: 54070), 752.688, 1270.05),
    Place(PlaceId(6, PlaceType.groundFloor, groupPosition: 3, sectionId: 54070), 786.133, 1270.05),
    Place(PlaceId(7, PlaceType.groundFloor, groupPosition: 3, sectionId: 54070), 819.578, 1270.05),
    Place(PlaceId(8, PlaceType.groundFloor, groupPosition: 3, sectionId: 54070), 853.023, 1270.05),
    Place(PlaceId(9, PlaceType.groundFloor, groupPosition: 3, sectionId: 54070), 886.465, 1270.05),
    Place(PlaceId(10, PlaceType.groundFloor, groupPosition: 3, sectionId: 54070), 919.906, 1270.05),
    Place(PlaceId(11, PlaceType.groundFloor, groupPosition: 3, sectionId: 54068), 953.352, 1270.05),
    Place(PlaceId(12, PlaceType.groundFloor, groupPosition: 3, sectionId: 54068), 986.797, 1270.05),
    Place(PlaceId(13, PlaceType.groundFloor, groupPosition: 3, sectionId: 54068), 1020.24, 1270.05),
    Place(PlaceId(14, PlaceType.groundFloor, groupPosition: 3, sectionId: 54068), 1053.68, 1270.05),
    Place(PlaceId(15, PlaceType.groundFloor, groupPosition: 3, sectionId: 54068), 1087.12, 1270.05),
    Place(PlaceId(16, PlaceType.groundFloor, groupPosition: 3, sectionId: 54068), 1120.57, 1270.05),
    Place(PlaceId(17, PlaceType.groundFloor, groupPosition: 3, sectionId: 54068), 1154.02, 1270.05),
    Place(PlaceId(18, PlaceType.groundFloor, groupPosition: 3, sectionId: 54068), 1187.46, 1270.05),
    Place(PlaceId(19, PlaceType.groundFloor, groupPosition: 3, sectionId: 54068), 1220.9, 1270.05),
    Place(PlaceId(20, PlaceType.groundFloor, groupPosition: 3, sectionId: 54068), 1254.34, 1270.05),
    Place(PlaceId(21, PlaceType.groundFloor, groupPosition: 3, sectionId: 54068), 1287.79, 1270.05),
    // 4 ряд Партер
    Place(PlaceId(1, PlaceType.groundFloor, groupPosition: 4, sectionId: 54070), 618.914, 1236.58),
    Place(PlaceId(2, PlaceType.groundFloor, groupPosition: 4, sectionId: 54070), 652.355, 1236.58),
    Place(PlaceId(3, PlaceType.groundFloor, groupPosition: 4, sectionId: 54070), 685.805, 1236.58),
    Place(PlaceId(4, PlaceType.groundFloor, groupPosition: 4, sectionId: 54070), 719.246, 1236.58),
    Place(PlaceId(5, PlaceType.groundFloor, groupPosition: 4, sectionId: 54070), 752.688, 1236.58),
    Place(PlaceId(6, PlaceType.groundFloor, groupPosition: 4, sectionId: 54070), 786.133, 1236.58),
    Place(PlaceId(7, PlaceType.groundFloor, groupPosition: 4, sectionId: 54070), 819.578, 1236.58),
    Place(PlaceId(8, PlaceType.groundFloor, groupPosition: 4, sectionId: 54070), 853.023, 1236.58),
    Place(PlaceId(9, PlaceType.groundFloor, groupPosition: 4, sectionId: 54070), 886.465, 1236.58),
    Place(PlaceId(10, PlaceType.groundFloor, groupPosition: 4, sectionId: 54070), 919.906, 1236.58),
    Place(PlaceId(11, PlaceType.groundFloor, groupPosition: 4, sectionId: 54068), 953.352, 1236.58),
    Place(PlaceId(12, PlaceType.groundFloor, groupPosition: 4, sectionId: 54068), 986.797, 1236.58),
    Place(PlaceId(13, PlaceType.groundFloor, groupPosition: 4, sectionId: 54068), 1020.24, 1236.58),
    Place(PlaceId(14, PlaceType.groundFloor, groupPosition: 4, sectionId: 54068), 1056.47, 1236.58),
    Place(PlaceId(15, PlaceType.groundFloor, groupPosition: 4, sectionId: 54068), 1087.12, 1236.58),
    Place(PlaceId(16, PlaceType.groundFloor, groupPosition: 4, sectionId: 54068), 1120.57, 1236.58),
    Place(PlaceId(17, PlaceType.groundFloor, groupPosition: 4, sectionId: 54068), 1154.02, 1236.58),
    Place(PlaceId(18, PlaceType.groundFloor, groupPosition: 4, sectionId: 54068), 1187.46, 1236.58),
    Place(PlaceId(19, PlaceType.groundFloor, groupPosition: 4, sectionId: 54068), 1220.9, 1236.58),
    Place(PlaceId(20, PlaceType.groundFloor, groupPosition: 4, sectionId: 54068), 1254.34, 1236.58),
    Place(PlaceId(21, PlaceType.groundFloor, groupPosition: 4, sectionId: 54068), 1287.79, 1236.58),
    // 5 ряд Партер
    Place(PlaceId(1, PlaceType.groundFloor, groupPosition: 5, sectionId: 54070), 602.191, 1203.11),
    Place(PlaceId(2, PlaceType.groundFloor, groupPosition: 5, sectionId: 54070), 635.637, 1203.11),
    Place(PlaceId(3, PlaceType.groundFloor, groupPosition: 5, sectionId: 54070), 669.078, 1203.11),
    Place(PlaceId(4, PlaceType.groundFloor, groupPosition: 5, sectionId: 54070), 702.523, 1203.11),
    Place(PlaceId(5, PlaceType.groundFloor, groupPosition: 5, sectionId: 54070), 735.965, 1203.11),
    Place(PlaceId(6, PlaceType.groundFloor, groupPosition: 5, sectionId: 54070), 769.414, 1203.11),
    Place(PlaceId(7, PlaceType.groundFloor, groupPosition: 5, sectionId: 54070), 802.855, 1203.11),
    Place(PlaceId(8, PlaceType.groundFloor, groupPosition: 5, sectionId: 54070), 836.297, 1203.11),
    Place(PlaceId(9, PlaceType.groundFloor, groupPosition: 5, sectionId: 54070), 869.742, 1203.11),
    Place(PlaceId(10, PlaceType.groundFloor, groupPosition: 5, sectionId: 54070), 903.188, 1203.11),
    Place(PlaceId(11, PlaceType.groundFloor, groupPosition: 5, sectionId: 54068), 936.629, 1203.11),
    Place(PlaceId(12, PlaceType.groundFloor, groupPosition: 5, sectionId: 54068), 970.074, 1203.11),
    Place(PlaceId(13, PlaceType.groundFloor, groupPosition: 5, sectionId: 54068), 1003.52, 1203.11),
    Place(PlaceId(14, PlaceType.groundFloor, groupPosition: 5, sectionId: 54068), 1036.96, 1203.11),
    Place(PlaceId(15, PlaceType.groundFloor, groupPosition: 5, sectionId: 54068), 1070.41, 1203.11),
    Place(PlaceId(16, PlaceType.groundFloor, groupPosition: 5, sectionId: 54068), 1103.85, 1203.11),
    Place(PlaceId(17, PlaceType.groundFloor, groupPosition: 5, sectionId: 54068), 1137.29, 1203.11),
    Place(PlaceId(18, PlaceType.groundFloor, groupPosition: 5, sectionId: 54068), 1170.73, 1203.11),
    Place(PlaceId(19, PlaceType.groundFloor, groupPosition: 5, sectionId: 54068), 1204.18, 1203.11),
    Place(PlaceId(20, PlaceType.groundFloor, groupPosition: 5, sectionId: 54068), 1237.62, 1203.11),
    Place(PlaceId(21, PlaceType.groundFloor, groupPosition: 5, sectionId: 54068), 1271.07, 1203.11),
    Place(PlaceId(22, PlaceType.groundFloor, groupPosition: 5, sectionId: 54068), 1304.51, 1203.11),
    // 6 ряд Партер
    Place(PlaceId(1, PlaceType.groundFloor, groupPosition: 6, sectionId: 54070), 602.191, 1169.64),
    Place(PlaceId(2, PlaceType.groundFloor, groupPosition: 6, sectionId: 54070), 635.637, 1169.64),
    Place(PlaceId(3, PlaceType.groundFloor, groupPosition: 6, sectionId: 54070), 669.078, 1169.64),
    Place(PlaceId(4, PlaceType.groundFloor, groupPosition: 6, sectionId: 54070), 702.523, 1169.64),
    Place(PlaceId(5, PlaceType.groundFloor, groupPosition: 6, sectionId: 54070), 735.965, 1169.64),
    Place(PlaceId(6, PlaceType.groundFloor, groupPosition: 6, sectionId: 54070), 769.414, 1169.64),
    Place(PlaceId(7, PlaceType.groundFloor, groupPosition: 6, sectionId: 54070), 802.855, 1169.64),
    Place(PlaceId(8, PlaceType.groundFloor, groupPosition: 6, sectionId: 54070), 836.297, 1169.64),
    Place(PlaceId(9, PlaceType.groundFloor, groupPosition: 6, sectionId: 54070), 869.742, 1169.64),
    Place(PlaceId(10, PlaceType.groundFloor, groupPosition: 6, sectionId: 54070), 903.188, 1169.64),
    Place(PlaceId(11, PlaceType.groundFloor, groupPosition: 6, sectionId: 54068), 936.629, 1169.64),
    Place(PlaceId(12, PlaceType.groundFloor, groupPosition: 6, sectionId: 54068), 970.074, 1169.64),
    Place(PlaceId(13, PlaceType.groundFloor, groupPosition: 6, sectionId: 54068), 1003.52, 1169.64),
    Place(PlaceId(14, PlaceType.groundFloor, groupPosition: 6, sectionId: 54068), 1036.96, 1169.64),
    Place(PlaceId(15, PlaceType.groundFloor, groupPosition: 6, sectionId: 54068), 1070.41, 1169.64),
    Place(PlaceId(16, PlaceType.groundFloor, groupPosition: 6, sectionId: 54068), 1103.85, 1169.64),
    Place(PlaceId(17, PlaceType.groundFloor, groupPosition: 6, sectionId: 54068), 1137.29, 1169.64),
    Place(PlaceId(18, PlaceType.groundFloor, groupPosition: 6, sectionId: 54068), 1170.73, 1169.64),
    Place(PlaceId(19, PlaceType.groundFloor, groupPosition: 6, sectionId: 54068), 1204.18, 1169.64),
    Place(PlaceId(20, PlaceType.groundFloor, groupPosition: 6, sectionId: 54068), 1237.62, 1169.64),
    Place(PlaceId(21, PlaceType.groundFloor, groupPosition: 6, sectionId: 54068), 1271.07, 1169.64),
    Place(PlaceId(22, PlaceType.groundFloor, groupPosition: 6, sectionId: 54068), 1304.51, 1169.64),

    // 7 ряд Партер
    Place(PlaceId(1, PlaceType.groundFloor, groupPosition: 7, sectionId: 54070), 602.191, 1136.17),
    Place(PlaceId(2, PlaceType.groundFloor, groupPosition: 7, sectionId: 54070), 635.637, 1136.17),
    Place(PlaceId(3, PlaceType.groundFloor, groupPosition: 7, sectionId: 54070), 669.078, 1136.17),
    Place(PlaceId(4, PlaceType.groundFloor, groupPosition: 7, sectionId: 54070), 702.523, 1136.17),
    Place(PlaceId(5, PlaceType.groundFloor, groupPosition: 7, sectionId: 54070), 735.965, 1136.17),
    Place(PlaceId(6, PlaceType.groundFloor, groupPosition: 7, sectionId: 54070), 769.414, 1136.17),
    Place(PlaceId(7, PlaceType.groundFloor, groupPosition: 7, sectionId: 54070), 802.855, 1136.17),
    Place(PlaceId(8, PlaceType.groundFloor, groupPosition: 7, sectionId: 54070), 836.297, 1136.17),
    Place(PlaceId(9, PlaceType.groundFloor, groupPosition: 7, sectionId: 54070), 869.742, 1136.17),
    Place(PlaceId(10, PlaceType.groundFloor, groupPosition: 7, sectionId: 54070), 903.188, 1136.17),
    Place(PlaceId(11, PlaceType.groundFloor, groupPosition: 7, sectionId: 54068), 936.629, 1136.17),
    Place(PlaceId(12, PlaceType.groundFloor, groupPosition: 7, sectionId: 54068), 970.074, 1136.17),
    Place(PlaceId(13, PlaceType.groundFloor, groupPosition: 7, sectionId: 54068), 1003.52, 1136.17),
    Place(PlaceId(14, PlaceType.groundFloor, groupPosition: 7, sectionId: 54068), 1036.96, 1136.17),
    Place(PlaceId(15, PlaceType.groundFloor, groupPosition: 7, sectionId: 54068), 1070.41, 1136.17),
    Place(PlaceId(16, PlaceType.groundFloor, groupPosition: 7, sectionId: 54068), 1103.85, 1136.17),
    Place(PlaceId(17, PlaceType.groundFloor, groupPosition: 7, sectionId: 54068), 1137.29, 1136.17),
    Place(PlaceId(18, PlaceType.groundFloor, groupPosition: 7, sectionId: 54068), 1170.73, 1136.17),
    Place(PlaceId(19, PlaceType.groundFloor, groupPosition: 7, sectionId: 54068), 1204.18, 1136.17),
    Place(PlaceId(20, PlaceType.groundFloor, groupPosition: 7, sectionId: 54068), 1237.62, 1136.17),
    Place(PlaceId(21, PlaceType.groundFloor, groupPosition: 7, sectionId: 54068), 1271.07, 1136.17),
    Place(PlaceId(22, PlaceType.groundFloor, groupPosition: 7, sectionId: 54068), 1304.51, 1136.17),

    // 8 ряд Партер
    Place(PlaceId(1, PlaceType.groundFloor, groupPosition: 8, sectionId: 54070), 602.191, 1102.7),
    Place(PlaceId(2, PlaceType.groundFloor, groupPosition: 8, sectionId: 54070), 635.637, 1102.7),
    Place(PlaceId(3, PlaceType.groundFloor, groupPosition: 8, sectionId: 54070), 669.078, 1102.7),
    Place(PlaceId(4, PlaceType.groundFloor, groupPosition: 8, sectionId: 54070), 702.523, 1102.7),
    Place(PlaceId(5, PlaceType.groundFloor, groupPosition: 8, sectionId: 54070), 735.965, 1102.7),
    Place(PlaceId(6, PlaceType.groundFloor, groupPosition: 8, sectionId: 54070), 769.414, 1102.7),
    Place(PlaceId(7, PlaceType.groundFloor, groupPosition: 8, sectionId: 54070), 802.855, 1102.7),
    Place(PlaceId(8, PlaceType.groundFloor, groupPosition: 8, sectionId: 54070), 836.297, 1102.7),
    Place(PlaceId(9, PlaceType.groundFloor, groupPosition: 8, sectionId: 54070), 869.742, 1102.7),
    Place(PlaceId(10, PlaceType.groundFloor, groupPosition: 8, sectionId: 54070), 903.188, 1102.7),
    Place(PlaceId(11, PlaceType.groundFloor, groupPosition: 8, sectionId: 54068), 936.629, 1102.7),
    Place(PlaceId(12, PlaceType.groundFloor, groupPosition: 8, sectionId: 54068), 970.074, 1102.7),
    Place(PlaceId(13, PlaceType.groundFloor, groupPosition: 8, sectionId: 54068), 1003.52, 1102.7),
    Place(PlaceId(14, PlaceType.groundFloor, groupPosition: 8, sectionId: 54068), 1036.96, 1102.7),
    Place(PlaceId(15, PlaceType.groundFloor, groupPosition: 8, sectionId: 54068), 1070.41, 1102.7),
    Place(PlaceId(16, PlaceType.groundFloor, groupPosition: 8, sectionId: 54068), 1103.85, 1102.7),
    Place(PlaceId(17, PlaceType.groundFloor, groupPosition: 8, sectionId: 54068), 1137.29, 1102.7),
    Place(PlaceId(18, PlaceType.groundFloor, groupPosition: 8, sectionId: 54068), 1170.73, 1102.7),
    Place(PlaceId(19, PlaceType.groundFloor, groupPosition: 8, sectionId: 54068), 1204.18, 1102.7),
    Place(PlaceId(20, PlaceType.groundFloor, groupPosition: 8, sectionId: 54068), 1237.62, 1102.7),
    Place(PlaceId(21, PlaceType.groundFloor, groupPosition: 8, sectionId: 54068), 1271.07, 1102.7),
    Place(PlaceId(22, PlaceType.groundFloor, groupPosition: 8, sectionId: 54068), 1304.51, 1102.7),

    // 9 ряд Партер
    Place(PlaceId(1, PlaceType.groundFloor, groupPosition: 9, sectionId: 54070), 602.191, 1069.22),
    Place(PlaceId(2, PlaceType.groundFloor, groupPosition: 9, sectionId: 54070), 635.637, 1069.22),
    Place(PlaceId(3, PlaceType.groundFloor, groupPosition: 9, sectionId: 54070), 669.078, 1069.22),
    Place(PlaceId(4, PlaceType.groundFloor, groupPosition: 9, sectionId: 54070), 702.523, 1069.22),
    Place(PlaceId(5, PlaceType.groundFloor, groupPosition: 9, sectionId: 54070), 735.965, 1069.22),
    Place(PlaceId(6, PlaceType.groundFloor, groupPosition: 9, sectionId: 54070), 769.414, 1069.22),
    Place(PlaceId(7, PlaceType.groundFloor, groupPosition: 9, sectionId: 54070), 802.855, 1069.22),
    Place(PlaceId(8, PlaceType.groundFloor, groupPosition: 9, sectionId: 54070), 836.297, 1069.22),
    Place(PlaceId(9, PlaceType.groundFloor, groupPosition: 9, sectionId: 54070), 869.742, 1069.22),
    Place(PlaceId(10, PlaceType.groundFloor, groupPosition: 9, sectionId: 54070), 903.188, 1069.22),
    Place(PlaceId(11, PlaceType.groundFloor, groupPosition: 9, sectionId: 54068), 936.629, 1069.22),
    Place(PlaceId(12, PlaceType.groundFloor, groupPosition: 9, sectionId: 54068), 970.074, 1069.22),
    Place(PlaceId(13, PlaceType.groundFloor, groupPosition: 9, sectionId: 54068), 1003.52, 1069.22),
    Place(PlaceId(14, PlaceType.groundFloor, groupPosition: 9, sectionId: 54068), 1036.96, 1069.22),
    Place(PlaceId(15, PlaceType.groundFloor, groupPosition: 9, sectionId: 54068), 1070.41, 1069.22),
    Place(PlaceId(16, PlaceType.groundFloor, groupPosition: 9, sectionId: 54068), 1103.85, 1069.22),
    Place(PlaceId(17, PlaceType.groundFloor, groupPosition: 9, sectionId: 54068), 1137.29, 1069.22),
    Place(PlaceId(18, PlaceType.groundFloor, groupPosition: 9, sectionId: 54068), 1170.73, 1069.22),
    Place(PlaceId(19, PlaceType.groundFloor, groupPosition: 9, sectionId: 54068), 1204.18, 1069.22),
    Place(PlaceId(20, PlaceType.groundFloor, groupPosition: 9, sectionId: 54068), 1237.62, 1069.22),
    Place(PlaceId(21, PlaceType.groundFloor, groupPosition: 9, sectionId: 54068), 1271.07, 1069.22),
    Place(PlaceId(22, PlaceType.groundFloor, groupPosition: 9, sectionId: 54068), 1304.51, 1069.22),

    // 10 ряд Партер
    Place(PlaceId(1, PlaceType.groundFloor, groupPosition: 10, sectionId: 54070), 618.914, 1035.75),
    Place(PlaceId(2, PlaceType.groundFloor, groupPosition: 10, sectionId: 54070), 652.355, 1035.75),
    Place(PlaceId(3, PlaceType.groundFloor, groupPosition: 10, sectionId: 54070), 685.805, 1035.75),
    Place(PlaceId(4, PlaceType.groundFloor, groupPosition: 10, sectionId: 54070), 719.246, 1035.75),
    Place(PlaceId(5, PlaceType.groundFloor, groupPosition: 10, sectionId: 54070), 752.688, 1035.75),
    Place(PlaceId(6, PlaceType.groundFloor, groupPosition: 10, sectionId: 54070), 786.133, 1035.75),
    Place(PlaceId(7, PlaceType.groundFloor, groupPosition: 10, sectionId: 54070), 819.578, 1035.75),
    Place(PlaceId(8, PlaceType.groundFloor, groupPosition: 10, sectionId: 54070), 853.023, 1035.75),
    Place(PlaceId(9, PlaceType.groundFloor, groupPosition: 10, sectionId: 54070), 886.465, 1035.75),
    Place(PlaceId(10, PlaceType.groundFloor, groupPosition: 10, sectionId: 54070), 919.906, 1035.75),
    Place(PlaceId(11, PlaceType.groundFloor, groupPosition: 10, sectionId: 54068), 953.352, 1035.75),
    Place(PlaceId(12, PlaceType.groundFloor, groupPosition: 10, sectionId: 54068), 986.797, 1035.75),
    Place(PlaceId(13, PlaceType.groundFloor, groupPosition: 10, sectionId: 54068), 1020.24, 1035.75),
    Place(PlaceId(14, PlaceType.groundFloor, groupPosition: 10, sectionId: 54068), 1053.68, 1035.75),
    Place(PlaceId(15, PlaceType.groundFloor, groupPosition: 10, sectionId: 54068), 1087.12, 1035.75),
    Place(PlaceId(16, PlaceType.groundFloor, groupPosition: 10, sectionId: 54068), 1120.57, 1035.75),
    Place(PlaceId(17, PlaceType.groundFloor, groupPosition: 10, sectionId: 54068), 1154.02, 1035.75),
    Place(PlaceId(18, PlaceType.groundFloor, groupPosition: 10, sectionId: 54068), 1187.46, 1035.75),
    Place(PlaceId(19, PlaceType.groundFloor, groupPosition: 10, sectionId: 54068), 1220.9, 1035.75),
    Place(PlaceId(20, PlaceType.groundFloor, groupPosition: 10, sectionId: 54068), 1254.34, 1035.75),
    Place(PlaceId(21, PlaceType.groundFloor, groupPosition: 10, sectionId: 54068), 1287.79, 1035.75),

    // 11 ряд Партер
    Place(PlaceId(1, PlaceType.groundFloor, groupPosition: 11, sectionId: 54070), 630.062, 1002.28),
    Place(PlaceId(2, PlaceType.groundFloor, groupPosition: 11, sectionId: 54070), 663.504, 1002.28),
    Place(PlaceId(3, PlaceType.groundFloor, groupPosition: 11, sectionId: 54070), 696.949, 1002.28),
    Place(PlaceId(4, PlaceType.groundFloor, groupPosition: 11, sectionId: 54070), 730.395, 1002.28),
    Place(PlaceId(5, PlaceType.groundFloor, groupPosition: 11, sectionId: 54070), 763.836, 1002.28),
    Place(PlaceId(6, PlaceType.groundFloor, groupPosition: 11, sectionId: 54070), 797.281, 1002.28),
    Place(PlaceId(7, PlaceType.groundFloor, groupPosition: 11, sectionId: 54070), 830.727, 1002.28),
    Place(PlaceId(8, PlaceType.groundFloor, groupPosition: 11, sectionId: 54070), 864.168, 1002.28),
    Place(PlaceId(9, PlaceType.groundFloor, groupPosition: 11, sectionId: 54070), 897.613, 1002.28),
    Place(PlaceId(10, PlaceType.groundFloor, groupPosition: 11, sectionId: 54070), 931.055, 1002.28),
    Place(PlaceId(11, PlaceType.groundFloor, groupPosition: 11, sectionId: 54068), 964.5, 1002.28),
    Place(PlaceId(12, PlaceType.groundFloor, groupPosition: 11, sectionId: 54068), 997.945, 1002.28),
    Place(PlaceId(13, PlaceType.groundFloor, groupPosition: 11, sectionId: 54068), 1031.39, 1002.28),
    Place(PlaceId(14, PlaceType.groundFloor, groupPosition: 11, sectionId: 54068), 1064.83, 1002.28),
    Place(PlaceId(15, PlaceType.groundFloor, groupPosition: 11, sectionId: 54068), 1098.27, 1002.28),
    Place(PlaceId(16, PlaceType.groundFloor, groupPosition: 11, sectionId: 54068), 1131.72, 1002.28),
    Place(PlaceId(17, PlaceType.groundFloor, groupPosition: 11, sectionId: 54068), 1165.16, 1002.28),
    Place(PlaceId(18, PlaceType.groundFloor, groupPosition: 11, sectionId: 54068), 1198.61, 1002.28),
    Place(PlaceId(19, PlaceType.groundFloor, groupPosition: 11, sectionId: 54068), 1232.05, 1002.28),
    Place(PlaceId(20, PlaceType.groundFloor, groupPosition: 11, sectionId: 54068), 1265.5, 1002.28),

    // 12 ряд Партер
    Place(PlaceId(1, PlaceType.groundFloor, groupPosition: 12, sectionId: 54070), 680.523, 946.5),
    Place(PlaceId(2, PlaceType.groundFloor, groupPosition: 12, sectionId: 54070), 713.965, 946.5),
    Place(PlaceId(3, PlaceType.groundFloor, groupPosition: 12, sectionId: 54070), 747.414, 946.5),
    Place(PlaceId(4, PlaceType.groundFloor, groupPosition: 12, sectionId: 54070), 780.855, 946.5),
    Place(PlaceId(5, PlaceType.groundFloor, groupPosition: 12, sectionId: 54070), 814.297, 946.5),
    Place(PlaceId(6, PlaceType.groundFloor, groupPosition: 12, sectionId: 54070), 847.742, 946.5),
    Place(PlaceId(7, PlaceType.groundFloor, groupPosition: 12, sectionId: 54070), 881.188, 946.5),
    Place(PlaceId(8, PlaceType.groundFloor, groupPosition: 12, sectionId: 54070), 914.629, 946.5),
    Place(PlaceId(9, PlaceType.groundFloor, groupPosition: 12, sectionId: 54070), 948.074, 946.5),
    Place(PlaceId(10, PlaceType.groundFloor, groupPosition: 12, sectionId: 54070), 981.516, 946.5),
    Place(PlaceId(11, PlaceType.groundFloor, groupPosition: 12, sectionId: 54068), 1014.96, 946.5),
    Place(PlaceId(12, PlaceType.groundFloor, groupPosition: 12, sectionId: 54068), 1048.41, 946.5),
    Place(PlaceId(13, PlaceType.groundFloor, groupPosition: 12, sectionId: 54068), 1081.85, 946.5),
    Place(PlaceId(14, PlaceType.groundFloor, groupPosition: 12, sectionId: 54068), 1115.29, 946.5),
    Place(PlaceId(15, PlaceType.groundFloor, groupPosition: 12, sectionId: 54068), 1148.73, 946.5),
    Place(PlaceId(16, PlaceType.groundFloor, groupPosition: 12, sectionId: 54068), 1182.18, 946.5),
    Place(PlaceId(17, PlaceType.groundFloor, groupPosition: 12, sectionId: 54068), 1215.62, 946.5),
    Place(PlaceId(18, PlaceType.groundFloor, groupPosition: 12, sectionId: 54068), 1249.06, 946.5),

    // 13 ряд Партер
    Place(PlaceId(1, PlaceType.groundFloor, groupPosition: 13, sectionId: 54070), 713.965, 913.029),
    Place(PlaceId(2, PlaceType.groundFloor, groupPosition: 13, sectionId: 54070), 747.414, 913.029),
    Place(PlaceId(3, PlaceType.groundFloor, groupPosition: 13, sectionId: 54070), 780.855, 913.029),
    Place(PlaceId(4, PlaceType.groundFloor, groupPosition: 13, sectionId: 54070), 814.297, 913.029),
    Place(PlaceId(5, PlaceType.groundFloor, groupPosition: 13, sectionId: 54070), 847.742, 913.029),
    Place(PlaceId(6, PlaceType.groundFloor, groupPosition: 13, sectionId: 54070), 881.188, 913.029),
    Place(PlaceId(8, PlaceType.groundFloor, groupPosition: 13, sectionId: 54070), 948.074, 913.029),
    Place(PlaceId(7, PlaceType.groundFloor, groupPosition: 13, sectionId: 54070), 914.629, 913.029),
    Place(PlaceId(9, PlaceType.groundFloor, groupPosition: 13, sectionId: 54070), 981.516, 913.029),
    Place(PlaceId(10, PlaceType.groundFloor, groupPosition: 13, sectionId: 54070), 1014.96, 913.029),
    Place(PlaceId(11, PlaceType.groundFloor, groupPosition: 13, sectionId: 54068), 1048.41, 913.029),
    Place(PlaceId(12, PlaceType.groundFloor, groupPosition: 13, sectionId: 54068), 1081.85, 913.029),
    Place(PlaceId(13, PlaceType.groundFloor, groupPosition: 13, sectionId: 54068), 1115.29, 913.029),
    Place(PlaceId(14, PlaceType.groundFloor, groupPosition: 13, sectionId: 54068), 1148.73, 913.029),
    Place(PlaceId(15, PlaceType.groundFloor, groupPosition: 13, sectionId: 54068), 1182.18, 913.029),

    // 14 ряд Партер
    Place(PlaceId(1, PlaceType.groundFloor, groupPosition: 14, sectionId: 54070), 831.023, 879.559),
    Place(PlaceId(3, PlaceType.groundFloor, groupPosition: 14, sectionId: 54070), 897.906, 879.558),
    Place(PlaceId(2, PlaceType.groundFloor, groupPosition: 14, sectionId: 54070), 864.465, 879.558),
    Place(PlaceId(4, PlaceType.groundFloor, groupPosition: 14, sectionId: 54070), 931.352, 879.559),
    Place(PlaceId(5, PlaceType.groundFloor, groupPosition: 14, sectionId: 54068), 964.797, 879.559),
    Place(PlaceId(6, PlaceType.groundFloor, groupPosition: 14, sectionId: 54068), 998.238, 879.558),
    Place(PlaceId(7, PlaceType.groundFloor, groupPosition: 14, sectionId: 54068), 1031.68, 879.558),
    Place(PlaceId(8, PlaceType.groundFloor, groupPosition: 14, sectionId: 54068), 1065.12, 879.559),
  ];
}

// Царская ложа
List<Place> _royalLodge() {
  return [
    Place(PlaceId(1, PlaceType.royalLodge, sectionId: 1238897, groupPosition: 0, isGroup: true, count: 8,), 903.188, 589.48),
    Place(PlaceId(2, PlaceType.royalLodge, sectionId: 1238897, groupPosition: 0, isGroup: true, count: 8,), 936.629, 589.48),
    Place(PlaceId(3, PlaceType.royalLodge, sectionId: 1238897, groupPosition: 0, isGroup: true, count: 8,), 970.074, 589.48),
    Place(PlaceId(4, PlaceType.royalLodge, sectionId: 1238897, groupPosition: 0, isGroup: true, count: 8,), 1003.52, 589.48),
    Place(PlaceId(5, PlaceType.royalLodge, sectionId: 1238897, groupPosition: 0, isGroup: true, count: 8,), 903.188, 556.01),
    Place(PlaceId(6, PlaceType.royalLodge, sectionId: 1238897, groupPosition: 0, isGroup: true, count: 8,), 936.629, 556.01),
    Place(PlaceId(7, PlaceType.royalLodge, sectionId: 1238897, groupPosition: 0, isGroup: true, count: 8,), 970.074, 556.01),
    Place(PlaceId(8, PlaceType.royalLodge, sectionId: 1238897, groupPosition: 0, isGroup: true, count: 8,), 1003.52, 556.01),
  ];
}

// Ложа А
List<Place> _aLodge() {
  return [
    Place(PlaceId(1, PlaceType.aLodge, groupPosition: 1, sectionId: 15351, isGroup: true, count: 2,), 462.844, 1599.18),
    Place(PlaceId(2, PlaceType.aLodge, groupPosition: 2, sectionId: 15351, isGroup: true, count: 2,), 462.844, 1565.71),
    Place(PlaceId(3, PlaceType.aLodge, groupPosition: 3, sectionId: 15351, isGroup: true, count: 2,), 462.844, 1532.23),
    Place(PlaceId(4, PlaceType.aLodge, groupPosition: 4, sectionId: 15351, isGroup: true, count: 2,), 462.844, 1498.76),
    Place(PlaceId(5, PlaceType.aLodge, groupPosition: 1, sectionId: 15351, isGroup: true, count: 2,), 429.398, 1599.18),
    Place(PlaceId(6, PlaceType.aLodge, groupPosition: 2, sectionId: 15351, isGroup: true, count: 2,), 429.398, 1565.71),
    Place(PlaceId(7, PlaceType.aLodge, groupPosition: 3, sectionId: 15351, isGroup: true, count: 2,), 429.398, 1532.23),
    Place(PlaceId(8, PlaceType.aLodge, groupPosition: 4, sectionId: 15351, isGroup: true, count: 2,), 429.398, 1498.76),
  ];
}

// Ложа Б
List<Place> _bLodge() {
  return [
    Place(PlaceId(1, PlaceType.bLodge, groupPosition: 1, sectionId: 165862, isGroup: true, count: 2,), 1444.16, 1599.18),
    Place(PlaceId(2, PlaceType.bLodge, groupPosition: 2, sectionId: 165862, isGroup: true, count: 2,), 1444.16, 1565.71),
    Place(PlaceId(3, PlaceType.bLodge, groupPosition: 3, sectionId: 165862, isGroup: true, count: 2,), 1444.16, 1532.23),
    Place(PlaceId(4, PlaceType.bLodge, groupPosition: 4, sectionId: 165862, isGroup: true, count: 2,), 1444.16, 1498.76),
    Place(PlaceId(5, PlaceType.bLodge, groupPosition: 1, sectionId: 165862, isGroup: true, count: 2,), 1477.61, 1599.18),
    Place(PlaceId(6, PlaceType.bLodge, groupPosition: 2, sectionId: 165862, isGroup: true, count: 2,), 1477.61, 1565.71),
    Place(PlaceId(7, PlaceType.bLodge, groupPosition: 3, sectionId: 165862, isGroup: true, count: 2,), 1477.61, 1532.23),
    Place(PlaceId(8, PlaceType.bLodge, groupPosition: 4, sectionId: 165862, isGroup: true, count: 2,), 1477.61, 1498.76),
  ];
}

// Ложа C
List<Place> _cLodge() {
  return [
    Place(PlaceId(1, PlaceType.cLodge, groupPosition: 1, sectionId: 618077, isGroup: true, count: 2,), 1571.91, 1540.21),
    Place(PlaceId(2, PlaceType.cLodge, groupPosition: 2, sectionId: 618077, isGroup: true, count: 2,), 1571.91, 1506.74),
    Place(PlaceId(3, PlaceType.cLodge, groupPosition: 3, sectionId: 618077, isGroup: true, count: 2,), 1571.91, 1473.27),
    Place(PlaceId(4, PlaceType.cLodge, groupPosition: 1, sectionId: 618077, isGroup: true, count: 2,), 1605.36, 1540.21),
    Place(PlaceId(5, PlaceType.cLodge, groupPosition: 2, sectionId: 618077, isGroup: true, count: 2,), 1605.36, 1506.74),
    Place(PlaceId(6, PlaceType.cLodge, groupPosition: 3, sectionId: 618077, isGroup: true, count: 2,), 1605.36, 1473.27),
  ];
}

List<GroupPlace> dataGroups() {
  return [
    GroupPlace(0, 291.102, 1310.07, 53.5, 53.5),
    GroupPlace(0, 291.102, 1243.07, 53.5, 53.5),
    GroupPlace(0, 291.102, 1377.07, 53.5, 53.5),
    GroupPlace(0, 291.102, 1042.07, 53.5, 53.5),
    GroupPlace(0, 291.102, 975.073, 53.5, 53.5),
    GroupPlace(0, 291.102, 1176.07, 53.5, 53.5),
    GroupPlace(0, 291.102, 1109.07, 53.5, 53.5),
    GroupPlace(0, 1562.1, 1310.07, 53.5, 53.5),
    GroupPlace(0, 1562.1, 1243.07, 53.5, 53.5),
    GroupPlace(0, 1562.1, 1377.07, 53.5, 53.5),
    GroupPlace(0, 1562.1, 1042.07, 53.5, 53.5),
    GroupPlace(0, 1562.1, 975.073, 53.5, 53.5),
    GroupPlace(0, 1562.1, 1176.07, 53.5, 53.5),
    GroupPlace(0, 1562.1, 1109.07, 53.5, 53.5),
  ];
}