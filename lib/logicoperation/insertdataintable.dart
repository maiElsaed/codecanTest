import 'sqlflite2.dart';
class insert{
   SqlDb obj=SqlDb();
  void inserttables()async{

     print("hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh");
    int x1=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES(1,'u','إذا جُرح إصبعك، ماذا ستفعل','null',0)");
    print(x1);
    int x2=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (2,'u','إذا ضاعت منك كورة واحد من اصحابك أو صاحبك ماذا ستفعل','nulls',0)");

    print(x2);
    int x3=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (3,'u','إذا تم أرسالك لشراء خبز أو شيء ما، وقال لك البقال إن الخبز ُقد نفذ أو أنه لا يملك تلك السلعة، ماذا ستفعل','nulls',0)");

    print(x3);
    int x4=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (4,'u','إذا بدأ شخص أو فتاة أصغر منك بكثير في الجدل أو بدأت تتشاجر ماذا ستفعل','nulls',0)");

    print(x4);
    int x5=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (5,'u','إذا رأيت قطارًا يقترب بسرعة وكانتَ السكة مقطوعة ماذا ستفعل','nulls',0)");

    print(x5);
    int x6=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (6,'u','لماذا البيت المبني من الطوب أفضلَ من البيت المبني من الخشب','nulls',0)");

    print(x6);
    int x7=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (7,'u','لماذا يجب أن تكون هناك قوانين','nulls',0)");

    print(x7);
    int x8=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (8,'u','لماذا يجب إنقاذ النساء و الأطفال في البداية عند غرق المركب','nulls',0)");

    print(x8);
    int x9=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (9,'u','لماذا يجب على الفرد فحص نظره قبل الدخول إلى المدرسة','nulls',0)");

    print(x9);
    int x10=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (10,'u',' لماذا من الأفضل عموما ً التبرع بالأموال للجمعيات الخيرية بدلً من إعطائها للشحاتين في الشوارع','nulls',0)");

    print(x10);
    int x11=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (11,'u','لماذا يجب إجراء اختبار لأولئك الراغبين في العمل في الحكومة','null',0)");

    print(x11);
    int x12=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (12,'u','لماذا يتم استخدام القطن في صناعة الأقمشة','null',0)");

    print(x12);
    int x13=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (13,'u','لماذا يجب وجود محامي ووكيل نيابة في معظم الجلسات القضائية','null',0)");

    print(x13);
    int x14=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (14,'u',' لماذا يجب على الفرد الحفاظ على وعده','null',0)");

    print(x14);
    int y1=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (1,'i','ما اِسْم هَذَا اْْلاِصْبَع','null',0)");
    print(y1);
    int y2=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (2,'i','أي حيوان يمْكِننَا الحصول على اللبنُ منه','null',0)");

    print(y2);
    int y3=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (3,'i','ما الذي يجب علينا فعله ليغلي الماء','null',0)");

    print(y3);
    int y4=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (4,'i','من أين يمكن شراء السكر','null',0)");

    print(y4);
    int y5=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (5,'i','ما هو لون الذهب','null',0)");

    print(y5);
    int y6=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (6,'i','الشَّمْس تطْلع مِن اي اِتِجَاه','null',0)");

    print(y6);
    int y7=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (7,'i','ما هي وظيفة المعده','null',0)");


    print(y7);
    int y8=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (8,'i','متى  يتساقط المطر في بلدنا','null',0)");


    print(y8);
    int y9=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (9,'i','ما هي دور المحاكم','null',0)");

    print(y9);
    int y10=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (10,'i','من أي شيء يتكون الصوف','null',0)");

    print(y10);
    int y11=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (11,'i','ما هوَ اْلبَريد المسجل','null',0)");

    print(y11);
    int y12=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (12,'i','من أي شيء يتم صنع السكر','null',0)");

    print(y12);
    int y13=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (13,'i','أين يقع السد العالي','null',0)");

    print(y13);
    int y14=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (14,'i','أين تقع مدينة دمشق','null',0)");

    print(y14);
    int y15=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (15,'i','من أي شيء يتم صنع الزيت','null',0)");

    print(y15);
    int y16=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (16,'i','بأي شيئ نقيس درجة الحرارة','null',0)");

    print(y16);
    int y17=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (17,'i','ما هو أول شهر في السنة','null',0)");

    print(y17);
    int y18=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (18,'i','ما هي أعلى رتبة في الجيش','null',0)");

    print(y18);
    int y19=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (19,'i','ما هي وظيفة مجلس الأمن','null',0)");

    print(y19);
     int y20=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (20,'i','لماذا الزيت بيطفوا فوق الماء','null',0)");

     print(y20);
    int y21=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (21,'i','2',1,'كم أذن لديك')");
    print(y20);
    int y22=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (22,'i','4',1,'كم عدد الأرجل للكلب')");
    print(y22);

    int y23=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (23,'i','25',1,'كم عدد القروش في الربع جنيه')");

    print(y23);
    int y24=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (24,'i','7',1,'كم عدد الأيام في الأسبوع')");

    print(y24);
    int y25=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (25,'i','100',1,'كم عدد سنتيمتر في المتر')");

    print(y25);
    int y26=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (26,'i','12',1,'كم عدد الشهور في السنة')");

    print(y26);
    int y27=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (27,'i','494',1,'ما هي المسافة بين القاهرة و اْلاسكندرية')");

    print(y27);
    int y28=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (28,'i','37',1,'ما هي درجة حرارة جسم اْلانسان')");

    print(y28);
    int y29=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (29,'i','365',1,'كم عدد الأيام في السنة')");

    print(y29);

     int y30=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (30,'i','3',1,'كم عدد الألوان في علم جمهورية مصرُ العربية')");
     print(y30);
     ///////////////////////////////////////////////////////////////////////////////////calculation
     // int c1=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (1,'c','ما عدد هذه المكعبات',1,'9')");
     // print(c1);
     int c1=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (1,'c','9',1,'ما عدد هذه المكعبات')");
     print(c1);
     int c2=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (2,'c','2',1,'إذا قطعت البرتقالة بالنصف، كم عدد القطع التي ستحصل عليها')");
     print(c2);
     int c3=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (3,'c','6',1,'أحمد كان معه 4 جنيهات، وأعطته أمه جنيهان إضافيان. كم مبلغ المال الذي يمتلكه الآن')");
     print(c3);
     int c4=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (4,'c','14',1,'كان مع حامد 8 بليات واشترى 6 بليات إضافيه. كم عدد البليات التي يمتلكها الآن')");
     print(c4);
     int c5=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (5,'c','7',1,'كان لدى البقال 12 رغيفًا وباع 5 منهم. كم عدد الأرغفة التي تبقت لديه')");
     print(c5);
     int c6=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (6,'c','30',1,'سعر القلم الواحد 10 قروش، فكم يكون سعر الأقلام الثلاثة')");
     print(c6);
     int c7=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (7,'c','14',1,'الفكهاني لدَ ْيه 25  بطيخه وباع 11 منهم كم بطيخه تَْبقَى لدَ ْيه')");
     print(c7);
     int c8=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (8,'c','18',1,'أربعة أولاد كانوا يملكون 72 بليه وقسموها بالتساوي كم عدد البليات التي يمتلكها كل طفل')");
     print(c8);
     int c9=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (9,'c','6',1,'كسب العامل 48 جنيًها، وكان يكسب 8 جنيهات في اليوم. فكم يوم اشتغله الرجل')");
     print(c9);
     int c10=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (10,'c','2',1,'اشترى التاجر 3 علب أقلام وكل علبة تساوي 100 قرش . كم المبلغ المتبقي لديه من 5 جنيهات')");
     print(c10);
     int c11=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (11,'c','54',1,'عدد 36 يساوي ثلثين ماذا من االاعداد')");
     print(c11);
     int c12=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (14,'c','8',1,'إذا كان سعر 3 كراسات هو جنيه واحد، فكم يكون سعر 24 كراسة')");
     print(c12);

     // int c13=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (15,'c','اسحب تلك المكعبات داخل المربع واحتفظ بأربعة منها فقط في الخارج','null',1)");
     // print(c13);
     // int c14=await obj.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (16,'c','.اسحب تلك المكعبات داخل المربع واحتفظ بسبعة منها في الخارج','null',1)");
     // print(c14);
     int c15=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (15,'c','35',1,'إذا فرضنا أن البريد يأخذ 20 قر ًشا على كل ربع كيلو جرام في الوزن الأول للبضاعة و 5 قروش على كل ربع كيلو جرام بعد ذلك، فكم يكون مجموع رسوم البريد على 2 كيلو جرام ')");
     print(c15);
     int c16=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (16,'c','8',1,'بدأ سمير وعادل مباراة في الرماية، وكان مع كل واحد منهم 27 كرة . اتفقوا على أن في نهاية كل محاولة، الخاسر سيدفع للفائز ثلث الكرات التي معه. فاستطاع سمير الفوز بالمحاولات الثلاث الأولى فكم كرة سيكون مع عادل في بداية المحاولة الرابعة')");
     print(c16);
     print("kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
     /////////////////////////////////////////////similar
     int s1=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (1,'s','null',1,'ما هو الشبه بين البرتقال والموز')");
     print(s1);
     int s2=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (2,'s','null',1,'ما هو الشبه بين القط والفأر')");
     print(s2);
     int s3=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (3,'s','null',1,'ما هو الشبه بين الفحم والخشب')");
     print(s3);
     int s4=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (4,'s','null',1,'ما هو الشبه بين الطبلة والزمارة')");
     print(s4);
     int s5=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (5,'s','null',1,'ما هو الشبه بين الصوف والقطن')");
     print(s5);
     int s6=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (6,'s','null',1,'ما هو الشبه بين المقص والحلة')");
     print(s6);
     int s7=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (7,'s','null',1,'ما هو الشبه بين الجبل والترعة')");
     print(s7);
     int s8=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (8,'s','null',1,'ما هو الشبه بين الهواء والماء')");
     print(s8);
     int s9=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (9,'s','null',1,'ما هو الشبه بين العددين 49 و 81')");
     print(s9);
     int s10=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (10,'s','null',1,'ما هو الشبه بين الأول والأخير')");
     print(s10);
     int s11=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (11,'s','null',1,'ما هو الشبه بين الحرية والعدل')");
     print(s11);
     int s12=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (12,'s','null',1,'ما هو الشبه بين البدله والبالطوا')");
     print(s12);
     int p1=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (1,'p','null',1,' الليمون حادق ، لكن السكر')");
     print(p1);
     int p2=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (2,'p','null',1,' أنت بتمشي برجليك ، لكن بترمي الحاجة بـ')");
     print(p2);
     int p3=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (3,'p','null',1,' الأولاد لما يكبروا يبقوا رجالة، والبنات يبقوا')");
     print(p3);
     int p4=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (4,'p','null',1,' السكينة وحتة القزاز الاثنين')");
     print(p4);
     int v1=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (1,'v','null',1,'ما هو البلح؟')");
     int v2=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (2,'v','null',1,'ما هو المنديل؟')");
     int v3=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (3,'v','null',1,'ما هو الحصان؟')");
     int v4=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (4,'v','null',1,'ما هي العجلة؟')");
     int v5=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (5,'v','null',1,'ما هو الميزان؟')");
     int v6=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (6,'v','null',2,'ما هو الجواب؟')");
     int v7=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (7,'v','null',2,'ما هو الدكان؟')");
     int v8=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (8,'v','null',2,'ماذا يعني يعيط؟')");
     int v9=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (9,'v','null',2,'ماذا يعني علم؟')");
     int v10=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (10,'v','null',2,'ماذا يعني صحيفة؟')");
     int v11=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (11,'v','null',2,'ماذا يعني حشرات؟')");
     int v12=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (12,'v','null',2,'ماذا يعني جندي؟')");
     int v13=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (13,'v','null',2,'ماذا يعني حظيرة؟')");
     int v14=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (14,'v','null',2,'ماذا يعني سيارة؟')");
     int v15=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (15,'v','null',2,'ماذا يعني طريق؟')");
     int v16=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (16,'v','null',2,'ماذا يعني مريض؟')");
     int v17=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (17,'v','null',2,'ماذا يعني اسبوع؟')");
     int v18=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (18,'v','null',2,'ماذا يعني مدينة؟')");
     int v19=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (19,'v','null',2,'ماذا يعني نهر؟')");
     int v20=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (20,'v','null',2,'ماذا يعني مساء؟')");
     int v21=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (21,'v','null',2,'ماذا يعني فيضان؟')");
     int v22=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (22,'v','null',2,'ماذا يعني ظلام؟')");
     int v23=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (23,'v','null',2,'ماذا يعني فريق؟')");
     int v24=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (24,'v','null',2,'ماذا يعني باكر؟')");
     int v25=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (25,'v','null',2,'ماذا يعني شاطئ؟')");
     int v26=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (26,'v','null',2,'ماذا يعني جنوب؟')");
     int v27=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (27,'v','null',2,'ماذا يعني القارب؟')");
     int v28=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (28,'v','null',2,'ماذا يعني قنطرة؟')");
     int v29=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (29,'v','null',2,'ماذا يعني سباق؟')");
     int v30=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (30,'v','null',2,'ماذا يعني شرس؟')");
     int v31=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (31,'v','null',2,'ماذا يعني جاسوس؟')");
     int v32=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (32,'v','null',2,'ماذا يعني قرية ؟')");
     int v33=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (33,'v','null',2,'ماذا يعني اختلاس؟')");
     int v34=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (34,'v','null',2,'ماذا يعني حكومة؟')");
     int v35=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (35,'v','null',2,'ماذا يعني مؤتمر؟')");
     int v36=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (36,'v','null',2,'ماذا يعني استعراض؟')");
     int v37=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (37,'v','null',2,'ماذا يعني خلود؟')");
     int v38=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (38,'v','null',2,'ماذا يعني تصنيع؟')");
     int v39=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (39,'v','null',2,'ماذا يعني مكافحة؟')");
     int v40=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (40,'v','null',2,'ماذا يعني جدار؟')");
     int r1=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (1,'r','null',3,'ثلاثة ثمانية ستة')");
     int r2=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (2,'r','null',4,'ثلاثة أربعة واحد سبعة')");
     int r3=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (3,'r','null',5,'ثمانية أربعة اثنان ثلاثة تسعة')");
     int r4=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (4,'r','null',6,'ثلاثة ثمانية تسعة واحد سبعة أربعة')");
     int r5=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (5,'r','null',7,'خمسة واحد سبعة أربعة اثنان ثلاثة ثمانية')");
     int r6=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (6,'r','null',8,'واحد ستة أربعة خمسة تسعة سبعة ستة ثلاثة')");
     int r7=await obj.inserData("INSERT INTO 'questiondata'('id','department','answer','grade','question') VALUES (7,'r','null',9,'خمسة ثلاثة ثمانية سبعة واحد اثنان أربعة ستة تسعة')");


  }
}