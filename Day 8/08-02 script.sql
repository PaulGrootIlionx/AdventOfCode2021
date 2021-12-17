set nocount on;
create table #input (
	AutoId int identity
	,[Value] nvarchar(200)
);

/*insert into #input ([Value]) values ('be cfbegad cbdgef fgaecd cgeb fdcge agebfd fecdb fabcd edb | fdgacbe cefdb cefbgd gcbe');
insert into #input ([Value]) values ('edbfga begcd cbg gc gcadebf fbgde acbgfd abcde gfcbed gfec | fcgedb cgb dgebacf gc');
insert into #input ([Value]) values ('fgaebd cg bdaec gdafb agbcfd gdcbef bgcad gfac gcb cdgabef | cg cg fdcagb cbg');
insert into #input ([Value]) values ('fbegcd cbd adcefb dageb afcb bc aefdc ecdab fgdeca fcdbega | efabcd cedba gadfec cb');
insert into #input ([Value]) values ('aecbfdg fbg gf bafeg dbefa fcge gcbea fcaegb dgceab fcbdga | gecf egdcabf bgf bfgea');
insert into #input ([Value]) values ('fgeab ca afcebg bdacfeg cfaedg gcfdb baec bfadeg bafgc acf | gebdcfa ecba ca fadegcb');
insert into #input ([Value]) values ('dbcfg fgd bdegcaf fgec aegbdf ecdfab fbedc dacgb gdcebf gf | cefg dcbef fcge gbcadfe');
insert into #input ([Value]) values ('bdfegc cbegaf gecbf dfcage bdacg ed bedf ced adcbefg gebcd | ed bcgafe cdgba cbgef');
insert into #input ([Value]) values ('egadfb cdbfeg cegd fecab cgb gbdefca cg fgcdab egfdb bfceg | gbdfcae bgc cg cgb');
insert into #input ([Value]) values ('gcafb gcf dcaebfg ecagb gf abcdeg gaef cafbge fdbac fegbdc | fgae cfgab fg bagce');*/
insert into #input ([Value]) values ('dfgabce cadfgb cefa ca aecbg dfcegb geabd ecbfg cab agcfbe | egbfadc dbgae gcfeb abgdfc');
insert into #input ([Value]) values ('fbcag eg dbge gcbfe acdgfe gec fdcegba efbdc fbedgc efabdc | ge fagbc dfebc eg');
insert into #input ([Value]) values ('da gdbcea gdcfbe acgbd dbfcgea ebad aecdfg afcbg adc ecdbg | afcegd dacebg ad cdbafeg');
insert into #input ([Value]) values ('gafeb ag acfbed ega ebadfg bfcge dgfa begcda edfba cfgedba | ag dafg dfcbgea feacdb');
insert into #input ([Value]) values ('cefdag gcea fag defca gbdaef afcdg dcbgf ga adfecbg fcbdea | geac cfedba cgea fadecg');
insert into #input ([Value]) values ('fcgaed abdecgf cfaed ceb febacd dbecf bc cbfa gecbad fbdeg | facde cfgade acdefb cbe');
insert into #input ([Value]) values ('bcgae cfedba efcbadg dafbc dfbe fcgbad ef aefgcd acfbe fea | abfcd cafbd fbde dcgbaf');
insert into #input ([Value]) values ('geabdc fedga cafdbg cd aefcbg adcge dac bdegafc cegab dceb | dcfgba cad cad deabcg');
insert into #input ([Value]) values ('gdecab fde aecf adbgfe egdcaf dgaebcf decfg bcfdg ef ceadg | cefdabg fcea efac edf');
insert into #input ([Value]) values ('cbgaf edfa bfgecd fcdbae debca dfb bcdaf bdcaeg fecgadb fd | cafdgeb gabcf df afdebc');
insert into #input ([Value]) values ('fdebgc egdfb bfcdg cfedgab fdeagb egcb fcb cfdeba cb fagcd | gebfd afdbgec bc gdcafbe');
insert into #input ([Value]) values ('cb gcdefa cdb bacg eabfd ebdac gdabec gcbefd bgdecaf caedg | cgdeab ebfdgca edgbca cbefadg');
insert into #input ([Value]) values ('efbc aecgbd ebgdfa ecbag afb cfgeadb bf cadgf bgfca egcabf | bf agdbce fab bfcdeag');
insert into #input ([Value]) values ('cedafg aecdbg fcd cgeda cdfag efcg agfdb defcab fagcebd cf | adgcfe daecg abcged fgedbca');
insert into #input ([Value]) values ('bcgaed cfdgea caebd gdebc bega fbecadg ge fcdaeb gde gfbdc | gabe eg cadebf ecgadf');
insert into #input ([Value]) values ('aefc abefg acfbge agedbf dbgce cab abgdfc ecbga ac bfdceag | beafgd ca ac ac');
insert into #input ([Value]) values ('afbde fedag becda dacegf baf gacdbfe fcabdg fgeb fgdabe fb | fb afbdge bcdea fedacbg');
insert into #input ([Value]) values ('bfd cdgbfa dgefca fabdeg cgebdfa cabd gfcda cbgef db dgfcb | bd badegcf acdb adegcf');
insert into #input ([Value]) values ('ef cfbgd cdbfe bef ceadb bfcgead aedf edbagc abgcef aecbdf | bcfegad bef bef fe');
insert into #input ([Value]) values ('cbagef beadgc fae deacb fcagd cgdebfa dfeb bdecaf fe fcdae | dfaceb efdb beafcg bdef');
insert into #input ([Value]) values ('gdfeacb bca gfeacb gfeca egcb bc dgeacf fabgd fbcdae gcbfa | bfdeca bca adbgf abdgf');
insert into #input ([Value]) values ('faedbc egcaf bdgaf agdebcf fagcb cab bcdgaf dbgc fbgead cb | bdgafc cb dgbfa bgcd');
insert into #input ([Value]) values ('dfabc bgacde ad dab edfa bdfec dbgefca facgb eacfbd fcgdeb | ecdbfag bedfc ebfcad bfcdge');
insert into #input ([Value]) values ('dfegbc cfagb ba gefbc abec bfcdega bfa egadbf fgbcea fgcda | eafbdg ebfgc fgbdcea ba');
insert into #input ([Value]) values ('fgdebca dgbcea adbce cfaedb acebf ef efc cfabg edgafc fedb | fdeb fce gcfab bafgc');
insert into #input ([Value]) values ('cfdg daefgcb caedgb aefbc cbdag fg fdbgac fbg beagdf fbcga | dgfc fecgabd fgcd gbf');
insert into #input ([Value]) values ('cbadef abgdef cfea ac gedbc dcbafg dca fdbecag dceab deafb | eafc ebfdga cefa abcde');
insert into #input ([Value]) values ('fcbged ebdca bde ceagb abcdfeg bd cdaef cgabed ecgfab bgda | baecd dgbcea ecafd dbag');
insert into #input ([Value]) values ('bfeag cdabf dbeacg dgbcefa eda fdabge bafde ed egfd ebcafg | ebfcadg defg fadbe cfbgea');
insert into #input ([Value]) values ('bfd dgbec gfcadb ecdf aefbg cfbgead fd gcbdfe debgf gcdeab | ecdbga aebgf abcfgde fd');
insert into #input ([Value]) values ('ecgfda bcafe dgbefca dagcb dfc acdfb cdabfe cebfag fbde fd | bgdefac cfd febgac df');
insert into #input ([Value]) values ('dcafb dgafcb dbeacf bdga degbcfa cgbaf ga fga efdgca cegfb | ag beagdfc abcfg gcdeaf');
insert into #input ([Value]) values ('cgbfd fegcba ecgfb cbe dafebg bdface gace ec fcgdeab eagfb | gcdfb acge ecb cebgf');
insert into #input ([Value]) values ('adbcgf ef fged feb dabfgce bdgfc becfgd dcabe febgac bdfec | cgdbf fdcgeb afcbge fbdgc');
insert into #input ([Value]) values ('cg dagfc dfagbc cgab dagbf gbdcfe dgc aefgdbc aecdf bafegd | cg gfacbed bfgad bgacfed');
insert into #input ([Value]) values ('cadfeg cfdegba edagcb fae faebc decfb fa aebcg fgba egafcb | baegc fa acfbe af');
insert into #input ([Value]) values ('fed bcdge fcbae gbfd gfabecd cdaegb df egdfac egcfbd becdf | cadegf edcgbf fcbde dbgf');
insert into #input ([Value]) values ('fadcg beafcd cedbag edabg abdfge bdagf fba dgcbaef fb fbge | deafcgb dfcaeb geadfb ecfgdba');
insert into #input ([Value]) values ('bec fbcea cgbf bfgcea cdefa cgadeb cb fdbeag bdaegcf fgabe | ebfacg bgcf cb bc');
insert into #input ([Value]) values ('gb agdbce efacgd cgdfbe agdec afcdb ebag gcb eadfgcb bdgac | efcbagd bedcag bgc baeg');
insert into #input ([Value]) values ('fbe dcbgae cedgfba bcgefa bfdge bf dafge edbgc fcdb bcfdeg | bdfc fdabgce ebgfd fegbd');
insert into #input ([Value]) values ('fb abfdge fgdca fedcag bafcgd bfg gdeabfc fbgac eagcb bcdf | gacfedb fb bf fcadg');
insert into #input ([Value]) values ('bg eadgf bcdea gbd gebda edgbac cagb dfecab fgcbead ecfbgd | gbedca adfebgc acgb bdg');
insert into #input ([Value]) values ('adgfce begafc gfeac cde cgabd ed becdfa gfed egfbcda egacd | ed cgeda dfeacb dec');
insert into #input ([Value]) values ('agefcb gadec gdbafe dg cebafdg dcfg ecagf edg gdeacf ceadb | dgaefc egcadbf cdfg faecg');
insert into #input ([Value]) values ('fdec gcbdaf bafedc cf dbegac ceabd gbadecf fca gbefa bacfe | fc fdce acf afc');
insert into #input ([Value]) values ('fdecg gdefcba cg dbcfe dfbeac gcfedb daefg facdgb gebc cfg | begafdc fcdebag dbcgaef gfc');
insert into #input ([Value]) values ('adcgef agbdfec dc ecad cgeabf edfbg bcdgaf fdgce ceagf cdg | cdgef ecda cade cd');
insert into #input ([Value]) values ('abdefc bdaecfg dgeacb fb gfade bacde bdagcf fdb becf adbef | fcbadg cefabd fdb edfga');
insert into #input ([Value]) values ('efcgab bead fcdeg ae cgdab dgcbae aeg edgca bcegdaf gdcfab | gdafceb ea eag aeg');
insert into #input ([Value]) values ('dceafb befac fca cf fdcb cadgef bedaf ebagc aedfbg acgdbef | beadfc cf cfeba gbeca');
insert into #input ([Value]) values ('gce eacgbd afcdbe eg dfcebga bedca gfbca agfedc gcaeb gebd | gdbe ge ge gbde');
insert into #input ([Value]) values ('bcgae bedgfca gde ed gdaec gbfcad cgbdef gdaecf edfa gfadc | cdbfeg bgdfac cfdeag adgfbc');
insert into #input ([Value]) values ('gebca dbacfeg dbfeag bagfe eadfb gf fdge fbg dfceba gafbdc | egfd fedg egafb gf');
insert into #input ([Value]) values ('begfadc bdcae dgbca edbf acbfeg fcgead be eba afdce aedcbf | bfedac edcab eba fdbace');
insert into #input ([Value]) values ('fdbgc cegabf ac dfbage bgfae faec gac caedbg bfgedca bfagc | acef dfgcb face gbafed');
insert into #input ([Value]) values ('cdbfge bfceg dgacbe baegfd ecb dfceabg ebdfg cb acfge bdfc | cbe gcbefd egdcba eafbdg');
insert into #input ([Value]) values ('fecdb dgbcfae bedca edf ef cfebgd ecgf gfdbc fdbagc afbged | aedbgf ef fecg fagcbd');
insert into #input ([Value]) values ('gdecfb fbadge cabe adfcg efcbd ea gbeacfd fcedba dea fdeac | acbe acbe dea fcgedba');
insert into #input ([Value]) values ('bg dgfac gabdec dgcabef beafc gfceab cgb bafcde fegb cgafb | bcg bg fdgca faebcg');
insert into #input ([Value]) values ('adfgc dfcbge dgafbc gaf acfb dgcea gebcdaf fbgdea fbgdc af | fa agcdf fga gfebda');
insert into #input ([Value]) values ('defag begdf fa becgda aef afcg dfaceg cgdae eacdfb acefbgd | cadfeb edgaf fa ecadbf');
insert into #input ([Value]) values ('fec edfbc fagecd cgdfb ef fcabdg cedba fbecdg bfge faegbcd | befdc dbfecga acgdbf gcbedfa');
insert into #input ([Value]) values ('ed cedbfg bdfac fdeac baed fde eagcbdf abgfdc feadbc gaefc | fdbca de cgbdfe de');
insert into #input ([Value]) values ('fcbga ge cagbef acebfdg egbf acbge ceg egcdfa bagdcf adcbe | cgfab ecg ebcda afgcde');
insert into #input ([Value]) values ('df fadcbeg gcfbde dcagb fbd afgdbc cbeagd dfcab cafbe adfg | eagdbcf fgda cgbda gbfced');
insert into #input ([Value]) values ('agef bgdcaef ade adcbf gdbace cefdg febgdc cgefda fedca ae | ae afdgec febgcd agcdeb');
insert into #input ([Value]) values ('gfbc fdg dbaef fg aefgdcb gefdac gebcd dbegac fegcbd fbedg | cfgb gdebc cbaefdg fgd');
insert into #input ([Value]) values ('ebfgac gcf geabdfc cegbda fgade bcaeg fcba cf fdecgb ecafg | cfg fgc acfgdeb gdabfec');
insert into #input ([Value]) values ('gafeb ebdgac ed cgbfad cgeadfb bdecfa bfcda fabde aed ecdf | bgfdaec fedcbag de fedc');
insert into #input ([Value]) values ('age ebcdfg afcdeg dcfeg efadgbc fgad becad ag eacgd gabecf | ag gcdfbe agecd fdgce');
insert into #input ([Value]) values ('aecfbd geb afbde fdgeab gfeba ebgcadf bg gdbf fgeac bceagd | eacdgfb bge edabcf ebdaf');
insert into #input ([Value]) values ('cgabe aefbcdg fagdce abcdfg dcbe aecgbd cge fbaeg ce dcbga | bgacfed gafcdb egc egc');
insert into #input ([Value]) values ('bdefa fagbd fabdce cdae fceagb deb fbdecg fcbea de agedbcf | fgdcabe afbde bde gfcbde');
insert into #input ([Value]) values ('dgfcea dcbea dabcf edcbga cedafb gfabc cgdabfe afd fd dbfe | debf egdacb dbef edabcg');
insert into #input ([Value]) values ('bfdea adfceb fgcbae feg fdebg bagfdce egcdb fedagb dgaf gf | bgdfea gef cdebfag edcbgaf');
insert into #input ([Value]) values ('ade aefgdc ea feac gefdc eacbdfg eabfgd abcdg efbdgc geacd | eafgdc fgebad cbdefg cdefg');
insert into #input ([Value]) values ('egfdab edfb agfec dbcage ade ed badcfg gfcdeba afedg fgadb | aedbcg bgfda aed dae');
insert into #input ([Value]) values ('cfdbge abgc afgbe cb bcf ebfdga adecf efbacdg agfbce bacfe | bfc fbc cfb bfc');
insert into #input ([Value]) values ('gd bgd gcafeb dfcbage ebfgcd egfbd decg gcafdb aedfb ebgfc | gdec gefbacd gdce dg');
insert into #input ([Value]) values ('gf dbegac becgadf dfge facbe gfa acdgfe ecgfa dcfbag gceda | gfed cefba cabfe acedfg');
insert into #input ([Value]) values ('fd cdbagef fdgbec daebcg dfba fbacdg cdf cfadg gabdc gfcae | agecf cfd cdf egcbad');
insert into #input ([Value]) values ('dfca adgefb fbced cfdbge fa egcabfd eabcf eabfcd cabeg afe | acfd dbecf af af');
insert into #input ([Value]) values ('agfdec dfcag edgacfb baegfd fd gfaecb dacgb ecfga dfec daf | gabcd ebcgadf fbegac fgace');
insert into #input ([Value]) values ('edafg gcfea cbaeg afcdgbe fcde fc acf cedagf begfda cdbfag | cf daecbfg bgace dcgabef');
insert into #input ([Value]) values ('bdefagc gcba bfacde adbce ga dgefc cagdeb dgeabf aegdc adg | faecdgb gda ag dga');
insert into #input ([Value]) values ('becdag bceadf edcab dgacb bdgcaef gd dga cedg agbfc dafebg | gd gced gad cgabd');
insert into #input ([Value]) values ('gbfaed bdacf db fcabg ecfda edcb adcfge adb abcfed cgedfba | bad dba fdecgab edacf');
insert into #input ([Value]) values ('ae cabe ecgafb dfgce afbdge gdacfb bdegfca afe agfcb cegfa | ae fgdeab gcfed cgdfabe');
insert into #input ([Value]) values ('ad fdbcg cbfea fdabgec dca cgadfe fbdac dbag gbcfde bgcfad | dbagfc dac ad cbfdge');
insert into #input ([Value]) values ('fdgbaec ab dabe cabegd cgaed bcdag bgfdc gebcfa agb cadefg | efbgac dcgafe dagecb gba');
insert into #input ([Value]) values ('cafbge gdbfac aefcb adfcegb daefc bacge gcabed febg fb bfc | bfcgae gebf bfc abgcdf');
insert into #input ([Value]) values ('dfbgca bfcae ebc ebfdac eb eadfgcb dfeb edbagc fdcba gfcea | becadf ecb bce badcf');
insert into #input ([Value]) values ('cdefa adcgfe fdceb eacdfbg adf ad fcgea deag gacbfd aecfgb | da dega adcebfg acdbefg');
insert into #input ([Value]) values ('dace dcebg adbcfg abdcg de dceagb fcbeg fbacedg bdeafg deb | bed cabgd ed fecbg');
insert into #input ([Value]) values ('edabgc fdbaegc gcadfe afed fcd gecbf fd fgdcab fedcg dgace | gaecd bdgcaf gedfcab fead');
insert into #input ([Value]) values ('gfbae bgefdc cbfgdae dbgfea abgc bc aecbgf adfce bce afbce | aedgfbc bacgfe bcdefg gfbea');
insert into #input ([Value]) values ('cadeg cagdfb bdc bfcedga cgbafe facbe efbd edcba bafdec bd | dbc agdce efdacb bcd');
insert into #input ([Value]) values ('ac fegacb bac afdc aedfbc defba dgefba gcdeb edacb dcbeagf | egdbc egcfbad decba adfc');
insert into #input ([Value]) values ('bcfdag cgfdbea dce gbcfd ed bgced dfbgec gcaeb fcbead dgfe | defg edc gecdb de');
insert into #input ([Value]) values ('eb fbe afdec bfgda cdfbgae fbgcde aedbfc deafgc ecab efdba | aegcdf fedgcab edcfbag be');
insert into #input ([Value]) values ('cfabg aceg gba fcebda egabfc cbaef acfbdeg ga gcfdb adbfge | cgae abg gace dfabec');
insert into #input ([Value]) values ('fabe af fdaeg bdega fdceg adbfge fad gcedbfa dfgbac aedgbc | afdgceb aebf dfa cgbaed');
insert into #input ([Value]) values ('ecgdf bfcagd dcegb gafdc efac feadbgc agcdef eagbfd fge ef | ef egf dcgfa decgf');
insert into #input ([Value]) values ('ag ecbga bga fdegab gbdcfe gbecf afbecg ebdac edacgfb cagf | gafc ecgbf bag eadgbf');
insert into #input ([Value]) values ('dafe fe cef agdebfc fecdg bedcg bdcafg beafcg dcegaf fdcag | dafe fcdag afdgce adef');
insert into #input ([Value]) values ('gefac dagcfe age facdegb acfbg edfa ea edfcg egdcab fcbgde | gcefa ea aebdgc ecfga');
insert into #input ([Value]) values ('cdfbea debgca adbec bgfadc cdg ceadg bgce gc gfaed fcdgeab | cg cgd afdcbg cdg');
insert into #input ([Value]) values ('gcbefda fdcga cfdebg fgdabc abgd fdbcg cabfde fda efagc ad | dgcfa bacfed cfbegd da');
insert into #input ([Value]) values ('cgbaed bcdefg ebdca dcabf feabcdg cgae deabg ced ec efgdba | bgdfce ceag cde dbegac');
insert into #input ([Value]) values ('debgfa gbdce ecdgbf ag agdc bga acdgbfe bceag cbaef cebagd | bga ga gaceb abecgd');
insert into #input ([Value]) values ('dbgcef eafgb fcdeb bdfcae fadc ac degabc agbcefd abfce cba | fcedb cebdga dacf dafcbeg');
insert into #input ([Value]) values ('bag gceb cbafd bg bgfaec dfgcae cbagf gceaf dfageb bcafegd | agb gb gb fedbagc');
insert into #input ([Value]) values ('gadce gecdf cgf egbfd beagfc afdc dfcageb cf bcgdae dgefca | fc gfc eacfdg cgf');
insert into #input ([Value]) values ('dabcfg ebadf cf cebag fbc eagfcb bcegad fgce eabcf ebcgdaf | feacbdg ebadf adfbe fc');
insert into #input ([Value]) values ('ad fgeac afd bfagcde afbcde gdca debgf adgfe fbagec cfaged | adcg adgefc ad adgcef');
insert into #input ([Value]) values ('fcdbeag fdbage cadf daecb bgecd bafce bda ad cdbaef eacbgf | ad caebdf gbcefa bcade');
insert into #input ([Value]) values ('efbgca cabdgef fabcd dafec bf afdgcb fab agcbd fgbd dgceab | fba fb dcagb dbfcag');
insert into #input ([Value]) values ('bea cbfag agefdc cdeb gbadcef aefgdb eagdc cgdeba egbac be | bgace eb be cbde');
insert into #input ([Value]) values ('acbdeg cefda fb cfbaeg ebf aefcb gbfc ceagb cegbfda gebafd | agcfbe afdec fbgc dfcegab');
insert into #input ([Value]) values ('bc cgdab gbfcad ecbdfa cbd fgdac edfacgb dgaeb afecdg bcgf | fcbg dbc dcafgb bcgf');
insert into #input ([Value]) values ('aedf dga cgfbde fgbde cfbgad dabegf cfgabde geacb bdaeg da | dfea agd baecg gcaeb');
insert into #input ([Value]) values ('gc cefga dbefac bacedg afedg afcbe becgaf bcgf bdgfeac cag | cgbf bgcf dabceg gc');
insert into #input ([Value]) values ('db cdegf gcbfd afgbc dgcfba cbgaef dgba fgebacd fadcbe fdb | fgebac bd fdegc db');
insert into #input ([Value]) values ('debgafc dacbeg fdg cgdba fdagcb eacfg bdcf gafbde fd dcagf | fbcd bgcefda cafbged dfbc');
insert into #input ([Value]) values ('fcab gdbef begadc fdecga abdcefg bafgec cb cbe efbgc egacf | bce gcfeb cgbfade cbaf');
insert into #input ([Value]) values ('aedg agfebcd abfge fge cdbefg eg dgcfba gdebfa acbef gafbd | agdfbc baefc efg gbfea');
insert into #input ([Value]) values ('cdgab cbfedga eacbgd cf dceafg cadgfb fdc efbdg bcfa fdbgc | dfc fc cdgbf gcbadf');
insert into #input ([Value]) values ('gce eg edcfagb eacgdb bfegdc cdgaf ecgad cebadf eagb cedab | dcbae cdafg gedacfb ge');
insert into #input ([Value]) values ('dbeagf gfbda fdebgc gabfdc afbgc cgbea fc cdaf ecadbgf fcb | cfgedb bdagf fc gbecfd');
insert into #input ([Value]) values ('bdcefg egcfab acedg fcdb fbgeda bec cebdg deacbgf cb ebdfg | bc decbg eacgd bdcf');
insert into #input ([Value]) values ('dfgeab cegba facbegd edg dfgceb gafcbd edbgc gfcbd dcfe de | bdceg fecd cedf defgcb');
insert into #input ([Value]) values ('egfb dfgace cfgaebd befac adcgb aeg ge cebag bgface bdacfe | cgbea cgbae cbdgaef afebgc');
insert into #input ([Value]) values ('de efd efdbg efabdcg fgaceb bfgdc fgabe edgfab ebda degacf | fecagd ed adbe de');
insert into #input ([Value]) values ('fedbga gc gec gaefd ecagf gecbda bafce cgfead cgdf cadfbeg | gafed gcfd cgfd gcfd');
insert into #input ([Value]) values ('bedfgca ebfdc acgbfd cfb dfbeg decaf bc dabefc beac aedcgf | debgf efacd cb bc');
insert into #input ([Value]) values ('edgcba eg dbfga acfgeb cdbea bcfdaeg dcge gdeba dacefb egb | efgdacb cgeafbd gfadb gedc');
insert into #input ([Value]) values ('bacfde dgcefa eabdf acfebdg afgdbc dba aedfc aebgf db bdce | db afecd agcdfe agfedbc');
insert into #input ([Value]) values ('dga cgadb cdbge bfgca edab ad cbgade efbcdga afedgc ecfgbd | ad dgecb ad bdgac');
insert into #input ([Value]) values ('abfdec dacfegb faecg cbge acgfb fcgaeb bgfda bc bfc fgcdae | cgeb fgaecb cbeg gadbefc');
insert into #input ([Value]) values ('ea ecgbfda eacb efa facegb bgfea ebfdg gfbac edcgaf gcdfba | gabfe bgfeca ae cabe');
insert into #input ([Value]) values ('ecf bfged cebfgd adfebg dfabec cgdf gbeca cf bdfcgea bgfce | cdfgeab gdbfe daebcf bcagdef');
insert into #input ([Value]) values ('ebf efbdc bf bfcdge dgcfea bgfc cedab begdaf egcdf befdcag | ebgcfda gdfaeb bf ecfgd');
insert into #input ([Value]) values ('egcdf ecafg afebdc df dgfa agfecd cfbdgea ecgafb gdceb cfd | cdf cgadef acfgbde defgc');
insert into #input ([Value]) values ('gbdeacf bfcdg cag acdgf efdbcg ac fagdcb gbfeac bcda edfga | agc gaedf abdc cag');
insert into #input ([Value]) values ('cfgd edbcfg gfebc begcdfa acebgf ged dbace faedbg gecbd gd | bagefc dgefabc defabg becgf');
insert into #input ([Value]) values ('gcbe ce ebdfa cae bdcagfe bgdac gdeacb cbdagf dbace caegfd | ec acedb gabcd bcagfed');
insert into #input ([Value]) values ('efdgba cgabfed ec caef ceagb fbega cbgda ebc afbgec ecbdgf | afegdb gacbd dgefab edafgb');
insert into #input ([Value]) values ('ecagd bfdec fabdce bda beadc gfeabd bdfeacg afbc gecbfd ba | becdf dcaeg gcdea adb');
insert into #input ([Value]) values ('cefb cfabdg dbf bfeacd baged bf baefd gaecfd cbfaedg fecda | bf fedac fdgecba bdf');
insert into #input ([Value]) values ('gce gdbcae fecd efcbgd fbdacg eafbg cefgb cbdfg ec fgdacbe | cge ec bgcfead ceg');
insert into #input ([Value]) values ('deagfb af efca gfecad dfa bacdg cfdegb fecdg egdacfb dfcag | fdgce af edbgafc fdgce');
insert into #input ([Value]) values ('fagdce ebd abdegf defba cafebdg eb daefg dfbca ebga defcbg | afdeb eb bde egba');
insert into #input ([Value]) values ('bafed aecdb fbce cbd gdebafc cfbadg badegf bc ecdfab gecad | dbc dbc badgcfe fdgeba');
insert into #input ([Value]) values ('fgbec bfacde ge edgcfb cgdbfae fdecga cfbga efg dbge cdfeb | bedfcg eg ge afebdcg');
insert into #input ([Value]) values ('dcaef ag gcab aeg acedg edgcb efgdacb cgfbed dafgeb agdbec | bedagc bdegc dfcebg adecf');
insert into #input ([Value]) values ('dcfg abecg bgadc dg fcgbda gadebf cdabfe badcf agd fcdbega | abdfeg gd egbac cabgdf');
insert into #input ([Value]) values ('dfgebc eabcd efcdb dbecfa dac aegdb ca bcgafed fbac fcadge | ca egcdafb afcbdge eagdb');
insert into #input ([Value]) values ('ebgdc cbgdfe dcbfae bfagcd gdef cebga bceagfd ecd dfbgc ed | de ed fdegcba edc');
insert into #input ([Value]) values ('eb feb begdcf efgacb gdbe daecf dgcfb fbdcega cebfd gabcdf | efdbc be afdec efb');
insert into #input ([Value]) values ('begac fbec bcdafg acb cb fgaebd afegbc gebadcf dagec beafg | adgce fceb cgdeafb cab');
insert into #input ([Value]) values ('ca cdfagb ebfca ebdcgaf afebg dfbgae cega cebfd fbagce fac | bgedaf cgae gdaecfb egdabcf');
insert into #input ([Value]) values ('gabfd agfc ecdbfag aefcbd afd af gdabfc bgcfed abedg dcgfb | af bdgcef adgbf gcdafb');
insert into #input ([Value]) values ('egfda fed dbfga adgefb de gacbdf aefgc aecbfd bdge fdbecga | ed de eacbgdf bdeg');
insert into #input ([Value]) values ('dbfag cdbfea gfdbec agfedbc gfb bg gabfcd fgeda dbfac acbg | dfbac gcba gb fbgda');
insert into #input ([Value]) values ('dbcgf gba gdcaeb dgbacfe edfba debgcf cbdgaf afcg ag abfdg | bgafecd edfcgb ag dgfba');
insert into #input ([Value]) values ('bdfcg acebfg egfbacd gfdcba fbg dagb bg cbdaf cgdfe edfcab | bagd gfebacd efbcda gfb');
insert into #input ([Value]) values ('cedbf fcabdge cge feagbc dfcge gedb adcgf bdcefg edacfb eg | cbdfe cge efbcad cfagdeb');
insert into #input ([Value]) values ('cga fgeda ceagd ebcg beadc bgfecad fgdcba gc cagebd dfeabc | cag daebgc cg fcdageb');
insert into #input ([Value]) values ('fgdc fda aebgd cabfde fd agbecf fdacgbe dbfga cfgba bdgacf | facbg fbdagec fdcg ebafcgd');
insert into #input ([Value]) values ('gbced efbgca gfebd bdc baecg fcabed dcbgeaf gbedac dc acdg | gfbace cdafbe cbaeg bcd');
insert into #input ([Value]) values ('afgdec ba dbcge daefg dabeg dfbcage afbd fgdaeb gab cfegab | bcfage bgead ba fgdbcea');
insert into #input ([Value]) values ('ace dgcaef daegbc bfgeda ecbd degab cgabf ce eagbdfc bcgea | cdgeaf bdgea edcb cae');
insert into #input ([Value]) values ('cd cadf gfead gdefab dce adcfge degcf cgefb gdfbcae aebcgd | efgdc dce ecd dc');
insert into #input ([Value]) values ('afdbe ad fgdeb fda aebdcgf bcaefg acbfe fdceab bacd dcagef | afd begfd acfeb fda');
insert into #input ([Value]) values ('dfg afgedbc cbfga gbdace dbagf fdegab edgacf df befd edgba | dgeba df efbd cfadge');
insert into #input ([Value]) values ('bdcgaf aebg badfce efagc gdefc cabfeg abgcf ecafbdg afe ae | aegdbcf ageb eagb ebdfgca');
insert into #input ([Value]) values ('gdceab fb bfe cgbfea edbagfc cafed ebacg ebafc defgcb gbfa | efb efcba bf afgb');
insert into #input ([Value]) values ('bafcg cdfgb ac caf fcdabe adgc dbgefc bedafcg bgacdf bfaeg | bcfegad afegb gabfdce bgcfa');
insert into #input ([Value]) values ('dafgb gca fcab fcabgd dcfaebg gfcdae cgdba ac gbadef egcbd | bcedg aebgfcd gfeadb afbc');
insert into #input ([Value]) values ('adebg fcgaedb dagfe agfc fdbaec fgaecd feg acdfe gf becdgf | feg fge gfe egf');
insert into #input ([Value]) values ('gf gfda gfb gfcebd gefab afcbged eabdg adgbfe fbace bgcade | dbafgce fbdaeg dagf fcbae');
insert into #input ([Value]) values ('fbegcd ecg cefdbag fcgd ebdac gbecd cg bfcgea bafdeg edfgb | fcbegd acbde bcgaef cge');
insert into #input ([Value]) values ('gbcadf cf gfbc defbca acgfd bcaedg afegd cfbgeda caf gcdba | begcad cfa bagfedc gbcdeaf');
insert into #input ([Value]) values ('begacdf dcafbg gb cgfbed gbcde cedfab dfcbe gbc cadge ebfg | gbfe gb ebcdfga bfeg');
insert into #input ([Value]) values ('fe bgadefc cbgdf gbfade cefgd ecdgaf efg afce eacgd dcgeab | gdebac fcae egbdfac fgdeab');
insert into #input ([Value]) values ('ebfca fdac fdb bgdecaf dbcgef cedbfa bgcefa fd eadfb baegd | cgfaeb dgbecf dfb bagecf');
insert into #input ([Value]) values ('ebda eagcf gcbea ba bfcegad acebgd gdecb cdafgb acb gfcdbe | fgcebd cedbgf gbfdac cefag');
insert into #input ([Value]) values ('edacf fed eacgd febadc ebafc bfcgea ecafgdb adbf fd gbfdec | fabce egfcbd deafgbc bafd');
insert into #input ([Value]) values ('gfbe fdbga ged ge aegdf baegcd afecd ebgcfda fgacbd gdeafb | cdfae fdaec ge aefdg');
insert into #input ([Value]) values ('gebaf afdbcg cfged dga fgead febdcga ad fbaedg bade gbfaec | cgbfdea gadfecb agfde gad');
insert into #input ([Value]) values ('fdg cfgdbe cfbeadg cgbf gedbc dcfage dfgeb fg agcbed adefb | gdf bdecg faedb gfd');
insert into #input ([Value]) values ('acdgbe cfabg gfbacd cbf dfbcea bcfegad cf gcdab efbag fdcg | dbfagc fgbdcea cbdga fc');
insert into #input ([Value]) values ('afbcg dgbfac dgaebf gcfea gbceadf afb fb abgcd abcdge fdcb | gbceda cgdabe bcgdae fbgdea');
insert into #input ([Value]) values ('cgbedf dbgfc cbef cf bgfda gcedb gadceb efdcag fdc bcfdaeg | fecb ebdcfg cf badgf');
insert into #input ([Value]) values ('fg cafdg fegadbc aefcdb bcagd degf gfecba adegfc cfg fdeac | gdcafe cgfdae gebfca dfcgae');
insert into #input ([Value]) values ('fdbecg fcagbd fgeabd cadbe bcdag dafgb facg gdc bdgeacf cg | cedab cbdga gcd gc');
insert into #input ([Value]) values ('gdeaf edbcag fbac fgecdba dfbcea afdce ac fbecd dbefcg cea | efcbd gdeaf dfceagb ace');
insert into #input ([Value]) values ('abgdc ebcgd ecgdf ebagcd dabe edgbcfa be cgeabf ceb cdfgba | fdacbg abegcd abdgc cabfdge');
insert into #input ([Value]) values ('fbgcd feacb ed eadf becfd bde fdabce cgdbea fadbcge gbefac | dcgbf fcebd ebcfd gbface');


