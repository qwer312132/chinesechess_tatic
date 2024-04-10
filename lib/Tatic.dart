import 'package:flutter/material.dart';
import 'Detail.dart';

var taticsArray = ["中炮", "仙人指路", "先棄後取", "頓挫", "雙車錯", "天地炮"];
var introArray=[
  "中炮局也稱為當頭砲，是指開局的第一步是炮二平五或是炮八平五的開局，其特點是炮在棋盤五路線上，直接威脅對方五路兵和其背後的中營，是攻擊性最強的開局，以下為幾個中炮的布局變化",
  "仙人指路指先手走兵三進一或兵七進一，先開馬前兵，意在等待後手方表露意圖後再作打算，屬緩攻型佈局。因為它彈性大，可佈成各類陣勢，因此很受棋手喜愛。",
  "「先棄後取」是中局階段的基本戰術之一。 是指一方先放棄一子讓對方吃掉，然後再運用謀子戰術取回，並保持局面上的主動權。",
  "頓挫”戰術是指象棋運子過程中，並不“一步到位”，而是以某處為“中轉站”，採取將軍、叫殺、捉等手段逼迫對方子力走位，從而達到預期目的。",
  "雙車錯，也稱長短車、雙車等。象棋中的殺招。在將缺乏其他子力保護的時，使用兩個車上下或左右交錯攻擊。有時，也可以藉助帥（將）力將車緊貼敵將（帥）完成阻殺。",
  "天地炮，象棋中的殺招，有俗語「天地炮響，神兵難擋」之說，該招由中炮（天炮）加上沉底炮（地炮）構成，可以借用對方士象做炮架，再加上其他子力（以車為常見）輔助。可以對對方將（帥）形成絕殺。",
];
List<List<Detail>>tatic = [
  [
    Detail("此為中炮對反宮馬", "images/0_0.png"),
    Detail("此為中炮對屏風馬", "images/0_1.png"),
  ],
  [
    Detail("此為仙人指路對卒底炮", "images/1_0.png"),
    Detail("此為對兵局", "images/1_1.png"),
  ],
  [
    Detail("現在黑方6路車捉馬，能否考慮馬四進三踩卒？ 我們試試：馬四進三，前砲平7，兵三進一，象5進7，車八平三，如果卒5進1，剛好有砲二退一打車的棋，能捉回！ 這樣紅方經過先棄後取後，還多得一象", "images/2_0.png"),
    Detail("紅方馬三進五棄馬踩象，接著馬4退5，馬五進三，黑方此時走後馬進7，則可以車五進三準備炮三進四，紅方奪回失子並占優", "images/2_1.png"),
  ],
  [
    Detail("如圖，輪到紅走，如果紅直接車八退二退車捉馬，黑可以車7平5吃相保馬，紅捉馬毫無成效。 但若紅先車八進二將軍，逼迫黑方將4退1應將，紅再車八退四捉馬，此時紅方叫殺，黑方需要應付叫殺，不能保馬，紅方憑藉 頓挫手段成功得子。", "images/3_0.png"),
    Detail("此時紅方若是炮六平八準備沉底炮，黑方可以先抬車趕走紅方中炮，但紅方先走炮六平七迫使黑方象3進1然後炮七平八，紅方勝定", "images/3_1.png"),
  ],
  [
    Detail("該局面是雙車錯最後的形狀，以車佔住兩條路使將無路可逃。", "images/4_0.png"),
    Detail("實際演練:\n"+
          "1.車二進九  將4進1\n"+
          "2.車八進八  將4進1\n"+
          "3.車二退二  士5進6\n"+
          "4.車二平四  (紅勝)\n", "images/4_1.png"),
  ],
  [
    Detail("該局面為天地炮最後的形狀，利用兩個不同位置的炮使得將士象左右為難", "images/5_0.png"),
    Detail("實際演練:\n"+
    "1.車八平五 車9平5\n"+
    "2.車六進三 車5退1\n"+
    "3.車六平五 將6進1\n"+
    "4.車五平四 (紅勝)\n"
    , "images/5_1.png"),
  ]
];


class Tatic extends StatelessWidget
{
  final String? name;
  const Tatic(String this.name, {super.key});
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text(name!),
        backgroundColor: Colors.blue[100],
      ),
      body:
      SingleChildScrollView(child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(introArray[taticsArray.indexOf(name!)],style: TextStyle(fontSize: 20)),
            // Expanded(
              ListView.builder(
                physics:NeverScrollableScrollPhysics(),
                // physics:NeverScrollablePhysics(),
                shrinkWrap:true,
                padding: const EdgeInsets.all(8),
                itemCount: tatic[taticsArray.indexOf(name!)].length,
                itemBuilder: (BuildContext context, int index) {
                  return tatic[taticsArray.indexOf(name!)][index];
                }
              )
            // )
          ],
        )
      )
    );
  }
}