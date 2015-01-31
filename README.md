processing_sample
=================

Processing training , sample , test projects.

appletへの出力は、2.0で廃止されたようだ(外部のライブラリではまだある)。
safari, macosxでのjavaの挙動もちょっと不思議なので、javascriptモードでしばらく進めることにする。

javascriptモードをインストール。modeを変更するだけで、とりあえずはソースの変更は出来るようだ。
exportは、web-export となり、同名のディレクトリが出来る。基本的に、これをサイトにセットするだけで良いようだ。

* [processing2でjavascript-modeをインストール](http://blog.livedoor.jp/reona396/archives/54513474.html)
* [2.0でなにが変わる](http://labs.uechoco.com/blog/2012/12/processing2-0で何が変わる？.html)

boids
----

* [processing2 / Flocks](http://processing.org/examples/flocking.html)
* [boidsのテスト](http://null-null.net/blog/2007/11/570.php)

langton's ant
----

* [langton's ant wiki](http://en.m.wikipedia.org/wiki/Langton's_ant)

processing.js では、delay()はサポートしていない。

バラ曲線
----

* [バラ曲線](http://blog.livedoor.jp/reona396/archives/54660457.html)

java appletがインストールされないという問題がまた発生。


SPORE
----

pore 1 by Mike Davis. 

A short program for alife experiments. Click in the window to restart. Each cell is represented by a pixel on the display as well as an entry in the array 'cells'. Each cell has a run() method, which performs actions based on the cell's surroundings. Cells run one at a time (to avoid conflicts like wanting to move to the same space) and in random order.

### PORE 作者 Mike Davis

A-Life(人工生命)の実験のための短いプログラム。クリックするとウインドウが再起動します。
各セルは、画面のピクセルで表現され、セル配列に格納されてます。
各セルは、run()メソッドを持ち、セルの周囲の状況に基づき行動します。
セル配列は、１シミュレーション時間に、一回活動します。それは、同じ空間に移動したがるような障害を避けるためです。また、無作為に命令されます。

The nature of code
==================

book Nature of Code のお勉強