create table #digitrows (
	AutoId int
	,DigitText nvarchar(100)
);

create table #signalrows (
	AutoId int
	,DigitText nvarchar(100)
);

insert into #digitrows
select
	AutoId
	,concat(ltrim(substring([Value],charindex('|',[Value])+1,100)),' ')
from #input;

insert into #signalrows
select
	AutoId
	,concat(ltrim(substring([Value],1,charindex('|',[Value])-2)),' ')
from #input;

create table #digits (
	AutoId int identity
	,RowId int
	,DigitText nvarchar(7)
	,Digit int
);

create table #signals (
	AutoId int identity
	,RowId int
	,DigitText nvarchar(7)
	,Digit int
)

create table #digitmapping
(
	Counts int
	,Digit int
);

insert into #digitmapping values (2,1);
insert into #digitmapping values (4,4);
insert into #digitmapping values (3,7);
insert into #digitmapping values (7,8);

declare @AutoId int;
declare @DigitFullText nvarchar(100);
declare @DigitText nvarchar(7);

--save extracted digits
declare digitcur cursor for
select
	*
from #digitrows;

open digitcur;

fetch next from digitcur into @AutoId, @DigitFullText;

while @@FETCH_STATUS = 0
begin
	while (len(@DigitFullText) > 1)
	begin
		set @DigitText = left(@DigitFullText,charindex(' ',@DigitFullText));
		set @DigitFullText = ltrim(substring(@DigitFullText,len(@DigitText)+1,100));
		insert into #digits (RowId, DigitText) values (@AutoId, @DigitText);
	end;

	fetch next from digitcur into @AutoId, @DigitFullText;
