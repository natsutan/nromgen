# nromgen(Nagato ROM generator)
数学関数の数値が入ったROM回路を生成します。出力ファイルはVerilog、フォーマットは固定小数点です。入力の範囲や固定小数点数のビット幅を変えて、簡単にVerilogファイルを作成できます。

# License
This software is released under the MIT License, see LICENSE.txt.

# 動作環境
nromgenを動作させるにはGaucheが必要です。formatを使っているので、他のscheme処理系では動きません。生成されたVerilogとテストベンチを動作させるにはVerilogのシミュレータが必要です。サンプルとしてveritakでのプロジェクトファイルを用意しています。

動作確認には以下のバージョンを使用しました。
- Gauche:Gauche scheme shell, version 0.9.4 [utf-8,wthreads], i686-pc-mingw32
- Veritak:3.84D

# 使い方
goshへのパスが通っている状態で、以下のコマンドを実行してください。
```
$ gosh nromgen.scm 設定ファイル
```
サンプルを動かす場合は、srcディレクトリーへ移動し、以下のコマンドを実行してください。
```
$ gosh nromgen.scm ../sample/sinrom.scm
```
outputディレクトリー以下に、RTL、テストベンチ、テンプレートが生成されます。


# 設定ファイルフォーマット
ROMの生成に必要な値を設定してください。

```scheme
; sample file
(define *nr-func* sin)
(define *nr-min* -3.14)
(define *nr-max* 3.14)
(define *nr-adr-width* 9)
(define *nr-W* 24)   ; total word length
(define *nr-I* 8)    ; integer word length

(define *nr-module-name* "sinrom")
(define *nr-rtl-output-dir* "../output/rtl")
(define *nr-testbench-output-dir* "../output/tb")
(define *nr-template-output-dir* "../output/template")

```
それぞれの変数の意味です。

- \*nr-func\* 作りたい関数を指定してします。Gaucheがサポートしている関数であればそのまま指定できます。λ式も使えます。（後述）
- \*nr-min\* データの最小値を指定します。
- \*nr-max\* データの最大値を指定します。
- \*nr-adr-width\* ROMのアドレスのビット幅を指定します。
- \*nr-W\* 出力データ（固定小数点数）のビット幅を指定します。SystemCのsc_fixedのパラメータWと同じです。量子化のアルゴリズムは切り捨てです。（SystemCのSC_TRNと同様）
- \*nr-I\* 出力データ（固定小数点数）の整数部分のビット幅を指定します。SystemCのsc_fixedのパラメータIと同じですが、常に符号ビットを1bit分確保します。オーバーフローが発生した場合は、最大値、最小値で飽和します。
- \*nr-module-name\* Verilogのモジュール名を指定します。。
- \*nr-rtl-output-dir\* RTLファイルの出力先を指定します。
\*nr-testbench-output-dir\* テストベンチの出力先を指定します。
\*nr-template-output-dir\* テンプレートの出力先を指定します。

\*nr-func\*はλ式を使用して、任意の数式を記述できます。引数を1つ取り、実数を返すλ式を記述してください。入力データを二乗するROMを作りたい場合はこのように指定します。

```scheme
(define *nr-func* (lambda (x) (* x x)))
```

# 出力ファイル
出力ファイルは、RTL、テストベンチ、テンプレートの3つです。フォーマットは全てVerilogです。それぞれ設定ファイルで指定したディレクトリに生成されます。

### RTL
ROMのRTL記述です。
[sinrom.v](https://github.com/natsutan/nromgen/blob/master/output/rtl/sinrom.v "sinrom.v")

### テストベンチ
生成したROMをSimするためのテストベンチです。
[sinrom_tb.v](https://github.com/natsutan/nromgen/blob/master/output/tb/sinrom_tb.v "sinrom_tb.v")

### テンプレート
Verilogでインスタンス化するときに使うテンプレートです。
```verilog
	sinrom sinrom (
		.CLK(),
		.RESET_X(),
		.ADR(),
		.DATA()
	);

```

# sim結果
veritakでのSim結果です。
### sin関数

```scheme
(define *nr-func* sin)
```
![sin](https://github.com/natsutan/nromgen/blob/master/img/sin.png)
左端はリセット期間です。

### tanh関数
```scheme
(define *nr-func* tanh)
```
![tanh](https://github.com/natsutan/nromgen/blob/master/img/tanh.png)

### y=x^2
```scheme
(define *nr-func* (lambda (x) (* x x)))
```
![parabora](https://github.com/natsutan/nromgen/blob/master/img/parabo.png)
指定のビット幅でオーバーフローが発生するときは、最大値で飽和します。

# TODO
- 起動時のエラー処理、Usageの表示
- 量子化アルゴリズムのバリエーション追加。少なくも、0方向、無限大方向への丸めは要りそう
- RTLのデータ記述部分に、コメントとして浮動小数点数を解釈した値を追加
- Verilog生成部分は抽象度を2つくらい上げたい


