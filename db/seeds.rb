#親階層
elementary            =Category.create(name:"小学生")
entrance_junior       =Category.create(name:"中学受験")
junior_high           =Category.create(name:"中学生一般")
entrance_high         =Category.create(name:"高校受験")
highschool            =Category.create(name:"高校生一般")
entarance_exam        =Category.create(name:"大学受験")

#子階層小学生
elementary_1          =elementary.children.create(name:"算数")
elementary_2          =elementary.children.create(name:"国語")
elementary_3          =elementary.children.create(name:"理科")
elementary_4          =elementary.children.create(name:"社会")
elementary_5          =elementary.children.create(name:"英語")

#子階層中学受験
entrance_junior_1     =entrance_junior.children.create(name:"算数")
entrance_junior_2     =entrance_junior.children.create(name:"算数")
entrance_junior_3     =entrance_junior.children.create(name:"算数")
entrance_junior_4     =entrance_junior.children.create(name:"算数")

#子階層中学生
junior_high_1         =junior_high.children.create(name:"数学")
junior_high_2         =junior_high.children.create(name:"英語")
junior_high_3         =junior_high.children.create(name:"国語")
junior_high_4         =junior_high.children.create(name:"理科")
junior_high_5         =junior_high.children.create(name:"社会")

#子階層高校受験
entrance_high_1      =entrance_high.children.create(name:"数学")
entrance_high_2      =entrance_high.children.create(name:"英語")
entrance_high_3      =entrance_high.children.create(name:"国語")
entrance_high_4      =entrance_high.children.create(name:"社会")
entrance_high_5      =entrance_high.children.create(name:"理科")

#子階層大学受験
entarance_exam_1      =entarance_exam.children.create(name:"英語")
entarance_exam_2      =entarance_exam.children.create(name:"数学")
entarance_exam_3      =entarance_exam.children.create(name:"国語")
entarance_exam_4      =entarance_exam.children.create(name:"理科")
entarance_exam_5      =entarance_exam.children.create(name:"社会")

#孫階層大学受験
entarance_exam_1.children.create([{name: "国立文系"},{name: "私立文系"},{name: "国立理系"},{name: "私立理系"},{name: "その他"}])

entarance_exam_2.children.create([{name: "数I"},{name: "数II"},{name: "数A"},{name: "数B"},{name:"数Ⅲ"},{name: "その他"}])

entarance_exam_3.children.create([{name: "現代文"},{name: "古典"},{name: "漢文"},{name: "その他"}])

entarance_exam_4.children.create([{name: "物理"},{name: "化学"},{name: "生物"},{name: "地学"}])
entarance_exam_5.children.create([{name: "日本史"},{name: "世界史"},{name: "地理"},{name: "倫理・政経"},{name: "現代社会"}])
