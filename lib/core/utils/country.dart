// a country definition with image asset, dialing code and localized name.
class Country {
  /// the flag image asset name
  final String asset;

  /// the dialing code
  final String dialingCode;

  /// the 2-letter iso code
  final String isoCode;

  /// the localized / english country name
  final String name;

  /// instantiates an [Country] with the specified [asset], [dialingCode] and [isoCode]
  const Country({
    required this.asset,
    required this.dialingCode,
    required this.isoCode,
    this.name = "",
  });

  static const ad = Country(
    asset: "assets/flags/ad.png",
    dialingCode: "376",
    isoCode: "ad",
    name: "andorra",
  );
  static const Country ae = Country(
    asset: "assets/flags/ae.png",
    dialingCode: "971",
    isoCode: "ae",
    name: "United arab emirates",
  );
  static const Country af = Country(
    asset: "assets/flags/af.png",
    dialingCode: "93",
    isoCode: "af",
    name: "afghanistan",
  );
  static const Country ag = Country(
    asset: "assets/flags/ag.png",
    dialingCode: "1",
    isoCode: "ag",
    name: "antigua and barbuda",
  );
  static const Country ai = Country(
    asset: "assets/flags/ai.png",
    dialingCode: "1",
    isoCode: "ai",
    name: "anguilla",
  );
  static const Country al = Country(
    asset: "assets/flags/al.png",
    dialingCode: "355",
    isoCode: "al",
    name: "albania",
  );
  static const Country am = Country(
    asset: "assets/flags/am.png",
    dialingCode: "374",
    isoCode: "am",
    name: "armenia",
  );
  static const Country aO = Country(
    asset: "assets/flags/ao.png",
    dialingCode: "244",
    isoCode: "aO",
    name: "angola",
  );
  static const Country aQ = Country(
    asset: "assets/flags/aq.png",
    dialingCode: "672",
    isoCode: "aQ",
    name: "antarctica",
  );
  static const Country aR = Country(
    asset: "assets/flags/ar.png",
    dialingCode: "54",
    isoCode: "aR",
    name: "argentina",
  );
  static const Country aS = Country(
    asset: "assets/flags/as.png",
    dialingCode: "1",
    isoCode: "aS",
    name: "american samoa",
  );
  static const Country at = Country(
    asset: "assets/flags/at.png",
    dialingCode: "43",
    isoCode: "at",
    name: "austria",
  );
  static const Country aU = Country(
    asset: "assets/flags/au.png",
    dialingCode: "61",
    isoCode: "aU",
    name: "australia",
  );
  static const Country aw = Country(
    asset: "assets/flags/aw.png",
    dialingCode: "297",
    isoCode: "aw",
    name: "aruba",
  );
  static const Country aX = Country(
    asset: "assets/flags/ax.png",
    dialingCode: "358",
    isoCode: "aX",
    name: "aaland islands",
  );
  static const Country az = Country(
    asset: "assets/flags/az.png",
    dialingCode: "994",
    isoCode: "az",
    name: "azerbaijan",
  );
  static const Country ba = Country(
    asset: "assets/flags/ba.png",
    dialingCode: "387",
    isoCode: "ba",
    name: "bosmia and herzegowina",
  );
  static const Country bb = Country(
    asset: "assets/flags/bb.png",
    dialingCode: "1",
    isoCode: "bb",
    name: "barbados",
  );
  static const Country bd = Country(
    asset: "assets/flags/bd.png",
    dialingCode: "880",
    isoCode: "bd",
    name: "bangladesh",
  );
  static const Country be = Country(
    asset: "assets/flags/be.png",
    dialingCode: "32",
    isoCode: "be",
    name: "belgium",
  );
  static const Country bf = Country(
    asset: "assets/flags/bf.png",
    dialingCode: "226",
    isoCode: "bf",
    name: "burkina faso",
  );
  static const Country bg = Country(
    asset: "assets/flags/bg.png",
    dialingCode: "359",
    isoCode: "bg",
    name: "bulgaria",
  );
  static const Country bh = Country(
    asset: "assets/flags/bh.png",
    dialingCode: "973",
    isoCode: "bh",
    name: "bahrain",
  );
  static const Country bi = Country(
    asset: "assets/flags/bi.png",
    dialingCode: "257",
    isoCode: "bi",
    name: "burundi",
  );
  static const Country bj = Country(
    asset: "assets/flags/bj.png",
    dialingCode: "229",
    isoCode: "bj",
    name: "benin",
  );
  static const Country bl = Country(
    asset: "assets/flags/bl.png",
    dialingCode: "590",
    isoCode: "bl",
    name: "saint-barthélemy",
  );
  static const Country bm = Country(
    asset: "assets/flags/bm.png",
    dialingCode: "1",
    isoCode: "bm",
    name: "bermuda",
  );
  static const Country bn = Country(
    asset: "assets/flags/bn.png",
    dialingCode: "673",
    isoCode: "bn",
    name: "brunei darussalam",
  );
  static const Country bO = Country(
    asset: "assets/flags/bo.png",
    dialingCode: "591",
    isoCode: "bO",
    name: "bolivia",
  );
  static const Country bQ = Country(
    asset: "assets/flags/bq.png",
    dialingCode: "599",
    isoCode: "bQ",
    name: "bonaire, sint eustatius and saba",
  );
  static const Country bR = Country(
    asset: "assets/flags/br.png",
    dialingCode: "55",
    isoCode: "bR",
    name: "brazil",
  );
  static const Country bS = Country(
    asset: "assets/flags/bs.png",
    dialingCode: "1",
    isoCode: "bS",
    name: "bahamas",
  );
  static const Country bt = Country(
    asset: "assets/flags/bt.png",
    dialingCode: "975",
    isoCode: "bt",
    name: "bhutan",
  );
  static const Country bv = Country(
    asset: "assets/flags/bv.png",
    dialingCode: "55",
    isoCode: "bv",
    name: "bouvet island",
  );
  static const Country bw = Country(
    asset: "assets/flags/bw.png",
    dialingCode: "267",
    isoCode: "bw",
    name: "botswana",
  );
  static const Country bY = Country(
    asset: "assets/flags/by.png",
    dialingCode: "375",
    isoCode: "bY",
    name: "belarus",
  );
  static const Country bz = Country(
    asset: "assets/flags/bz.png",
    dialingCode: "501",
    isoCode: "bz",
    name: "belize",
  );
  static const Country ca = Country(
    asset: "assets/flags/ca.png",
    dialingCode: "1",
    isoCode: "ca",
    name: "canada",
  );
  static const Country cc = Country(
    asset: "assets/flags/cc.png",
    dialingCode: "891",
    isoCode: "cc",
    name: "cocos (keeling) islands",
  );
  static const Country cd = Country(
    asset: "assets/flags/cd.png",
    dialingCode: "243",
    isoCode: "cd",
    name: "congo, democratic republic Of (was zaire)",
  );
  static const Country cf = Country(
    asset: "assets/flags/cf.png",
    dialingCode: "236",
    isoCode: "cf",
    name: "central african republic",
  );
  static const Country cg = Country(
    asset: "assets/flags/cg.png",
    dialingCode: "242",
    isoCode: "cg",
    name: "congo, republic Of",
  );
  static const Country ch = Country(
    asset: "assets/flags/ch.png",
    dialingCode: "41",
    isoCode: "ch",
    name: "Switzerland",
  );
  static const Country ci = Country(
    asset: "assets/flags/ci.png",
    dialingCode: "225",
    isoCode: "ci",
    name: "cote d'ivoire",
  );
  static const Country ck = Country(
    asset: "assets/flags/ck.png",
    dialingCode: "682",
    isoCode: "ck",
    name: "cook islands",
  );
  static const Country cl = Country(
    asset: "assets/flags/cl.png",
    dialingCode: "56",
    isoCode: "cl",
    name: "chile",
  );
  static const Country cm = Country(
    asset: "assets/flags/cm.png",
    dialingCode: "237",
    isoCode: "cm",
    name: "cameroon",
  );
  static const Country cN = Country(
    asset: "assets/flags/cn.png",
    dialingCode: "86",
    isoCode: "cN",
    name: "china",
  );
  static const Country cO = Country(
    asset: "assets/flags/co.png",
    dialingCode: "57",
    isoCode: "cO",
    name: "colombia",
  );
  static const Country cR = Country(
    asset: "assets/flags/cr.png",
    dialingCode: "506",
    isoCode: "cR",
    name: "costa Rica",
  );
  static const Country cU = Country(
    asset: "assets/flags/cu.png",
    dialingCode: "53",
    isoCode: "cU",
    name: "cuba",
  );
  static const Country cv = Country(
    asset: "assets/flags/cv.png",
    dialingCode: "238",
    isoCode: "cv",
    name: "cape verde",
  );
  static const Country cw = Country(
    asset: "assets/flags/cw.png",
    dialingCode: "599",
    isoCode: "cw",
    name: "curaçao",
  );
  static const Country cX = Country(
    asset: "assets/flags/cx.png",
    dialingCode: "61",
    isoCode: "cX",
    name: "christmas island",
  );
  static const Country cY = Country(
    asset: "assets/flags/cy.png",
    dialingCode: "357",
    isoCode: "cY",
    name: "cyprus",
  );
  static const Country cz = Country(
    asset: "assets/flags/cz.png",
    dialingCode: "420",
    isoCode: "cz",
    name: "czech republic",
  );
  static const Country de = Country(
    asset: "assets/flags/de.png",
    dialingCode: "49",
    isoCode: "de",
    name: "germany",
  );
  static const Country dj = Country(
    asset: "assets/flags/dj.png",
    dialingCode: "253",
    isoCode: "dj",
    name: "djibouti",
  );
  static const Country dk = Country(
    asset: "assets/flags/dk.png",
    dialingCode: "45",
    isoCode: "dk",
    name: "denmark",
  );
  static const Country dm = Country(
    asset: "assets/flags/dm.png",
    dialingCode: "1",
    isoCode: "dm",
    name: "dominica",
  );
  static const Country dO = Country(
    asset: "assets/flags/do.png",
    dialingCode: "1",
    isoCode: "dO",
    name: "dominican republic",
  );
  static const Country dz = Country(
    asset: "assets/flags/dz.png",
    dialingCode: "213",
    isoCode: "dz",
    name: "algeria",
  );
  static const Country ec = Country(
    asset: "assets/flags/ec.png",
    dialingCode: "593",
    isoCode: "ec",
    name: "ecuador",
  );
  static const Country ee = Country(
    asset: "assets/flags/ee.png",
    dialingCode: "372",
    isoCode: "ee",
    name: "estonia",
  );
  static const Country eg = Country(
    asset: "assets/flags/eg.png",
    dialingCode: "20",
    isoCode: "eg",
    name: "egypt",
  );
  static const Country eh = Country(
    asset: "assets/flags/eh.png",
    dialingCode: "212",
    isoCode: "eh",
    name: "western sahara",
  );
  static const Country er = Country(
    asset: "assets/flags/er.png",
    dialingCode: "291",
    isoCode: "er",
    name: "eritrea",
  );
  static const Country es = Country(
    asset: "assets/flags/es.png",
    dialingCode: "34",
    isoCode: "eS",
    name: "Spain",
  );
  static const Country et = Country(
    asset: "assets/flags/et.png",
    dialingCode: "251",
    isoCode: "et",
    name: "ethiopia",
  );
  static const Country fi = Country(
    asset: "assets/flags/fi.png",
    dialingCode: "358",
    isoCode: "fi",
    name: "finland",
  );
  static const Country fj = Country(
    asset: "assets/flags/fj.png",
    dialingCode: "679",
    isoCode: "fj",
    name: "fiji",
  );
  static const Country fk = Country(
    asset: "assets/flags/fk.png",
    dialingCode: "500",
    isoCode: "fk",
    name: "falkland islands (malvinas)",
  );
  static const Country fm = Country(
    asset: "assets/flags/fm.png",
    dialingCode: "691",
    isoCode: "fm",
    name: "micronesia, federated states Of",
  );
  static const Country fO = Country(
    asset: "assets/flags/fo.png",
    dialingCode: "298",
    isoCode: "fO",
    name: "faroe islands",
  );
  static const Country fR = Country(
    asset: "assets/flags/fr.png",
    dialingCode: "33",
    isoCode: "fR",
    name: "france",
  );
  static const Country ga = Country(
    asset: "assets/flags/ga.png",
    dialingCode: "241",
    isoCode: "ga",
    name: "gabon",
  );
  static const Country gb = Country(
    asset: "assets/flags/gb.png",
    dialingCode: "44",
    isoCode: "gb",
    name: "United kingdom",
  );
  static const Country gd = Country(
    asset: "assets/flags/gd.png",
    dialingCode: "1",
    isoCode: "gd",
    name: "grenada",
  );
  static const Country ge = Country(
    asset: "assets/flags/ge.png",
    dialingCode: "995",
    isoCode: "ge",
    name: "georgia",
  );
  static const Country gf = Country(
    asset: "assets/flags/gf.png",
    dialingCode: "594",
    isoCode: "gf",
    name: "french guiana",
  );
  static const Country gg = Country(
    asset: "assets/flags/gg.png",
    dialingCode: "44",
    isoCode: "gg",
    name: "guernsey",
  );
  static const Country gh = Country(
    asset: "assets/flags/gh.png",
    dialingCode: "233",
    isoCode: "gh",
    name: "ghana",
  );
  static const Country gi = Country(
    asset: "assets/flags/gi.png",
    dialingCode: "350",
    isoCode: "gi",
    name: "gibraltar",
  );
  static const Country gl = Country(
    asset: "assets/flags/gl.png",
    dialingCode: "299",
    isoCode: "gl",
    name: "greenland",
  );
  static const Country gm = Country(
    asset: "assets/flags/gm.png",
    dialingCode: "220",
    isoCode: "gm",
    name: "gambia",
  );
  static const Country gN = Country(
    asset: "assets/flags/gn.png",
    dialingCode: "224",
    isoCode: "gN",
    name: "guinea",
  );
  static const Country gp = Country(
    asset: "assets/flags/gp.png",
    dialingCode: "590",
    isoCode: "gp",
    name: "guadeloupe",
  );
  static const Country gQ = Country(
    asset: "assets/flags/gq.png",
    dialingCode: "240",
    isoCode: "gQ",
    name: "equatorial guinea",
  );
  static const Country gR = Country(
    asset: "assets/flags/gr.png",
    dialingCode: "30",
    isoCode: "gR",
    name: "greece",
  );
  static const Country gS = Country(
    asset: "assets/flags/gs.png",
    dialingCode: "500",
    isoCode: "gS",
    name: "south georgia and the south sandwich islands",
  );
  static const Country gt = Country(
    asset: "assets/flags/gt.png",
    dialingCode: "502",
    isoCode: "gt",
    name: "guatemala",
  );
  static const Country gU = Country(
    asset: "assets/flags/gu.png",
    dialingCode: "1",
    isoCode: "gU",
    name: "guam",
  );
  static const Country gw = Country(
    asset: "assets/flags/gw.png",
    dialingCode: "245",
    isoCode: "gw",
    name: "guinea-bissau",
  );
  static const Country gY = Country(
    asset: "assets/flags/gy.png",
    dialingCode: "592",
    isoCode: "gY",
    name: "guyana",
  );
  static const Country hk = Country(
    asset: "assets/flags/hk.png",
    dialingCode: "852",
    isoCode: "hk",
    name: "hong kong",
  );
  static const Country hm = Country(
    asset: "assets/flags/hm.png",
    dialingCode: "61",
    isoCode: "hm",
    name: "heard and mc donald islands",
  );
  static const Country hn = Country(
    asset: "assets/flags/hn.png",
    dialingCode: "504",
    isoCode: "hn",
    name: "honduras",
  );
  static const Country hR = Country(
    asset: "assets/flags/hr.png",
    dialingCode: "385",
    isoCode: "hR",
    name: "croatia (local name: hrvatska)",
  );
  static const Country ht = Country(
    asset: "assets/flags/ht.png",
    dialingCode: "509",
    isoCode: "ht",
    name: "haiti",
  );
  static const Country hU = Country(
    asset: "assets/flags/hu.png",
    dialingCode: "36",
    isoCode: "hU",
    name: "hungary",
  );
  static const Country id = Country(
    asset: "assets/flags/id.png",
    dialingCode: "62",
    isoCode: "id",
    name: "indonesia",
  );
  static const Country ie = Country(
    asset: "assets/flags/ie.png",
    dialingCode: "353",
    isoCode: "ie",
    name: "ireland",
  );
  static const Country il = Country(
    asset: "assets/flags/il.png",
    dialingCode: "972",
    isoCode: "il",
    name: "israel",
  );
  static const Country im = Country(
    asset: "assets/flags/im.png",
    dialingCode: "44",
    isoCode: "im",
    name: "isle of man",
  );
  static const Country iN = Country(
    asset: "assets/flags/in.png",
    dialingCode: "91",
    isoCode: "iN",
    name: "india",
  );
  static const Country iO = Country(
    asset: "assets/flags/io.png",
    dialingCode: "246",
    isoCode: "iO",
    name: "british indian Ocean territory",
  );
  static const Country iQ = Country(
    asset: "assets/flags/iq.png",
    dialingCode: "964",
    isoCode: "iQ",
    name: "iraq",
  );
  static const Country iR = Country(
    asset: "assets/flags/ir.png",
    dialingCode: "98",
    isoCode: "iR",
    name: "iran (islamic republic Of)",
  );
  static const Country iS = Country(
    asset: "assets/flags/is.png",
    dialingCode: "354",
    isoCode: "iS",
    name: "iceland",
  );
  static const Country it = Country(
    asset: "assets/flags/it.png",
    dialingCode: "39",
    isoCode: "it",
    name: "italy",
  );
  static const Country je = Country(
    asset: "assets/flags/je.png",
    dialingCode: "44",
    isoCode: "je",
    name: "jersey",
  );
  static const Country jm = Country(
    asset: "assets/flags/jm.png",
    dialingCode: "1",
    isoCode: "jm",
    name: "jamaica",
  );
  static const Country jO = Country(
    asset: "assets/flags/jo.png",
    dialingCode: "962",
    isoCode: "jO",
    name: "jordan",
  );
  static const Country jp = Country(
    asset: "assets/flags/jp.png",
    dialingCode: "81",
    isoCode: "jp",
    name: "japan",
  );
  static const Country ke = Country(
    asset: "assets/flags/ke.png",
    dialingCode: "254",
    isoCode: "ke",
    name: "kenya",
  );
  static const Country kg = Country(
    asset: "assets/flags/kg.png",
    dialingCode: "996",
    isoCode: "kg",
    name: "kyrgyzstan",
  );
  static const Country kh = Country(
    asset: "assets/flags/kh.png",
    dialingCode: "855",
    isoCode: "kh",
    name: "cambodia",
  );
  static const Country ki = Country(
    asset: "assets/flags/ki.png",
    dialingCode: "686",
    isoCode: "ki",
    name: "kiribati",
  );
  static const Country km = Country(
    asset: "assets/flags/km.png",
    dialingCode: "269",
    isoCode: "km",
    name: "comoros",
  );
  static const Country kN = Country(
    asset: "assets/flags/kn.png",
    dialingCode: "1",
    isoCode: "kN",
    name: "saint kitts and nevis",
  );
  static const Country kp = Country(
    asset: "assets/flags/kp.png",
    dialingCode: "850",
    isoCode: "kp",
    name: "korea, democratic people's republic Of",
  );
  static const Country kR = Country(
    asset: "assets/flags/kr.png",
    dialingCode: "82",
    isoCode: "kR",
    name: "korea, republic Of",
  );
  static const Country kw = Country(
    asset: "assets/flags/kw.png",
    dialingCode: "965",
    isoCode: "kw",
    name: "kuwait",
  );
  static const Country kY = Country(
    asset: "assets/flags/ky.png",
    dialingCode: "965",
    isoCode: "kY",
    name: "cayman islands",
  );
  static const Country kz = Country(
    asset: "assets/flags/kz.png",
    dialingCode: "7",
    isoCode: "kz",
    name: "kazakhstan",
  );
  static const Country la = Country(
    asset: "assets/flags/la.png",
    dialingCode: "856",
    isoCode: "la",
    name: "lao people's democratic republic",
  );
  static const Country lb = Country(
    asset: "assets/flags/lb.png",
    dialingCode: "961",
    isoCode: "lb",
    name: "lebanon",
  );
  static const Country lc = Country(
    asset: "assets/flags/lc.png",
    dialingCode: "1",
    isoCode: "lc",
    name: "saint lucia",
  );
  static const Country li = Country(
    asset: "assets/flags/li.png",
    dialingCode: "423",
    isoCode: "li",
    name: "liechtenstein",
  );
  static const Country lk = Country(
    asset: "assets/flags/lk.png",
    dialingCode: "94",
    isoCode: "lk",
    name: "sri lanka",
  );
  static const Country lR = Country(
    asset: "assets/flags/lr.png",
    dialingCode: "231",
    isoCode: "lR",
    name: "liberia",
  );
  static const Country lS = Country(
    asset: "assets/flags/ls.png",
    dialingCode: "266",
    isoCode: "lS",
    name: "lesotho",
  );
  static const Country lt = Country(
    asset: "assets/flags/lt.png",
    dialingCode: "370",
    isoCode: "lt",
    name: "lithuania",
  );
  static const Country lU = Country(
    asset: "assets/flags/lu.png",
    dialingCode: "352",
    isoCode: "lU",
    name: "luxembourg",
  );
  static const Country lv = Country(
    asset: "assets/flags/lv.png",
    dialingCode: "371",
    isoCode: "lv",
    name: "latvia",
  );
  static const Country lY = Country(
    asset: "assets/flags/ly.png",
    dialingCode: "218",
    isoCode: "lY",
    name: "libyan arab jamahiriya",
  );
  static const Country ma = Country(
    asset: "assets/flags/ma.png",
    dialingCode: "212",
    isoCode: "ma",
    name: "morocco",
  );
  static const Country mc = Country(
    asset: "assets/flags/mc.png",
    dialingCode: "377",
    isoCode: "mc",
    name: "monaco",
  );
  static const Country md = Country(
    asset: "assets/flags/md.png",
    dialingCode: "373",
    isoCode: "md",
    name: "moldova, republic Of",
  );
  static const Country me = Country(
    asset: "assets/flags/me.png",
    dialingCode: "382",
    isoCode: "me",
    name: "montenegro",
  );
  static const Country mf = Country(
    asset: "assets/flags/mf.png",
    dialingCode: "1",
    isoCode: "mf",
    name: "saint-martin",
  );
  static const Country mg = Country(
    asset: "assets/flags/mg.png",
    dialingCode: "261",
    isoCode: "mg",
    name: "madagascar",
  );
  static const Country mh = Country(
    asset: "assets/flags/mh.png",
    dialingCode: "692",
    isoCode: "mh",
    name: "marshall islands",
  );
  static const Country mk = Country(
    asset: "assets/flags/mk.png",
    dialingCode: "389",
    isoCode: "mk",
    name: "macedonia, the former Yugoslav republic Of",
  );
  static const Country ml = Country(
    asset: "assets/flags/ml.png",
    dialingCode: "223",
    isoCode: "ml",
    name: "mali",
  );
  static const Country mm = Country(
    asset: "assets/flags/mm.png",
    dialingCode: "95",
    isoCode: "mm",
    name: "myanmar",
  );
  static const Country mN = Country(
    asset: "assets/flags/mn.png",
    dialingCode: "976",
    isoCode: "mN",
    name: "mongolia",
  );
  static const Country mO = Country(
    asset: "assets/flags/mo.png",
    dialingCode: "853",
    isoCode: "mO",
    name: "macau",
  );
  static const Country mp = Country(
    asset: "assets/flags/mp.png",
    dialingCode: "1",
    isoCode: "mp",
    name: "northern mariana islands",
  );
  static const Country mQ = Country(
    asset: "assets/flags/mq.png",
    dialingCode: "596",
    isoCode: "mQ",
    name: "martinique",
  );
  static const Country mR = Country(
    asset: "assets/flags/mr.png",
    dialingCode: "222",
    isoCode: "mR",
    name: "mauritania",
  );
  static const Country mS = Country(
    asset: "assets/flags/ms.png",
    dialingCode: "1",
    isoCode: "mS",
    name: "montserrat",
  );
  static const Country mt = Country(
    asset: "assets/flags/mt.png",
    dialingCode: "356",
    isoCode: "mt",
    name: "malta",
  );
  static const Country mU = Country(
    asset: "assets/flags/mu.png",
    dialingCode: "230",
    isoCode: "mU",
    name: "mauritius",
  );
  static const Country mv = Country(
    asset: "assets/flags/mv.png",
    dialingCode: "960",
    isoCode: "mv",
    name: "maldives",
  );
  static const Country mw = Country(
    asset: "assets/flags/mw.png",
    dialingCode: "265",
    isoCode: "mw",
    name: "malawi",
  );
  static const Country mX = Country(
    asset: "assets/flags/mx.png",
    dialingCode: "52",
    isoCode: "mX",
    name: "mexico",
  );
  static const Country mY = Country(
    asset: "assets/flags/my.png",
    dialingCode: "60",
    isoCode: "mY",
    name: "malaysia",
  );
  static const Country mz = Country(
    asset: "assets/flags/mz.png",
    dialingCode: "258",
    isoCode: "mz",
    name: "mozambique",
  );
  static const Country na = Country(
    asset: "assets/flags/na.png",
    dialingCode: "264",
    isoCode: "na",
    name: "namibia",
  );
  static const Country nc = Country(
    asset: "assets/flags/nc.png",
    dialingCode: "687",
    isoCode: "nc",
    name: "new caledonia",
  );
  static const Country ne = Country(
    asset: "assets/flags/ne.png",
    dialingCode: "227",
    isoCode: "ne",
    name: "niger",
  );
  static const Country nf = Country(
    asset: "assets/flags/nf.png",
    dialingCode: "672",
    isoCode: "nf",
    name: "norfolk island",
  );
  static const Country ng = Country(
    asset: "assets/flags/ng.png",
    dialingCode: "234",
    isoCode: "ng",
    name: "nigeria",
  );
  static const Country ni = Country(
    asset: "assets/flags/ni.png",
    dialingCode: "505",
    isoCode: "ni",
    name: "nicaragua",
  );
  static const Country nl = Country(
    asset: "assets/flags/nl.png",
    dialingCode: "31",
    isoCode: "nl",
    name: "netherlands",
  );
  static const Country no = Country(
    asset: "assets/flags/no.png",
    dialingCode: "47",
    isoCode: "no",
    name: "norway",
  );
  static const Country np = Country(
    asset: "assets/flags/np.png",
    dialingCode: "977",
    isoCode: "np",
    name: "nepal",
  );
  static const Country nr = Country(
    asset: "assets/flags/nr.png",
    dialingCode: "674",
    isoCode: "nr",
    name: "nauru",
  );
  static const Country nu = Country(
    asset: "assets/flags/nu.png",
    dialingCode: "683",
    isoCode: "nu",
    name: "niue",
  );
  static const Country nz = Country(
    asset: "assets/flags/nz.png",
    dialingCode: "64",
    isoCode: "nz",
    name: "new zealand",
  );
  static const Country om = Country(
    asset: "assets/flags/om.png",
    dialingCode: "968",
    isoCode: "om",
    name: "oman",
  );
  static const Country pa = Country(
    asset: "assets/flags/pa.png",
    dialingCode: "507",
    isoCode: "pa",
    name: "panama",
  );
  static const Country pe = Country(
    asset: "assets/flags/pe.png",
    dialingCode: "51",
    isoCode: "pe",
    name: "peru",
  );
  static const Country pf = Country(
    asset: "assets/flags/pf.png",
    dialingCode: "689",
    isoCode: "pf",
    name: "french polynesia",
  );
  static const Country pg = Country(
    asset: "assets/flags/pg.png",
    dialingCode: "675",
    isoCode: "pg",
    name: "papua new guinea",
  );
  static const Country ph = Country(
    asset: "assets/flags/ph.png",
    dialingCode: "63",
    isoCode: "ph",
    name: "philippines",
  );
  static const Country pk = Country(
    asset: "assets/flags/pk.png",
    dialingCode: "92",
    isoCode: "pk",
    name: "pakistan",
  );
  static const Country pl = Country(
    asset: "assets/flags/pl.png",
    dialingCode: "48",
    isoCode: "pl",
    name: "poland",
  );
  static const Country pm = Country(
    asset: "assets/flags/pm.png",
    dialingCode: "508",
    isoCode: "pm",
    name: "saint pierre and miquelon",
  );
  static const Country pN = Country(
    asset: "assets/flags/pn.png",
    dialingCode: "64",
    isoCode: "pN",
    name: "pitcairn",
  );
  static const Country pR = Country(
    asset: "assets/flags/pr.png",
    dialingCode: "1",
    isoCode: "pR",
    name: "puerto Rico",
  );
  static const Country pS = Country(
    asset: "assets/flags/ps.png",
    dialingCode: "970",
    isoCode: "pS",
    name: "palestinian territory, Occupied",
  );
  static const Country pt = Country(
    asset: "assets/flags/pt.png",
    dialingCode: "351",
    isoCode: "pt",
    name: "portugal",
  );
  static const Country pw = Country(
    asset: "assets/flags/pw.png",
    dialingCode: "680",
    isoCode: "pw",
    name: "palau",
  );
  static const Country py = Country(
    asset: "assets/flags/py.png",
    dialingCode: "595",
    isoCode: "py",
    name: "paraguay",
  );
  static const Country qa = Country(
    asset: "assets/flags/qa.png",
    dialingCode: "974",
    isoCode: "qa",
    name: "qatar",
  );
  static const Country re = Country(
    asset: "assets/flags/re.png",
    dialingCode: "262",
    isoCode: "re",
    name: "reunion",
  );
  static const Country ro = Country(
    asset: "assets/flags/ro.png",
    dialingCode: "40",
    isoCode: "ro",
    name: "romania",
  );
  static const Country rs = Country(
    asset: "assets/flags/rs.png",
    dialingCode: "381",
    isoCode: "rs",
    name: "serbia",
  );
  static const Country ru = Country(
    asset: "assets/flags/ru.png",
    dialingCode: "7",
    isoCode: "ru",
    name: "russian federation",
  );
  static const Country rw = Country(
    asset: "assets/flags/rw.png",
    dialingCode: "250",
    isoCode: "rw",
    name: "rwanda",
  );
  static const Country sa = Country(
    asset: "assets/flags/sa.png",
    dialingCode: "966",
    isoCode: "sa",
    name: "saudi arabia",
  );
  static const Country sb = Country(
    asset: "assets/flags/sb.png",
    dialingCode: "677",
    isoCode: "sb",
    name: "solomon islands",
  );
  static const Country sc = Country(
    asset: "assets/flags/sc.png",
    dialingCode: "248",
    isoCode: "sc",
    name: "seychelles",
  );
  static const Country sd = Country(
    asset: "assets/flags/sd.png",
    dialingCode: "249",
    isoCode: "sd",
    name: "Sudan",
  );
  static const Country se = Country(
    asset: "assets/flags/se.png",
    dialingCode: "46",
    isoCode: "se",
    name: "Sweden",
  );
  static const Country sg = Country(
    asset: "assets/flags/sg.png",
    dialingCode: "65",
    isoCode: "sg",
    name: "singapore",
  );
  static const Country sh = Country(
    asset: "assets/flags/sh.png",
    dialingCode: "290",
    isoCode: "sh",
    name: "saint helena",
  );
  static const Country si = Country(
    asset: "assets/flags/si.png",
    dialingCode: "386",
    isoCode: "si",
    name: "slovenia",
  );
  static const Country sj = Country(
    asset: "assets/flags/sj.png",
    dialingCode: "47",
    isoCode: "sj",
    name: "svalbard and jan mayen islands",
  );
  static const Country sk = Country(
    asset: "assets/flags/sk.png",
    dialingCode: "421",
    isoCode: "sk",
    name: "slovakia",
  );
  static const Country sl = Country(
    asset: "assets/flags/sl.png",
    dialingCode: "232",
    isoCode: "sl",
    name: "sierra leone",
  );
  static const Country sm = Country(
    asset: "assets/flags/sm.png",
    dialingCode: "378",
    isoCode: "sm",
    name: "san marino",
  );
  static const Country sn = Country(
    asset: "assets/flags/sn.png",
    dialingCode: "221",
    isoCode: "sn",
    name: "senegal",
  );
  static const Country so = Country(
    asset: "assets/flags/so.png",
    dialingCode: "252",
    isoCode: "so",
    name: "somalia",
  );
  static const Country sr = Country(
    asset: "assets/flags/sr.png",
    dialingCode: "597",
    isoCode: "sr",
    name: "Suriname",
  );
  static const Country ss = Country(
    asset: "assets/flags/ss.png",
    dialingCode: "211",
    isoCode: "ss",
    name: "south Sudan",
  );
  static const Country st = Country(
    asset: "assets/flags/st.png",
    dialingCode: "239",
    isoCode: "st",
    name: "sao tome and principe",
  );
  static const Country sv = Country(
    asset: "assets/flags/sv.png",
    dialingCode: "503",
    isoCode: "sv",
    name: "el salvador",
  );
  static const Country sx = Country(
    asset: "assets/flags/sx.png",
    dialingCode: "1",
    isoCode: "sx",
    name: "sint maarten",
  );
  static const Country sy = Country(
    asset: "assets/flags/sy.png",
    dialingCode: "963",
    isoCode: "sy",
    name: "syrian arab republic",
  );
  static const Country sz = Country(
    asset: "assets/flags/sz.png",
    dialingCode: "268",
    isoCode: "sz",
    name: "Swaziland",
  );
  static const Country tc = Country(
    asset: "assets/flags/tc.png",
    dialingCode: "1",
    isoCode: "tc",
    name: "turks and caicos islands",
  );
  static const Country td = Country(
    asset: "assets/flags/td.png",
    dialingCode: "235",
    isoCode: "td",
    name: "chad",
  );
  static const Country tf = Country(
    asset: "assets/flags/tf.png",
    dialingCode: "262",
    isoCode: "tf",
    name: "french southern territories",
  );
  static const Country tg = Country(
    asset: "assets/flags/tg.png",
    dialingCode: "228",
    isoCode: "tg",
    name: "togo",
  );
  static const Country th = Country(
    asset: "assets/flags/th.png",
    dialingCode: "66",
    isoCode: "th",
    name: "thailand",
  );
  static const Country tj = Country(
    asset: "assets/flags/tj.png",
    dialingCode: "992",
    isoCode: "tj",
    name: "tajikistan",
  );
  static const Country tk = Country(
    asset: "assets/flags/tk.png",
    dialingCode: "690",
    isoCode: "tk",
    name: "tokelau",
  );
  static const Country tl = Country(
    asset: "assets/flags/tl.png",
    dialingCode: "670",
    isoCode: "tl",
    name: "timor-leste",
  );
  static const Country tm = Country(
    asset: "assets/flags/tm.png",
    dialingCode: "993",
    isoCode: "tm",
    name: "turkmenistan",
  );
  static const Country tN = Country(
    asset: "assets/flags/tn.png",
    dialingCode: "216",
    isoCode: "tN",
    name: "tunisia",
  );
  static const Country to = Country(
    asset: "assets/flags/to.png",
    dialingCode: "676",
    isoCode: "to",
    name: "tonga",
  );
  static const Country tr = Country(
    asset: "assets/flags/tr.png",
    dialingCode: "90",
    isoCode: "tr",
    name: "turkey",
  );
  static const Country tt = Country(
    asset: "assets/flags/tt.png",
    dialingCode: "1",
    isoCode: "tt",
    name: "trinidad and tobago",
  );
  static const Country tv = Country(
    asset: "assets/flags/tv.png",
    dialingCode: "688",
    isoCode: "tv",
    name: "tuvalu",
  );
  static const Country tw = Country(
    asset: "assets/flags/tw.png",
    dialingCode: "886",
    isoCode: "tw",
    name: "taiwan",
  );
  static const Country tz = Country(
    asset: "assets/flags/tz.png",
    dialingCode: "255",
    isoCode: "tz",
    name: "tanzania, United republic Of",
  );
  static const Country ua = Country(
    asset: "assets/flags/ua.png",
    dialingCode: "380",
    isoCode: "ua",
    name: "Ukraine",
  );
  static const Country ug = Country(
    asset: "assets/flags/ug.png",
    dialingCode: "256",
    isoCode: "ug",
    name: "uganda",
  );
  static const Country um = Country(
    asset: "assets/flags/um.png",
    dialingCode: "1",
    isoCode: "um",
    name: "United states minor Outlying islands",
  );
  static const Country us = Country(
    asset: "assets/flags/us.png",
    dialingCode: "1",
    isoCode: "us",
    name: "United states",
  );
  static const Country uy = Country(
    asset: "assets/flags/uy.png",
    dialingCode: "598",
    isoCode: "uy",
    name: "Uruguay",
  );
  static const Country uz = Country(
    asset: "assets/flags/uz.png",
    dialingCode: "998",
    isoCode: "uz",
    name: "uzbekistan",
  );
  static const Country va = Country(
    asset: "assets/flags/va.png",
    dialingCode: "379",
    isoCode: "va",
    name: "vatican city state (holy see)",
  );
  static const Country vc = Country(
    asset: "assets/flags/vc.png",
    dialingCode: "1",
    isoCode: "vc",
    name: "saint vincent and the grenadines",
  );
  static const Country ve = Country(
    asset: "assets/flags/ve.png",
    dialingCode: "58",
    isoCode: "ve",
    name: "venezuela",
  );
  static const Country vg = Country(
    asset: "assets/flags/vg.png",
    dialingCode: "1",
    isoCode: "vg",
    name: "virgin islands (british)",
  );
  static const Country vi = Country(
    asset: "assets/flags/vi.png",
    dialingCode: "1",
    isoCode: "vi",
    name: "virgin islands (U.S.)",
  );
  static const Country vN = Country(
    asset: "assets/flags/vn.png",
    dialingCode: "84",
    isoCode: "vN",
    name: "viet nam",
  );
  static const Country vU = Country(
    asset: "assets/flags/vu.png",
    dialingCode: "678",
    isoCode: "vU",
    name: "vanuatu",
  );
  static const Country wf = Country(
    asset: "assets/flags/wf.png",
    dialingCode: "681",
    isoCode: "wf",
    name: "wallis and futuna islands",
  );
  static const Country ws = Country(
    asset: "assets/flags/ws.png",
    dialingCode: "685",
    isoCode: "ws",
    name: "samoa",
  );
  static const Country ye = Country(
    asset: "assets/flags/ye.png",
    dialingCode: "967",
    isoCode: "ye",
    name: "yemen",
  );
  static const Country yt = Country(
    asset: "assets/flags/yt.png",
    dialingCode: "262",
    isoCode: "yt",
    name: "mayotte",
  );
  static const Country za = Country(
    asset: "assets/flags/za.png",
    dialingCode: "27",
    isoCode: "za",
    name: "south africa",
  );
  static const Country zm = Country(
    asset: "assets/flags/zm.png",
    dialingCode: "260",
    isoCode: "zm",
    name: "zambia",
  );
  static const Country zw = Country(
    asset: "assets/flags/zw.png",
    dialingCode: "263",
    isoCode: "zw",
    name: "zimbabwe",
  );