end

close digitcur;
deallocate digitcur;

--save extracted signals
declare signalcur cursor for
select
	*
from #signalrows;

open signalcur;

fetch next from signalcur into @AutoId, @DigitFullText;

while @@FETCH_STATUS = 0
begin
	while (len(@DigitFullText) > 1)
	begin
		set @DigitText = left(@DigitFullText,charindex(' ',@DigitFullText));
		set @DigitFullText = ltrim(substring(@DigitFullText,len(@DigitText)+1,100));
		insert into #signals (RowId, DigitText) values (@AutoId, @DigitText);
	end;

	fetch next from signalcur into @AutoId, @DigitFullText;
end

close signalcur;
deallocate signalcur;

update d
	set Digit = dm.Digit
from #digits d
join #digitmapping dm
	on len(d.DigitText) = dm.Counts;

update d
	set Digit = dm.Digit
from #signals d
join #digitmapping dm
	on len(d.DigitText) = dm.Counts;

alter table #signals add DigitTextOrdered nvarchar(7);

update #signals
	set DigitTextOrdered = dbo.f_rearrange(DigitText);

alter table #digits add DigitTextOrdered nvarchar(7);

update #digits
	set DigitTextOrdered = dbo.f_rearrange(DigitText);

create table #charactermapping (
	RowId int
	,SignalId int
	,[Char] nvarchar(1)
	,Placing nvarchar(2)
	,Digit int
);

