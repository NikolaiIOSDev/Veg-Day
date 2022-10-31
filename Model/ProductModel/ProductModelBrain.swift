//
//  ProductModelBrain.swift
//  Veg Day
//
//  Created by Николай Федоров on 16.05.2022.
//

import Foundation
import UIKit

struct ProductModelBrain {
    var allProduct=[ProductModel]() // Создаем свойство, который имеет тип данных ProductModel
    
    mutating func addProduct(){
        
        // Создаются объекты добавок
        let prodOne=ProductModel(nameProduct: "Садовая спаржа", info: "Богата спаржа клетчаткой, которая оказывает благотворное влияние на деятельность желудочно-кишечного тракта, нормализует перистальтику кишечника. В состав спаржи входит аспарагин, который оказывает сосудорасширяющее действие, тем самым снижая кровяное давление, защищает сердечную мышцу. Спаржа является природным диуретиком, мягко очищая почки, ей также приписывают свойство выводить камни из почек, хотя научно этот факт не доказан. Спаржа имеет антивирусное и противогрибковое свойство, выступает в роли антиоксиданта, обладает желчегонным эффектом. Фолиевая кислота необходима в период беременности и кормления грудью, поэтому спаржу смело можно включать в меню будущим и молодым мамочкам. Применяют спаржу не только как продукт питания, но и для лечения подагры, ревматизма, отёков и нервных расстройств. Издавна спаржу считают мощным афродизиаком, повышающим женское либидо и усиливающим мужскую потенцию. Употребление спаржи оказывает позитивное влияние на состояние кожи и волос.", vitamin: "А, В1, В2, В5, В6, С, Е, Н, РР", nameImage: #imageLiteral(resourceName: "asparagusVegetable"), calor: "20 ккал.")
        
        let prodTwo=ProductModel(nameProduct: "Тофу", info: "Тофу достаточно низкокалорийный – содержит всего 76 ккал, особенно богат кальцием, также включает железо, магний, селен, укрепляющий иммунную систему, витамины Е и F, витамины группы В, в том числе фолиевую кислоту, необходимую для процесса кроветворения. Еще одно из примечательных свойств тофу – способность выводить холестерин из организма.", vitamin: "E, K, B1, B2, B3 (PP), B4, B5, B6, B9", nameImage: #imageLiteral(resourceName: "tofu"), calor: "76 ккал.")
        
        let prodThree=ProductModel(nameProduct: "Фасоль", info: "Как и другие пищевые бобовые, фасоль содержит большое количество незаменимых аминокислот, включая лизин, которого не хватает в большинстве злаков. Кроме того, в фасолевых семенах самое высокое содержание витаминов и минералов по сравнению с другими бобовыми. В плодах растения вообще обнаружены многочисленные биоактивные соединения – галактоолигосахариды, ингибиторы протеаз, лектины, фитаты, оксалаты и богатые фенолами вещества, которые играют важную метаболическую роль у людей и животных. Масса фенольных соединений составляет около 10-11% от общей массы семян. При этом по своей химической структуре они представляют собой очень разнообразную группу. Кроме того они, как правило, различаются в зависимости от цвета кожуры семян и сорта фасоли.", vitamin: "В1, В2, В6, Е, РР, цинк, медь, калий, йод, железо, сера, магний", nameImage: #imageLiteral(resourceName: "beans"), calor: "310 ккал.")
        
        let prodFour=ProductModel(nameProduct: "Веганский сыр", info: "В основе состава веганских сыров различные жирные масла (чаще всего кокосовое, так как оно лучше всего передает текстуру), растительный белок (для уплотнения консистенции и придания питательности), крахмал и экстракт водорослей ( для сгущения массы), различные смеси специя для придания необходимого вкуса и аромата, иногда используются лимонная кислота для добавления кислинки и деактивированные дрожжи, которые имеют приятный сырный привкус.", vitamin: "Бета-каротин, А, В9, D", nameImage: #imageLiteral(resourceName: "cheeseVegan"), calor: "300 ккал.")
        
        let prodFive=ProductModel(nameProduct: "Веганские сосиски", info: "Благодаря своему составу, сосиски сочетают в себе пользу пшеничного и соевого белка, богаты аминокислотами, клетчаткой, витаминами и макроэлементам, которые важны для ежедневной полноценной работы нашего организма.", vitamin: "В, РР, С, Н, Е, цинк, селен, фтор, марганец, йод", nameImage: #imageLiteral(resourceName: "soySausages"), calor: "200 ккал.")
        
        let prodSix=ProductModel(nameProduct: "Веганская колбаса", info: "Основными белковыми ингредиентами для производства вегетарианских колбас, сосисок, шпикачек, сарделек, ветчины и т.д. являются концентраты растительных белков (соевый, пшеничный, гороховый), а также эти же белки в изолированном и текстурированном виде. Из других компонентов – натуральные растительные масла, различные крахмалы, экстракты морских водорослей, иногда сыры и сухое молоко, свежие овощи, крупы, оливки, грибы, специи, пряности, натуральные красители (ферментированный рис, свекла) и т.д. Ассортимент огромен, и производители постоянно его расширяют. Любовь к колбасным изделиям свойственна абсолютно всем потребителям, и вегетарианцы не являются исключением. Особенно непросто отказаться от традиционных мясных колбас начинающему вегетарианцу, хотя и веганы со стажем любят пожарить колбаски на гриле или перекусить веганским хотдогом. Колбасы неизменно занимают первые места в рэйтинге вегетарианских продуктов повседневного спроса, именно поэтому производители уделяют им особое внимание. В отличие от мясных, вегетарианские колбасы не содержат нитрит натрия (фиксатор окраски, добавляется во все колбасы для сохранения розового цвета мяса), и соответственно, в них нет канцерогенных нитрозаминов. Уже одно это обстоятельство делает выбор любого потребителя среди колбасных изделий в пользу вегетарианских чрезвычайно грамотным.", vitamin: "РР, А, Н, К, Е, В, бета-каротин", nameImage: #imageLiteral(resourceName: "sausageVegan"), calor: "400 ккал.")
        
        let prodSeven=ProductModel(nameProduct: "Соевое мясо", info: "Благодаря своему составу соевое мясо рассматривается как средство профилактики сердечно-сосудистых заболеваний, диабета, ожирения, холецистита, артрита и артроза. Но это вовсе не означает, что нужно потреблять текстурат в безграничном количестве. Соевый белок выводит холестерин, а сами соевые продукты практически не содержат этого вредного компонента. ", vitamin: "B1, B2, B6, E, D, магний, натрий, железо, калий", nameImage: #imageLiteral(resourceName: "soyaMeet"), calor: "298 ккал.")
        
        let prodEight=ProductModel(nameProduct: "Злаки", info: "Злаки или мятликовые — семейство однодольных растений, к которому относятся такие известные и давно используемые в хозяйстве растения, как пшеница, рожь, овёс, рис, кукуруза, ячмень, просо, сахарный тростник. Зерно злаков состоит из трёх основных частей: зародыша, или семени, который содержит белок и немного растительного масла; эндосперма, содержащего углеводы и белок; и отрубей или внешнего слоя с высоким содержанием клетчатки.", vitamin: "А, В, Е, кальций, цинк, железо.", nameImage: #imageLiteral(resourceName: "cereals"), calor: "318 ккал.")
        
        let prodNine=ProductModel(nameProduct: "Нут", info: "Вариантов использования турецкого боба в кулинарии множество, и каждый найдет рецепты по вкусу. Этот горох добавляют  в супы, салаты, плов, а из перемолотых бобов готовят каши и даже десерты. Желающим попробовать нут впервые, мы дадим совет: обязательно замочите его в холодной воде на несколько часов перед приготовлением. Бобы твердые и размокают гораздо медленнее, чем горох и фасоль. И хотя готовить нут более трудоемко, результат оправдает ваши ожидания. На Востоке нут называют золотым зерном, и считают, что постоянно добавляя его в пищу, можно исцелиться от болезней. Врачи и диетологи рекомендуют разнообразить меню турецким горохом, отдавая дань его лечебным свойствам.", vitamin: " А, В, Е, С, бета-каротин, калий, цинк, селен, кальций, натрий, магний, фосфор, железо;", nameImage: #imageLiteral(resourceName: "nut"), calor: "330 ккал.")
        
        let prodTen=ProductModel(nameProduct: "Зеленый горох", info: "Включение в рацион гороха, полезные свойства которого способны благотворно влиять на работоспособность многих систем и внутренних органов, становится серьезным подспорьем в обеспечении организма энергии и борьбе с различными заболеваниями. Даже небольшое количество гороха в меню благоприятно сказывается на работе сердца и сосудистой системы, помогает нормализовать давление у гипертоников и снизить риск развития инфаркта. Кроме этого, блюда из нежного зеленого горошка – это прекрасное профилактическое средство, поддерживающее работоспособность печени, помогающее преодолеть анемию и некоторые проблемы с сердцем. Полезные свойства зеленого гороха народной медициной используются при сахарном диабете и туберкулезе, заболеваниях нервной и иммунной системы, а также при опасности развития ожирения. ", vitamin: "A, бета-каротин, E, K, C, B1, B2, B3 (PP), B4, B5, B6, B9.", nameImage: #imageLiteral(resourceName: "peas"), calor: "200 ккал.")
        
        let prodEleven=ProductModel(nameProduct: "Арахисовая паста", info: "Арахисовая паста благотворно влияет на организм, снижая риски возникновения опасных заболеваний. При регулярном потреблении продукта уменьшается возможность появления сердечно-сосудистых заболеваний и сахарного диабета второго типа, снижается уровень холестерина, улучшается иммунитет и работа желудочно-кишечного тракта. Польза арахисовой пасты неоспорима для веганов, продукт помогает организму восполнять запасы белка. ", vitamin: "А, В, Е, РР, магний, цинк, железо, фосфор, марганец, селен.", nameImage: #imageLiteral(resourceName: "nutButter"), calor: "567 ккал.")
        
        let prodTwelve=ProductModel(nameProduct: "Сейтан", info: "Сейтан — это продукт, который изготовляется из пшеничного белка, еще его называют веганским мясом. Сейтан очень богат белком, благодаря этому его текстуре и вкусу его еще называют веганским мясом. 100 гр.  сейтана содержит от 3 до 6 гр.  углеводов, 25 гр.  белка и 1 грамм жира.", vitamin: "Е, В5, В6, В9, калий, кальций, магний, цинк, селен, медь, железо, фосфор", nameImage: #imageLiteral(resourceName: "seitan"), calor: "350 ккал.")
        
        let prodThirteen=ProductModel(nameProduct: "Веганская икра", info: "Икра изготавливается на основе водорослей и не содержит в своем составе животных компонентов.", vitamin: "E, H, PP, B9, B12", nameImage: #imageLiteral(resourceName: "veganCaviar"), calor: "30 ккал.")
        
        let prodFourteen=ProductModel(nameProduct: "Хумус", info: "Хумус- это продукт изготовленный из нута. Хумус питателен и содержит растительный белок. Данный продукт помогает бороться с воспалением. Способствует здоровью пищеварительной системы. Может помочь контролировать уровень сахара в крови. Хумус может помочь снизить риск сердечных заболеваний.", vitamin: "В1, В2, В5, В6, В9, РР, С, Е, К", nameImage: #imageLiteral(resourceName: "humus"), calor: "179 ккал.")
        
        let prodFiveteen=ProductModel(nameProduct: "Спаржа по-корейски", info: "Спаржа по-корейски представляет собой соевый продукт, который получают из соевого молока, снимая и высушивая образующиеся на поверхности пленки. В сушеном виде это желтоватые сморщенные брусочки характерной формы. Содержит большое количество белка.", vitamin: "B5, B6, B9, B12", nameImage: #imageLiteral(resourceName: "asparagus"), calor: "123 ккал.")
        
        let prodSixteen=ProductModel(nameProduct: "Овощи", info: "Основа веганского рациона. Сырые овощи обязательно должны входить в меню,  можно есть их большими порция, ведь они низкокалорийные. Наполнены большим количеством клетчатки, важными минералами, витаминами, антиоксидантами и фитонутриентами. Если нелегко есть много свежих овощей, вы можете выжимать из них скои, чтобы наполнить тело питательными веществами и ферментами.", vitamin: "A, B1, B2, B6, E, С, калий, кальций, магний, железо, цинк ", nameImage: #imageLiteral(resourceName: "veg"), calor: "60-178")
        
        let prodSeventeen=ProductModel(nameProduct: "Ягоды", info: "Ягодные культуры содержат пектины, которые производят синтез нужных для организма веществ, возвращают в норму холестерин, защищают от негативного воздействия радиации, улучшают обмен веществ.", vitamin: "A, С, B1, B12, PP, медь, железо, калий, клетчатка.", nameImage: #imageLiteral(resourceName: "berries"), calor: "9-80 ккал.")
        
        let prodEighteen=ProductModel(nameProduct: "Фрукты", info: "Рекомендуется съедать 400-500г фруктов каждый день- это примерно 5 плодов. Фрукты содержат много витаминов и минералов, они богаты углеводами и клетчаткой. Чтобы получить дневную норму витамина C, достаточно яблока, апельсина и немного клубники. Необязательно есть фрукты без всяких изысков, можно готовить фруктовые салаты, свежие соки и такие десерты, как джем, варенье, рахат-лукум, цукаты.", vitamin: "A, B1, B2, C, E, PP", nameImage: #imageLiteral(resourceName: "fruits"), calor: "5-160 ккал.")
        
        let prodNineteen=ProductModel(nameProduct: "Шампиньоны", info: "Основную часть шампиньонов занимает вода. Остальное – питательный белок, кислоты, витамины и минералы. Особенно много в этих грибах фосфора – не меньше, чем в рыбе. Также шампиньоны богаты витаминами. Эти грибы считаются прекрасной диетической пищей. Несмотря на небольшую калорийность, они достаточно питательны за счет высокой концентрации белков и витаминов. Шампиньоны содержат большое количество хитина (трудноперевариваемая клетчатка), в связи с чем органам пищеварения на всегда удаётся справиться со своей работой. При переедании могут возникать неприятные ощущения.", vitamin: "E, В1, В2, В6, В12, D6, D12", nameImage: #imageLiteral(resourceName: "champignon-1"), calor: "27 ккал.")
        
        let prodTwenty=ProductModel(nameProduct: "Шиитаке", info: "Шиитаке или лентинула съедобная – это разновидность древесных грибов. В природных условиях они растут на стволах и ветвях деревьев. Когда же человечеству открылись лечебные свойства грибов, их стали выращивать искусственно.Императорские грибы не только насыщают организм, но и оказывают на него благотворное и лечебное действие. Как и любые другие грибы, шиитаке очень тяжелы для желудка и трудно перевариваются. Поэтому детям до 14 лет их давать не стоит, как и беременным и кормящим. Кроме того, нельзя употреблять грибы при наличии аллергии. А также бронхиальной астмы, поскольку они могут спровоцировать приступ.", vitamin: "В2, В6, В12, С, D", nameImage: #imageLiteral(resourceName: "shiitake"), calor: "34 ккал.")
        
        let prodTwentyOne=ProductModel(nameProduct: "Лисички", info: "В лисичках содержится очень большое количество витаминов и таких микроэлементов. Помимо этого, некоторые вещества, содержащиеся в грибах, увлажняют глаза, улучшая тем самым состояние слизистых оболочек, повышая устойчивость к инфекционным заболеваниям. Лисички обладают удивительной способностью не накапливать в себе радиоактивные вещества, а наоборот, способны выводить разные радионуклиды из человеческого организма. Кроме того, благодаря низкой калорийности, эти грибы можно включать в различные диеты, они способствуют похудению, а белок, содержащийся в них, очень ценен для веганов. Лисички противопоказаны: детям до 3-х лет; беременным и кормящим грудью женщинам; людям склонным к аллергическим реакциям; с заболеваниями почек и печени; при панкреатите, гастрите и колите.", vitamin: "D2, B1, PP, A, медь, цинк", nameImage: #imageLiteral(resourceName: "chanterelles"), calor: "19 ккал.")
        
        let prodTwentyTwo=ProductModel(nameProduct: "Водоросли", info: "Водоросли — чрезвычайно ценный и полезный пищевой продукт с диетической точки зрения. Эта обогащённая белками, углеводами и минералами еда, содержит большое количество клетчатки, микро- и макроэлементов. В частности, можно отметить полезные свойства бурых водорослей. Этот тип содержит большое количество йода, что делает их отличным средством профилактики йододефицита.", vitamin: "С, D, E, F, B, кальций, калий, железо, марганец, йод, селен, фосфор, медь", nameImage: #imageLiteral(resourceName: "seaweed"), calor: "15-50 ккал.")
        
        let prodTwentyThree=ProductModel(nameProduct: "Арахис", info: "Арахис — это не орех, а бобовая трава. С точки зрения ботаники ему ближе не миндаль или кешью, а сои. Плоды растения выкапывают из земли. Подходит для питания при сахарном диабете, а также хороший источник белка.", vitamin: "А, В, D, Е, РР.", nameImage: #imageLiteral(resourceName: "peanut"), calor: "624 ккал.")
        
        let prodTwentyFour=ProductModel(nameProduct: "Орехи", info: "Все орехи — прекрасный источник полезных ненасыщенных жиров, клетчатки, витаминов и минералов. Умеренное  употребление орехов позволит сохранить здоровье, сделает кожу сияющей, и придаст блек волосам. Орехи считаются прекрасным средством для профилактики онкологических заболеваний, стимулируют работу мозга. Орехи подходят для любого типа питания — от веганства до кетодиеты, их можно добавлять в самые разные блюда или есть отдельно в качестве питательного перекуса.", vitamin: "A, B, C, D, E", nameImage: #imageLiteral(resourceName: "vegNuts"), calor: "160-680 ккал.")
        
        let prodTwentyFive=ProductModel(nameProduct: "Соевый йогурт", info: "Йогурт соевый — аналог обычного йогурта, приготовленный на основе соевого молока. Он содержит меньше жира, чем йогурт, приготовленный на основе продуктов животного происхождения. Основная ценность соевого йогурта заключается в уменьшенном, в сравнении с обычным, содержании жиров – если в простом йогурте жирность доходит до 3,5%, то в соевом этот показатель составляет 2,7%. Жиры, входящие в его состав, имеют растительное происхождение, то есть этот продукт пригоден для употребления в веганской кухне. В плане концентрации витаминов и прочих полезных веществ соевый йогурт схож с обычным.", vitamin: "B12, D", nameImage: #imageLiteral(resourceName: "soyYogurts"), calor: "280 ккал.")
        
        let prodTwentySix=ProductModel(nameProduct: "Кокосовое молоко", info: "Полезные свойства кокосового молока многогранны, обусловлены уникальным соотношением питательных веществ. Стакан молока восполняет суточную дозу организма в полиненасыщенных жирных кислотах (Омега-6, Омега-9). Мягко воздействует на желудочно-кишечный тракт, улучшает пищеварение, предупреждает развитие гнилостных, бродильных процессов в кишечнике, нормализует микрофлору.", vitamin: "B, C, A, PP, калий, магний, марганец, фосфор, цинк, натрий, селен, железо", nameImage: #imageLiteral(resourceName: "cocountMilk"), calor: "30 ккал.")
        
        let prodTwentySeven=ProductModel(nameProduct: "Миндальное молоко", info: "Польза миндального молока в первую очередь заключается в том, что в нем нет лактозы, которая у многих вызывает аллергию и холестерина, вредную для здоровья в целом. Богат напиток кальцием, который необходим для укрепления костей, а также он улучшает состояние зубов, ногтей и волос. Есть в миндальном молоке и фосфор, принимающий участие в регенерации костной ткани, а также магний – минерал, который необходим для нормальной работы сердечной мышцы. Входит в состав этого напитка также марганец, цинк, медь и другие полезные вещества, которые благоприятно сказываются на деятельности всего организма.При регулярном употреблении миндальное молоко помогает справиться с лишними килограммами. Происходит это в первую очередь благодаря низкой калорийности в сравнении с вариантами животного происхождения. Положительно сказывается напиток на деятельности сердечнососудистой системы. В миндальном молоке мало натрия, но зато есть достаточного много жирных кислот омега, которые нормализуют кровяное давление и снижают риск развития сердечных заболеваний. В состав этого напитка также входит витамин D, который противостоит возникновению остеопороза в преклонном возрасте и рахита у детей.", vitamin: "А, Е, С, D, B, железо, кальций, калий, магний, фосфор, цинк, натрий", nameImage: #imageLiteral(resourceName: "mindalMilk"), calor: "28 ккал.")
        
        let prodTwentyEight=ProductModel(nameProduct: "Соевое молоко", info: "Регулярный прием способствует насыщению организма белком, который по своему качеству не уступает белку животного происхождения. Также в клетки и ткани попадают аминокислоты, незаменимые для их нормального функционирования. Они принимают активное участие в метаболических процессах, поддержания активности головного мозга, укреплении иммунитета. Многие из них нужны для синтеза разных ферментов.", vitamin: "Витамины А, Е, РР, В, калий, кальций, магний, натрий, фосфор, железо, марганец, медь.", nameImage: #imageLiteral(resourceName: "soyMilk"), calor: "38 ккал.")
        
        // Все обьекты добавляются в массив
        allProduct=[prodOne,prodTwo,prodThree,prodFour,prodFive,prodSix,prodSeven,prodEight,prodNine,prodTen,prodEleven,prodTwelve,prodThirteen,prodFourteen,prodFiveteen,prodSixteen,prodSeventeen,prodEighteen,prodNineteen,prodTwenty,prodTwentyOne,prodTwentyTwo,prodTwentyThree,prodTwentyFour,prodTwentyFive,prodTwentySix,prodTwentySeven,prodTwentyEight]

    }
    // Производится инициализация
    init (){
        addProduct()
    }
}