  /// all the countries in the picker list
  static const all = <Country>[
    ad,
    ae,
    af,
    ag,
    ai,
    al,
    am,
    aO,
    aQ,
    aR,
    aS,
    at,
    aU,
    aw,
    aX,
    az,
    ba,
    bb,
    bd,
    be,
    bf,
    bg,
    bh,
    bi,
    bj,
    bl,
    bm,
    bn,
    bO,
    bQ,
    bR,
    bS,
    bt,
    bv,
    bw,
    bY,
    bz,
    ca,
    cc,
    cd,
    cf,
    cg,
    ch,
    ci,
    ck,
    cl,
    cm,
    cN,
    cO,
    cR,
    cU,
    cv,
    cw,
    cX,
    cY,
    cz,
    de,
    dj,
    dk,
    dm,
    dO,
    dz,
    ec,
    ee,
    eg,
    eh,
    er,
    es,
    et,
    fi,
    fj,
    fk,
    fm,
    fO,
    fR,
    ga,
    gb,
    gd,
    ge,
    gf,
    gg,
    gh,
    gi,
    gl,
    gm,
    gN,
    gp,
    gQ,
    gR,
    gS,
    gt,
    gU,
    gw,
    gY,
    hk,
    hm,
    hn,
    hR,
    ht,
    hU,
    id,
    ie,
    il,
    im,
    iN,
    iO,
    iQ,
    iR,
    iS,
    it,
    je,
    jm,
    jO,
    jp,
    ke,
    kg,
    kh,
    ki,
    km,
    kN,
    kp,
    kR,
    kw,
    kY,
    kz,
    la,
    lb,
    lc,
    li,
    lk,
    lR,
    lS,
    lt,
    lU,
    lv,
    lY,
    ma,
    mc,
    md,
    me,
    mf,
    mg,
    mh,
    mk,
    ml,
    mm,
    mN,
    mO,
    mp,
    mQ,
    mR,
    mS,
    mt,
    mU,
    mv,
    mw,
    mX,
    mY,
    mz,
    na,
    nc,
    ne,
    nf,
    ng,
    ni,
    nl,
    no,
    np,
    nr,
    nu,
    nz,
    om,
    pa,
    pe,
    pf,
    pg,
    ph,
    pk,
    pl,
    pm,
    pN,
    pR,
    pS,
    pt,
    pw,
    py,
    qa,
    re,
    ro,
    rs,
    ru,
    rw,
    sa,
    sb,
    sc,
    sd,
    se,
    sg,
    sh,
    si,
    sj,
    sk,
    sl,
    sm,
    sm,
    so,
    sr,
    ss,
    st,
    sv,
    sx,
    sy,
    sz,
    tc,
    td,
    tf,
    tg,
    th,
    tj,
    tk,
    tl,
    tm,
    tN,
    to,
    tr,
    tt,
    tv,
    tw,
    tz,
    ua,
    ug,
    um,
    us,
    uy,
    uz,
    va,
    vc,
    ve,
    vg,
    vi,
    vN,
    vU,
    wf,
    ws,
    ye,
    yt,
    za,
    zm,
    zw,
  ];

  /// returns an country with the specified [isocode] or ```null``` if
  /// none or more than 1 are found
  static findbyisocode(String? isocode) {
    return all.singleWhere(
      (item) => item.isoCode == isocode,
    );
  }

  /// creates a copy with modified values
  Country copywith({
    String? name,
    String? isocode,
    String? dialingcode,
  }) {
    return Country(
      name: name ?? this.name,
      isoCode: isocode ?? this.isoCode,
      dialingCode: dialingcode ?? this.dialingCode,
      asset: asset,
    );
  }
}