declare charactercur cursor for
select
	RowId, AutoId, DigitText, Digit
from #signals;

declare @RowId int;
declare @SignalId int;
declare @Character nvarchar(1);
declare @Digit int;
declare @DigiText nvarchar(7);

open charactercur;

fetch next from charactercur into @RowId, @SignalId, @DigiText, @Digit;

while @@FETCH_STATUS = 0
begin
	set @DigiText = trim(@DigiText);
	while len(@DigiText) > 0
	begin
		set @Character = left(@DigiText,1);
		set @DigiText = substring(@DigiText,2,7);
		insert into #charactermapping values (@RowId, @SignalId, @Character, '', @Digit);
	end
	fetch next from charactercur into @RowId, @SignalId, @DigiText, @Digit;
end;

close charactercur;
deallocate charactercur;

/*
	 aa		  t t 
	b  c	tl    tr
	b  c	tl    tr
	 dd		  m m 
	e  f	bl    br
	e  f	bl    br
	 gg		  b b 
*/
--Detect top signal (t) from seven minus one
update c1
	set Placing = 't'
from #charactermapping c1
where
	c1.Digit = 7
	and not exists (select null from #charactermapping c2 where c2.Digit = 1 and c1.RowId = c2.RowId and c1.[Char] = c2.[Char]);


--We know 7, 4 and 1. If we combine those we can find nine (only five matching characters is the correct value:
update s
	set Digit = 9
from #signals s
join
	(select
		c.RowId, SignalId
	from #charactermapping c
	join
		(select
			RowId
			,[Char]
		from #charactermapping
		where
			Digit in (1,4,7)
		group by
			RowId
			,[Char]) el
		on c.RowId = el.RowId
		and c.[Char] = el.[Char]
	where
		c.Digit is null
	group by
		c.RowId, SignalId
	having count(*) = 5) nine
	on s.AutoId = nine.SignalId;

update c
	set Digit = 9
from #charactermapping c
join #signals s
	on c.SignalId = s.AutoId
where
	s.Digit = 9;

update c1
	set Placing = 'b'
from #charactermapping c1
where
	not exists (select null from #charactermapping c2 where c1.RowId = c2.RowId and c1.Char = c2.Char and c2.Digit in (1,4,7))
	and c1.Digit = 9;

update c1
	set Placing = 'bl'
from #charactermapping c1
where
	not exists (select null from #charactermapping c2 where c1.RowId = c2.RowId and c1.Char = c2.Char and c2.Digit in (9))
	and c1.Digit = 8;

update c1
	set Placing = c2.Placing
from #charactermapping c1
join #charactermapping c2
	on c1.RowId = c2.RowId
	and c1.Char = c2.Char
where
	isnull(c1.Placing,'') = ''
	and isnull(c2.Placing,'') <> '';
-----------------------------------------------------------
--Try to find zero
update s
	set Digit = 0
from #signals s
join
	(select
		c1.SignalId
		,c1.RowId
		,count(*) [Counts]
	from #signals s
	join #charactermapping c1
		on s.AutoId = c1.SignalId
	where
		len(s.DigitText) = 6 
		and s.Digit is null
		and exists (select null from (select distinct RowId, Char from #charactermapping where Digit in (1,7)) c2 where c1.RowId = c2.RowId and c1.Char = c2.Char)
	group by
		c1.SignalId
		,c1.RowId
	having count(*) = 3) zero
	on s.AutoId = zero.SignalId
where
	len(s.DigitText) = 6 
	and s.Digit is null;

update c
	set Digit = 0
from #charactermapping c
join #signals s
	on c.SignalId = s.AutoId
where
	s.Digit = 0;
-----------------------------------------------------------
--Try to find six (were bottom left is filled and size is six)
update s
	set Digit = 6
from #signals s
join
	(select
		c1.RowId, c1.SignalId,c1.Char, count(*) [Counts]
	from #charactermapping c1
	join #charactermapping c2
		on c1.RowId = c2.RowId
		and c1.SignalId = c2.SignalId
	where
		c1.Placing = 'bl'
		and c1.Digit is null
	group by
		c1.RowId, c1.SignalId,c1.Char
	having count(*) = 6) six
	on s.AutoId = six.SignalId;

update c
	set Digit = 6
from #charactermapping c
join #signals s
	on c.SignalId = s.AutoId
where
	s.Digit = 6;
-----------------------------------------------------------
--set middle character
update c1
	set Placing = 'm'
from #charactermapping c1
where
	not exists (select null from #charactermapping c2 where c1.RowId = c2.RowId and c1.Char = c2.Char and c2.Digit = 0)
	and c1.Digit = 8;

--extract bottom right character from 6 and 1 (try to find matching character)
update c1
	set Placing = 'br'
from #charactermapping c1
where
	exists (select null from #charactermapping c2 where c1.RowId = c2.RowId and c1.Char = c2.Char and c2.Digit = 1)
	and c1.Digit = 6

update c1
	set Placing = c2.Placing
from #charactermapping c1
join #charactermapping c2
	on c1.RowId = c2.RowId
	and c1.Char = c2.Char
where
	isnull(c1.Placing,'') = ''
	and isnull(c2.Placing,'') <> '';
-----------------------------------------------------------
--Try to find two
update s
	set Digit = 2
from #signals s
join
	(select
		c1.SignalId, count(*) as [counts]
	from #charactermapping c1
	join (select distinct
			RowId
			,Char
			,Placing
		from #charactermapping
		where
			Placing in ('t','m','b','br')) pl
		on c1.RowId = pl.RowId
		and c1.Char = pl.Char
	where
		c1.Digit is null
	group by
		c1.SignalId
	having count(*) = 3) two
	on s.AutoId = two.SignalId;

update c
	set Digit = 2
from #charactermapping c
join #signals s
	on c.SignalId = s.AutoId
where
	s.Digit = 2;
-----------------------------------------------------------
--find top left right
update c1
	set Placing = 'tr'
from #charactermapping c1
where
	exists (select null from #charactermapping c2 where c1.RowId = c2.RowId and c2.Digit = 8 and c1.Char = c2.Char and isnull(c2.Placing,'') = '')
	and c1.Digit = 2;

update c1
	set Placing = c2.Placing
from #charactermapping c1
join #charactermapping c2
	on c1.RowId = c2.RowId
	and c1.Char = c2.Char
where
	isnull(c1.Placing,'') = ''
	and isnull(c2.Placing,'') <> '';
-----------------------------------------------------------
--Try to find three
update s
	set Digit = 3
from #signals s
join
	(select
		c1.SignalId, count(*) as [counts]
	from #charactermapping c1
	join (select distinct
			RowId
			,Char
			,Placing
		from #charactermapping
		where
			Placing in ('t','m','b','br','tr')) pl
		on c1.RowId = pl.RowId
		and c1.Char = pl.Char
	where
		c1.Digit is null
	group by
		c1.SignalId
	having count(*) = 5) two
	on s.AutoId = two.SignalId;


update c
	set Digit = 3
from #charactermapping c
join #signals s
	on c.SignalId = s.AutoId
where
	s.Digit = 3;
-----------------------------------------------------------
--Remaining must be five
update #signals
	set Digit = 5
where
	Digit is null;
-----------------------------------------------------------
select
	RowId
	,(select
		concat('',s.Digit)
	from #digits d1
	join #signals s
		on d1.DigitTextOrdered = s.DigitTextOrdered
		and d1.RowId = s.RowId
		and d.RowId = d1.RowId
	order by
		d1.AutoId
	for xml path('')) as [Value]
into #output
from #digits d
group by
	RowId;

select sum(cast([Value] as int)) from #output;

--select count(*) from #digits where Digit in (1,4,7,8);

drop table #digitmapping;
drop table #input;
drop table #digitrows;
drop table #digits;
drop table #signalrows;
drop table #signals;
drop table #charactermapping;
drop table #output;

