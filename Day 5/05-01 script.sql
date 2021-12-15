set nocount on;

create table #input (
	[AutoID] int identity
	,[RowData] nvarchar(20)
);

insert into #input (RowData) values('973,543 -> 601,915');
insert into #input (RowData) values('758,846 -> 758,168');
insert into #input (RowData) values('511,976 -> 568,976');
insert into #input (RowData) values('858,536 -> 858,677');
insert into #input (RowData) values('256,238 -> 265,238');
insert into #input (RowData) values('475,919 -> 718,919');
insert into #input (RowData) values('973,912 -> 134,73');
insert into #input (RowData) values('984,159 -> 175,968');
insert into #input (RowData) values('166,641 -> 15,490');
insert into #input (RowData) values('504,798 -> 504,946');
insert into #input (RowData) values('717,796 -> 128,207');
insert into #input (RowData) values('302,713 -> 168,713');
insert into #input (RowData) values('830,964 -> 830,444');
insert into #input (RowData) values('151,288 -> 549,686');
insert into #input (RowData) values('530,908 -> 820,908');
insert into #input (RowData) values('540,394 -> 717,394');
insert into #input (RowData) values('581,614 -> 581,496');
insert into #input (RowData) values('111,593 -> 230,712');
insert into #input (RowData) values('938,884 -> 938,917');
insert into #input (RowData) values('923,71 -> 20,974');
insert into #input (RowData) values('530,677 -> 530,332');
insert into #input (RowData) values('144,723 -> 144,980');
insert into #input (RowData) values('700,376 -> 700,917');
insert into #input (RowData) values('501,95 -> 198,95');
insert into #input (RowData) values('251,900 -> 435,900');
insert into #input (RowData) values('912,931 -> 96,115');
insert into #input (RowData) values('962,140 -> 181,921');
insert into #input (RowData) values('104,244 -> 104,178');
insert into #input (RowData) values('504,865 -> 504,612');
insert into #input (RowData) values('301,284 -> 301,173');
insert into #input (RowData) values('973,980 -> 17,24');
insert into #input (RowData) values('886,166 -> 886,455');
insert into #input (RowData) values('380,150 -> 971,741');
insert into #input (RowData) values('57,405 -> 135,405');
insert into #input (RowData) values('515,569 -> 774,310');
insert into #input (RowData) values('227,233 -> 874,880');
insert into #input (RowData) values('75,33 -> 75,290');
insert into #input (RowData) values('487,434 -> 983,930');
insert into #input (RowData) values('17,279 -> 20,279');
insert into #input (RowData) values('719,838 -> 508,627');
insert into #input (RowData) values('262,254 -> 555,254');
insert into #input (RowData) values('516,626 -> 631,511');
insert into #input (RowData) values('352,305 -> 352,715');
insert into #input (RowData) values('876,827 -> 876,731');
insert into #input (RowData) values('372,85 -> 372,344');
insert into #input (RowData) values('619,773 -> 619,799');
insert into #input (RowData) values('885,627 -> 441,627');
insert into #input (RowData) values('779,731 -> 42,731');
insert into #input (RowData) values('806,756 -> 806,237');
insert into #input (RowData) values('378,540 -> 187,540');
insert into #input (RowData) values('840,296 -> 210,296');
insert into #input (RowData) values('250,234 -> 171,234');
insert into #input (RowData) values('249,100 -> 757,608');
insert into #input (RowData) values('787,23 -> 787,826');
insert into #input (RowData) values('690,175 -> 365,175');
insert into #input (RowData) values('238,166 -> 238,738');
insert into #input (RowData) values('52,350 -> 574,872');
insert into #input (RowData) values('297,518 -> 297,590');
insert into #input (RowData) values('133,263 -> 133,219');
insert into #input (RowData) values('438,955 -> 939,955');
insert into #input (RowData) values('621,500 -> 621,948');
insert into #input (RowData) values('93,39 -> 530,476');
insert into #input (RowData) values('988,866 -> 220,98');
insert into #input (RowData) values('483,30 -> 329,184');
insert into #input (RowData) values('205,937 -> 419,723');
insert into #input (RowData) values('314,910 -> 842,910');
insert into #input (RowData) values('472,944 -> 923,944');
insert into #input (RowData) values('487,700 -> 586,601');
insert into #input (RowData) values('59,17 -> 333,17');
insert into #input (RowData) values('553,307 -> 553,746');
insert into #input (RowData) values('810,37 -> 810,167');
insert into #input (RowData) values('898,662 -> 858,662');
insert into #input (RowData) values('191,837 -> 191,157');
insert into #input (RowData) values('83,950 -> 83,910');
insert into #input (RowData) values('229,513 -> 559,843');
insert into #input (RowData) values('825,192 -> 44,973');
insert into #input (RowData) values('37,80 -> 460,503');
insert into #input (RowData) values('648,357 -> 29,357');
insert into #input (RowData) values('603,592 -> 425,770');
insert into #input (RowData) values('137,141 -> 693,141');
insert into #input (RowData) values('179,69 -> 479,69');
insert into #input (RowData) values('851,164 -> 172,164');
insert into #input (RowData) values('916,143 -> 99,960');
insert into #input (RowData) values('908,20 -> 28,900');
insert into #input (RowData) values('178,404 -> 700,404');
insert into #input (RowData) values('122,43 -> 645,43');
insert into #input (RowData) values('548,495 -> 155,888');
insert into #input (RowData) values('216,725 -> 216,583');
insert into #input (RowData) values('790,97 -> 51,836');
insert into #input (RowData) values('98,214 -> 98,200');
insert into #input (RowData) values('90,464 -> 141,464');
insert into #input (RowData) values('32,905 -> 912,25');
insert into #input (RowData) values('253,743 -> 253,115');
insert into #input (RowData) values('521,826 -> 304,826');
insert into #input (RowData) values('733,392 -> 733,485');
insert into #input (RowData) values('315,95 -> 964,744');
insert into #input (RowData) values('386,749 -> 553,916');
insert into #input (RowData) values('698,985 -> 59,346');
insert into #input (RowData) values('380,969 -> 820,969');
insert into #input (RowData) values('134,641 -> 310,641');
insert into #input (RowData) values('66,899 -> 860,105');
insert into #input (RowData) values('827,304 -> 560,37');
insert into #input (RowData) values('824,213 -> 132,905');
insert into #input (RowData) values('93,138 -> 200,245');
insert into #input (RowData) values('54,450 -> 54,436');
insert into #input (RowData) values('163,276 -> 31,408');
insert into #input (RowData) values('959,333 -> 976,333');
insert into #input (RowData) values('499,129 -> 645,129');
insert into #input (RowData) values('924,321 -> 924,332');
insert into #input (RowData) values('629,166 -> 629,901');
insert into #input (RowData) values('505,769 -> 864,410');
insert into #input (RowData) values('80,360 -> 48,360');
insert into #input (RowData) values('22,971 -> 983,10');
insert into #input (RowData) values('500,87 -> 721,87');
insert into #input (RowData) values('227,737 -> 227,540');
insert into #input (RowData) values('698,177 -> 698,713');
insert into #input (RowData) values('20,106 -> 20,204');
insert into #input (RowData) values('187,176 -> 902,891');
insert into #input (RowData) values('803,806 -> 574,806');
insert into #input (RowData) values('413,785 -> 413,858');
insert into #input (RowData) values('736,728 -> 28,728');
insert into #input (RowData) values('158,870 -> 20,870');
insert into #input (RowData) values('78,475 -> 75,472');
insert into #input (RowData) values('481,434 -> 80,434');
insert into #input (RowData) values('975,208 -> 425,208');
insert into #input (RowData) values('59,639 -> 304,639');
insert into #input (RowData) values('287,919 -> 923,283');
insert into #input (RowData) values('940,933 -> 104,97');
insert into #input (RowData) values('699,429 -> 466,429');
insert into #input (RowData) values('240,988 -> 929,299');
insert into #input (RowData) values('970,873 -> 396,873');
insert into #input (RowData) values('441,585 -> 441,697');
insert into #input (RowData) values('337,259 -> 36,259');
insert into #input (RowData) values('45,759 -> 45,382');
insert into #input (RowData) values('220,468 -> 373,315');
insert into #input (RowData) values('10,262 -> 793,262');
insert into #input (RowData) values('753,268 -> 147,874');
insert into #input (RowData) values('664,560 -> 603,560');
insert into #input (RowData) values('974,81 -> 974,26');
insert into #input (RowData) values('575,331 -> 254,331');
insert into #input (RowData) values('754,378 -> 727,378');
insert into #input (RowData) values('354,394 -> 298,450');
insert into #input (RowData) values('108,814 -> 108,804');
insert into #input (RowData) values('848,375 -> 604,375');
insert into #input (RowData) values('697,530 -> 697,288');
insert into #input (RowData) values('977,54 -> 967,44');
insert into #input (RowData) values('241,754 -> 484,754');
insert into #input (RowData) values('793,745 -> 755,745');
insert into #input (RowData) values('974,415 -> 974,98');
insert into #input (RowData) values('677,367 -> 677,731');
insert into #input (RowData) values('69,744 -> 695,118');
insert into #input (RowData) values('50,39 -> 940,929');
insert into #input (RowData) values('414,721 -> 414,917');
insert into #input (RowData) values('870,587 -> 870,396');
insert into #input (RowData) values('881,759 -> 583,759');
insert into #input (RowData) values('679,798 -> 679,226');
insert into #input (RowData) values('826,917 -> 217,917');
insert into #input (RowData) values('896,919 -> 102,919');
insert into #input (RowData) values('528,881 -> 498,881');
insert into #input (RowData) values('15,89 -> 15,212');
insert into #input (RowData) values('887,280 -> 747,280');
insert into #input (RowData) values('763,303 -> 967,507');
insert into #input (RowData) values('904,964 -> 562,964');
insert into #input (RowData) values('157,752 -> 433,752');
insert into #input (RowData) values('752,199 -> 34,917');
insert into #input (RowData) values('60,970 -> 921,109');
insert into #input (RowData) values('934,434 -> 683,183');
insert into #input (RowData) values('748,427 -> 748,601');
insert into #input (RowData) values('20,47 -> 957,984');
insert into #input (RowData) values('71,691 -> 332,691');
insert into #input (RowData) values('782,637 -> 782,137');
insert into #input (RowData) values('483,623 -> 704,623');
insert into #input (RowData) values('11,965 -> 274,965');
insert into #input (RowData) values('285,172 -> 700,172');
insert into #input (RowData) values('613,845 -> 855,845');
insert into #input (RowData) values('955,296 -> 738,296');
insert into #input (RowData) values('596,750 -> 596,974');
insert into #input (RowData) values('332,851 -> 360,851');
insert into #input (RowData) values('176,388 -> 107,388');
insert into #input (RowData) values('116,328 -> 325,119');
insert into #input (RowData) values('932,588 -> 403,588');
insert into #input (RowData) values('247,420 -> 247,69');
insert into #input (RowData) values('52,965 -> 52,740');
insert into #input (RowData) values('541,579 -> 541,48');
insert into #input (RowData) values('321,530 -> 321,115');
insert into #input (RowData) values('124,33 -> 986,895');
insert into #input (RowData) values('575,950 -> 922,603');
insert into #input (RowData) values('231,814 -> 755,814');
insert into #input (RowData) values('940,445 -> 957,462');
insert into #input (RowData) values('365,743 -> 432,810');
insert into #input (RowData) values('488,286 -> 777,286');
insert into #input (RowData) values('988,905 -> 887,905');
insert into #input (RowData) values('715,846 -> 842,846');
insert into #input (RowData) values('481,894 -> 481,954');
insert into #input (RowData) values('297,868 -> 297,441');
insert into #input (RowData) values('368,928 -> 368,348');
insert into #input (RowData) values('951,981 -> 49,79');
insert into #input (RowData) values('46,743 -> 551,743');
insert into #input (RowData) values('900,241 -> 50,241');
insert into #input (RowData) values('441,942 -> 441,762');
insert into #input (RowData) values('488,58 -> 488,482');
insert into #input (RowData) values('945,187 -> 945,639');
insert into #input (RowData) values('263,779 -> 476,779');
insert into #input (RowData) values('593,290 -> 593,985');
insert into #input (RowData) values('781,498 -> 914,498');
insert into #input (RowData) values('351,557 -> 351,324');
insert into #input (RowData) values('809,966 -> 709,966');
insert into #input (RowData) values('912,545 -> 522,155');
insert into #input (RowData) values('985,681 -> 903,599');
insert into #input (RowData) values('837,881 -> 532,881');
insert into #input (RowData) values('728,485 -> 753,460');
insert into #input (RowData) values('79,680 -> 79,448');
insert into #input (RowData) values('917,769 -> 917,456');
insert into #input (RowData) values('135,845 -> 135,777');
insert into #input (RowData) values('460,922 -> 981,401');
insert into #input (RowData) values('516,830 -> 516,403');
insert into #input (RowData) values('230,419 -> 230,267');
insert into #input (RowData) values('770,297 -> 583,297');
insert into #input (RowData) values('577,782 -> 488,693');
insert into #input (RowData) values('118,728 -> 791,55');
insert into #input (RowData) values('983,192 -> 983,340');
insert into #input (RowData) values('307,252 -> 393,338');
insert into #input (RowData) values('83,345 -> 83,628');
insert into #input (RowData) values('318,461 -> 318,670');
insert into #input (RowData) values('809,385 -> 809,383');
insert into #input (RowData) values('145,124 -> 444,124');
insert into #input (RowData) values('906,892 -> 906,990');
insert into #input (RowData) values('295,22 -> 295,617');
insert into #input (RowData) values('828,312 -> 828,227');
insert into #input (RowData) values('546,132 -> 546,100');
insert into #input (RowData) values('398,750 -> 398,237');
insert into #input (RowData) values('27,770 -> 299,770');
insert into #input (RowData) values('863,517 -> 863,869');
insert into #input (RowData) values('700,806 -> 168,806');
insert into #input (RowData) values('279,262 -> 169,152');
insert into #input (RowData) values('954,285 -> 681,12');
insert into #input (RowData) values('896,102 -> 127,871');
insert into #input (RowData) values('527,532 -> 404,532');
insert into #input (RowData) values('853,397 -> 168,397');
insert into #input (RowData) values('642,273 -> 595,273');
insert into #input (RowData) values('422,123 -> 422,805');
insert into #input (RowData) values('879,789 -> 879,177');
insert into #input (RowData) values('233,171 -> 917,855');
insert into #input (RowData) values('82,148 -> 559,148');
insert into #input (RowData) values('95,969 -> 95,65');
insert into #input (RowData) values('876,779 -> 876,257');
insert into #input (RowData) values('753,35 -> 51,737');
insert into #input (RowData) values('421,756 -> 735,756');
insert into #input (RowData) values('637,602 -> 637,886');
insert into #input (RowData) values('275,689 -> 275,360');
insert into #input (RowData) values('714,77 -> 714,353');
insert into #input (RowData) values('617,645 -> 764,645');
insert into #input (RowData) values('131,702 -> 689,702');
insert into #input (RowData) values('752,795 -> 524,567');
insert into #input (RowData) values('606,716 -> 632,716');
insert into #input (RowData) values('261,700 -> 261,104');
insert into #input (RowData) values('196,894 -> 377,713');
insert into #input (RowData) values('812,626 -> 812,76');
insert into #input (RowData) values('739,368 -> 360,747');
insert into #input (RowData) values('976,646 -> 976,981');
insert into #input (RowData) values('459,948 -> 500,948');
insert into #input (RowData) values('154,669 -> 179,644');
insert into #input (RowData) values('410,896 -> 661,645');
insert into #input (RowData) values('312,187 -> 248,123');
insert into #input (RowData) values('507,655 -> 513,655');
insert into #input (RowData) values('649,726 -> 649,447');
insert into #input (RowData) values('874,19 -> 24,19');
insert into #input (RowData) values('951,64 -> 57,958');
insert into #input (RowData) values('29,60 -> 533,60');
insert into #input (RowData) values('559,262 -> 941,644');
insert into #input (RowData) values('665,319 -> 531,185');
insert into #input (RowData) values('835,601 -> 918,601');
insert into #input (RowData) values('269,556 -> 871,556');
insert into #input (RowData) values('410,708 -> 410,163');
insert into #input (RowData) values('271,105 -> 860,105');
insert into #input (RowData) values('143,427 -> 475,95');
insert into #input (RowData) values('716,656 -> 716,270');
insert into #input (RowData) values('111,771 -> 822,60');
insert into #input (RowData) values('170,775 -> 233,775');
insert into #input (RowData) values('730,588 -> 730,106');
insert into #input (RowData) values('592,161 -> 901,470');
insert into #input (RowData) values('486,802 -> 289,802');
insert into #input (RowData) values('113,770 -> 726,157');
insert into #input (RowData) values('127,98 -> 825,796');
insert into #input (RowData) values('392,957 -> 794,957');
insert into #input (RowData) values('529,793 -> 529,117');
insert into #input (RowData) values('347,196 -> 347,310');
insert into #input (RowData) values('893,613 -> 360,80');
insert into #input (RowData) values('961,362 -> 961,399');
insert into #input (RowData) values('577,52 -> 577,566');
insert into #input (RowData) values('792,578 -> 792,622');
insert into #input (RowData) values('35,883 -> 35,395');
insert into #input (RowData) values('499,779 -> 499,752');
insert into #input (RowData) values('921,359 -> 921,90');
insert into #input (RowData) values('557,224 -> 290,224');
insert into #input (RowData) values('863,190 -> 874,190');
insert into #input (RowData) values('100,190 -> 100,519');
insert into #input (RowData) values('909,38 -> 33,914');
insert into #input (RowData) values('44,421 -> 98,421');
insert into #input (RowData) values('731,787 -> 731,462');
insert into #input (RowData) values('722,28 -> 722,685');
insert into #input (RowData) values('913,538 -> 274,538');
insert into #input (RowData) values('149,648 -> 149,186');
insert into #input (RowData) values('302,594 -> 521,594');
insert into #input (RowData) values('927,333 -> 546,714');
insert into #input (RowData) values('503,42 -> 333,42');
insert into #input (RowData) values('474,260 -> 835,621');
insert into #input (RowData) values('825,363 -> 825,188');
insert into #input (RowData) values('335,140 -> 227,32');
insert into #input (RowData) values('914,613 -> 914,15');
insert into #input (RowData) values('955,734 -> 398,734');
insert into #input (RowData) values('506,913 -> 506,232');
insert into #input (RowData) values('612,271 -> 612,881');
insert into #input (RowData) values('155,856 -> 282,856');
insert into #input (RowData) values('207,820 -> 898,129');
insert into #input (RowData) values('329,463 -> 475,463');
insert into #input (RowData) values('371,719 -> 371,737');
insert into #input (RowData) values('103,503 -> 103,722');
insert into #input (RowData) values('846,779 -> 360,293');
insert into #input (RowData) values('597,247 -> 253,247');
insert into #input (RowData) values('305,912 -> 305,960');
insert into #input (RowData) values('283,277 -> 283,358');
insert into #input (RowData) values('369,327 -> 418,327');
insert into #input (RowData) values('107,190 -> 107,269');
insert into #input (RowData) values('469,247 -> 918,247');
insert into #input (RowData) values('944,213 -> 990,213');
insert into #input (RowData) values('930,158 -> 594,158');
insert into #input (RowData) values('459,844 -> 459,519');
insert into #input (RowData) values('493,387 -> 107,387');
insert into #input (RowData) values('514,173 -> 669,328');
insert into #input (RowData) values('818,876 -> 73,131');
insert into #input (RowData) values('405,783 -> 405,54');
insert into #input (RowData) values('583,151 -> 583,654');
insert into #input (RowData) values('211,462 -> 211,938');
insert into #input (RowData) values('639,224 -> 639,728');
insert into #input (RowData) values('561,33 -> 561,719');
insert into #input (RowData) values('607,244 -> 47,244');
insert into #input (RowData) values('772,61 -> 772,795');
insert into #input (RowData) values('777,920 -> 63,206');
insert into #input (RowData) values('121,281 -> 90,281');
insert into #input (RowData) values('668,99 -> 893,99');
insert into #input (RowData) values('352,620 -> 652,620');
insert into #input (RowData) values('589,50 -> 547,50');
insert into #input (RowData) values('845,252 -> 845,974');
insert into #input (RowData) values('666,870 -> 94,870');
insert into #input (RowData) values('724,524 -> 344,904');
insert into #input (RowData) values('569,40 -> 482,40');
insert into #input (RowData) values('224,619 -> 741,619');
insert into #input (RowData) values('935,110 -> 143,902');
insert into #input (RowData) values('107,37 -> 906,836');
insert into #input (RowData) values('308,298 -> 821,298');
insert into #input (RowData) values('983,619 -> 868,734');
insert into #input (RowData) values('659,166 -> 497,328');
insert into #input (RowData) values('60,423 -> 60,507');
insert into #input (RowData) values('483,283 -> 90,283');
insert into #input (RowData) values('568,309 -> 568,873');
insert into #input (RowData) values('262,461 -> 890,461');
insert into #input (RowData) values('328,633 -> 94,867');
insert into #input (RowData) values('892,195 -> 177,910');
insert into #input (RowData) values('310,874 -> 915,269');
insert into #input (RowData) values('647,54 -> 531,54');
insert into #input (RowData) values('749,523 -> 408,864');
insert into #input (RowData) values('597,882 -> 857,882');
insert into #input (RowData) values('756,498 -> 468,498');
insert into #input (RowData) values('671,248 -> 671,510');
insert into #input (RowData) values('676,855 -> 130,309');
insert into #input (RowData) values('46,18 -> 659,18');
insert into #input (RowData) values('144,164 -> 87,221');
insert into #input (RowData) values('412,774 -> 412,930');
insert into #input (RowData) values('67,368 -> 745,368');
insert into #input (RowData) values('246,704 -> 619,331');
insert into #input (RowData) values('714,113 -> 159,113');
insert into #input (RowData) values('203,109 -> 203,641');
insert into #input (RowData) values('418,708 -> 110,708');
insert into #input (RowData) values('619,546 -> 619,531');
insert into #input (RowData) values('617,957 -> 545,957');
insert into #input (RowData) values('630,423 -> 630,909');
insert into #input (RowData) values('584,379 -> 679,474');
insert into #input (RowData) values('572,918 -> 572,16');
insert into #input (RowData) values('101,712 -> 755,58');
insert into #input (RowData) values('167,317 -> 912,317');
insert into #input (RowData) values('836,130 -> 570,130');
insert into #input (RowData) values('759,847 -> 523,847');
insert into #input (RowData) values('901,40 -> 901,479');
insert into #input (RowData) values('908,157 -> 908,558');
insert into #input (RowData) values('351,252 -> 280,181');
insert into #input (RowData) values('648,730 -> 253,730');
insert into #input (RowData) values('330,984 -> 110,984');
insert into #input (RowData) values('717,552 -> 746,581');
insert into #input (RowData) values('206,831 -> 904,133');
insert into #input (RowData) values('684,232 -> 684,20');
insert into #input (RowData) values('889,73 -> 155,73');
insert into #input (RowData) values('896,728 -> 896,589');
insert into #input (RowData) values('55,983 -> 988,50');
insert into #input (RowData) values('342,746 -> 342,617');
insert into #input (RowData) values('138,683 -> 795,26');
insert into #input (RowData) values('968,226 -> 787,226');
insert into #input (RowData) values('311,713 -> 355,713');
insert into #input (RowData) values('201,789 -> 201,401');
insert into #input (RowData) values('909,623 -> 205,623');
insert into #input (RowData) values('540,130 -> 540,722');
insert into #input (RowData) values('695,511 -> 191,511');
insert into #input (RowData) values('221,320 -> 221,68');
insert into #input (RowData) values('75,118 -> 599,642');
insert into #input (RowData) values('982,977 -> 30,25');
insert into #input (RowData) values('534,598 -> 720,784');
insert into #input (RowData) values('355,579 -> 13,921');
insert into #input (RowData) values('137,516 -> 137,665');
insert into #input (RowData) values('510,244 -> 510,392');
insert into #input (RowData) values('845,52 -> 327,570');
insert into #input (RowData) values('167,100 -> 909,100');
insert into #input (RowData) values('573,133 -> 34,672');
insert into #input (RowData) values('371,341 -> 371,823');
insert into #input (RowData) values('959,981 -> 20,42');
insert into #input (RowData) values('143,793 -> 143,134');
insert into #input (RowData) values('815,798 -> 914,897');
insert into #input (RowData) values('286,212 -> 188,114');
insert into #input (RowData) values('28,987 -> 985,30');
insert into #input (RowData) values('652,108 -> 652,540');
insert into #input (RowData) values('978,565 -> 507,94');
insert into #input (RowData) values('817,166 -> 402,166');
insert into #input (RowData) values('250,723 -> 128,845');
insert into #input (RowData) values('676,274 -> 53,897');
insert into #input (RowData) values('981,985 -> 12,16');
insert into #input (RowData) values('682,195 -> 270,195');
insert into #input (RowData) values('409,113 -> 114,113');
insert into #input (RowData) values('585,83 -> 585,514');
insert into #input (RowData) values('897,978 -> 569,650');
insert into #input (RowData) values('158,420 -> 158,709');
insert into #input (RowData) values('603,335 -> 966,698');
insert into #input (RowData) values('484,53 -> 972,541');
insert into #input (RowData) values('149,128 -> 149,329');
insert into #input (RowData) values('555,926 -> 555,393');
insert into #input (RowData) values('143,849 -> 614,378');
insert into #input (RowData) values('816,79 -> 507,79');
insert into #input (RowData) values('525,502 -> 812,502');
insert into #input (RowData) values('736,509 -> 736,579');
insert into #input (RowData) values('612,179 -> 629,179');
insert into #input (RowData) values('821,70 -> 821,566');
insert into #input (RowData) values('665,90 -> 416,90');
insert into #input (RowData) values('63,80 -> 837,854');
insert into #input (RowData) values('151,873 -> 890,134');
insert into #input (RowData) values('698,204 -> 698,973');
insert into #input (RowData) values('936,693 -> 612,369');
insert into #input (RowData) values('369,628 -> 947,50');
insert into #input (RowData) values('308,407 -> 308,590');
insert into #input (RowData) values('367,156 -> 963,752');
insert into #input (RowData) values('949,943 -> 536,530');
insert into #input (RowData) values('589,553 -> 256,886');
insert into #input (RowData) values('348,171 -> 348,759');
insert into #input (RowData) values('546,488 -> 546,585');
insert into #input (RowData) values('351,486 -> 779,58');
insert into #input (RowData) values('952,45 -> 33,964');
insert into #input (RowData) values('187,896 -> 187,100');
insert into #input (RowData) values('725,679 -> 725,486');
insert into #input (RowData) values('756,147 -> 264,639');
insert into #input (RowData) values('281,205 -> 281,764');
insert into #input (RowData) values('630,221 -> 73,221');
insert into #input (RowData) values('919,953 -> 775,953');
insert into #input (RowData) values('552,821 -> 925,821');
insert into #input (RowData) values('294,854 -> 922,226');
insert into #input (RowData) values('772,642 -> 961,831');
insert into #input (RowData) values('705,159 -> 308,556');
insert into #input (RowData) values('107,983 -> 393,697');
insert into #input (RowData) values('403,277 -> 403,802');
insert into #input (RowData) values('719,824 -> 719,187');
insert into #input (RowData) values('947,956 -> 253,956');
insert into #input (RowData) values('453,135 -> 952,135');
insert into #input (RowData) values('905,491 -> 574,160');
insert into #input (RowData) values('498,225 -> 764,491');
insert into #input (RowData) values('741,111 -> 597,111');
insert into #input (RowData) values('881,130 -> 881,668');
insert into #input (RowData) values('308,616 -> 866,616');
insert into #input (RowData) values('172,434 -> 855,434');
insert into #input (RowData) values('218,412 -> 218,861');
insert into #input (RowData) values('293,318 -> 293,770');
insert into #input (RowData) values('712,513 -> 679,513');
insert into #input (RowData) values('100,586 -> 434,920');
insert into #input (RowData) values('338,407 -> 176,407');
insert into #input (RowData) values('481,534 -> 715,768');
insert into #input (RowData) values('805,127 -> 216,127');
insert into #input (RowData) values('406,425 -> 322,425');
insert into #input (RowData) values('154,769 -> 823,100');
insert into #input (RowData) values('813,508 -> 159,508');
insert into #input (RowData) values('286,637 -> 286,24');
insert into #input (RowData) values('55,836 -> 665,836');
insert into #input (RowData) values('571,857 -> 459,969');
insert into #input (RowData) values('414,977 -> 414,604');
insert into #input (RowData) values('133,884 -> 972,45');
insert into #input (RowData) values('383,522 -> 383,141');
insert into #input (RowData) values('889,14 -> 62,841');
insert into #input (RowData) values('122,49 -> 43,49');
insert into #input (RowData) values('544,846 -> 544,76');
insert into #input (RowData) values('948,19 -> 62,905');
insert into #input (RowData) values('798,577 -> 833,542');
insert into #input (RowData) values('973,267 -> 751,45');
insert into #input (RowData) values('620,648 -> 620,419');
insert into #input (RowData) values('102,813 -> 633,813');
insert into #input (RowData) values('255,263 -> 826,263');
insert into #input (RowData) values('231,394 -> 231,811');


select
	AutoID
	,left([StartPoint],charindex(',',[StartPoint])-1) as [StartPointX]
	,substring([StartPoint],charindex(',',[StartPoint])+1,99) as [StartPointY]
	,left([EndPoint],charindex(',',[EndPoint])-1) as [EndPointX]
	,substring([EndPoint],charindex(',',[EndPoint])+1,99) as [EndPointY]
into #data
from
	(select
		*
		,trim(left([RowData],PATINDEX('% -> %',[RowData]))) as [StartPoint]
		,trim(substring([RowData],PATINDEX('% -> %',[RowData])+4,99)) as [EndPoint]
	from #input) src;

--create output table
create table #output (
	[X] int,
	[Y] int,
	[Counts] int not null default 0
);

declare @maxx int;
declare @maxy int;
declare @curx int = 0;
declare @cury int = 0;

--find maximum x value
select
	@maxx = max(X)
from
	(select max(StartPointX) X from #data
	union all
	select max(EndPointX) X from #data) src;

--find maximum y value
select
	@maxy = max(Y)
from
	(select max(StartPointY) Y from #data
	union all
	select max(EndPointY) Y from #data) src;

--fill output table with coördinates
while (@cury <= @maxy)
begin
	while (@curx <= @maxx)
	begin
		insert into #output (X,Y) values (@curx,@cury);
		set @curx = @curx + 1;
	end
	set @cury = @cury + 1;
	set @curx = 0;
end;

declare @startx int;
declare @endx int;
declare @starty int;
declare @endy int;

--create horizontal lines
declare cur_x cursor for
select
	StartPointX
	,StartPointY
	,EndPointY
from #data
where
	StartPointX = EndPointX;

open cur_x;

fetch next from cur_x into @startx, @starty, @endy;

while @@FETCH_STATUS = 0
begin
	set @curx = @startx;
	if @starty < @endy
	begin
		set @cury = @starty;
	end
	else
	begin
		set @cury = @endy;
		set @endy = @starty;
	end
	update #output set Counts = Counts + 1 where x = @curx and y between @cury and @endy;
	fetch next from cur_x into @startx, @starty, @endy;
end;

close cur_x;
deallocate cur_x;

--create vertical lines
declare cur_y cursor for
select
	StartPointY
	,StartPointX
	,EndPointX
from #data
where
	StartPointY = EndPointY;

open cur_y;

fetch next from cur_y into @starty, @startX, @endx;

while @@FETCH_STATUS = 0
begin
	set @cury = @starty;
	if @startx < @endx
	begin
		set @curx = @startx;
	end
	else
	begin
		set @curx = @endx;
		set @endx = @startx;
	end
	update #output set Counts = Counts + 1 where x between @curx and @endx and y = @cury;
	fetch next from cur_y into @starty, @startX, @endx;
end;

close cur_y;
deallocate cur_y;

select count(*) from #output where Counts >= 2;

drop table #input;
drop table #output;
drop table #data;