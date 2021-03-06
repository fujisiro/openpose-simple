# openpose-simple

このプログラムは、[OpenPose](https://github.com/CMU-Perceptual-Computing-Lab/openpose) の実行を簡単にするバッチプログラムです。

インストール、起動オプション、出力結果等は上記URLをご確認ください。

## 機能概要

以下プログラムで使用するためのOpenposeデータを出力します。

 - [miu200521358/3d-pose-baseline-vmd](https://github.com/miu200521358/3d-pose-baseline-vmd)
 - [miu200521358/VMD-3d-pose-baseline-multi](https://github.com/miu200521358/VMD-3d-pose-baseline-multi)


## 準備

詳細は、[Qiita](https://qiita.com/miu200521358/items/d826e9d70853728abc51)を参照して下さい。

## 実行方法

### 映像の場合

1. `Openpose`の実行ディレクトリ(`bin`とかの一個上) に[OpenposeVideo.bat](OpenposeVideo.bat) をコピーする
    - デモ版： `LICENSE`のファイルがある階層。
    - 自力ビルド版：`x64`のディレクトリの下。
1. [OpenposeVideo.bat](OpenposeVideo.bat) を実行する
1. `解析対象映像ファイルパス` が聞かれるので、動画のファイルフルパスを入力する
1. `映像に映っている最大人数` が聞かれるので、映像から読み取りたい最大人数を1始まりで指定する
	- 未指定の場合、デフォルトで1が設定される(１人分の解析)
1. 処理開始
1. 処理が終了すると、以下に結果が出力される。
    - `解析対象映像ファイルパス/{実行日時}/{解析対象映像ファイル名}_json` ディレクトリ
        - → json形式のkeypointsデータ
    - `解析対象映像ファイルパス/{実行日時}/{解析対象映像ファイル名}_openpose.avi`
        - → 元映像にOpenposeの解析結果を上乗せしたaviデータ

### 画像の場合

1. `Openpose`の実行ディレクトリ(`bin`とかの一個上) に[OpenposeImage.bat](OpenposeImage.bat) をコピーする
    - デモ版： `LICENSE`のファイルがある階層。
    - 自力ビルド版：`x64`のディレクトリの下。
1. [OpenposeImage.bat](OpenposeImage.bat) を実行する
1. `解析対象画像ディレクトリパス` が聞かれるので、画像が置かれているディレクトリのフルパスを入力する
    - ディレクトリ内には複数枚の画像を置ける
1. `映像に映っている最大人数` が聞かれるので、映像から読み取りたい最大人数を1始まりで指定する
	- 未指定の場合、デフォルトで1が設定される(１人分の解析)
1. 処理開始
1. 処理が終了すると、以下に結果が出力される。
    - `解析対象画像ディレクトリパス/{実行日時}/{解析対象画像ディレクトリ名}_json` ディレクトリ
        - → json形式のkeypointsデータ
    - `解析対象画像ディレクトリパス/{実行日時}/{解析対象画像ディレクトリ名}_openpose.avi`
        - → 元画像にOpenposeの解析結果を上乗せしたaviデータ

## 注意点

- `JSON出力先ディレクトリパス` に12桁の数字列は使わないで下さい。
    - `short02_000000000000_keypoints.json` のように、`{任意ファイル名}_{フレーム番号}_keypoints.json` というファイル名のうち、12桁の数字をフレーム番号として後ほど抽出するため

## ライセンス
GNU GPLv3

以下の行為は自由に行って下さい

- モーションの調整・改変
- ニコニコ動画やTwitter等へのモーション投稿
- このツールを使用したモーションの不特定多数への配布
    - ただし、必ず踊り手様や権利者様に失礼のない形に調整してください

以下の行為は必ず行って下さい。ご協力よろしくお願いいたします。

- クレジットへの記載
    - 記載場所は不問。名前は`miu200521358`でお願いします。
- ニコニコ動画の場合、コンテンツツリーへの動画\([sm33217872](http://www.nicovideo.jp/watch/sm33217872)\)登録
- モーションを配布する場合、以下を同梱してください (記載場所不問)

```
LICENCE

モーショントレース自動化キット
【Openpose】：CMU　…　https://github.com/CMU-Perceptual-Computing-Lab/openpose
【起動バッチ】：miu200521358　…　https://github.com/miu200521358/openpose-simple
【Openpose→3D変換】：una-dinosauria, ArashHosseini, miu200521358　…　https://github.com/miu200521358/3d-pose-baseline-vmd
【3D→VMD変換】： errno-mmd, miu200521358 　…　https://github.com/miu200521358/VMD-3d-pose-baseline-multi
```

以下の行為はご遠慮願います

- 自作発言
- 権利者様のご迷惑になるような行為
- 営利目的の利用
- 他者の誹謗中傷目的の利用（二次元・三次元不問）
- 過度な暴力・猥褻・恋愛・猟奇的・政治的・宗教的表現を含む（R-15相当）作品への利用
- その他、公序良俗に反する作品への利用

## 免責事項

- 自己責任でご利用ください
- ツール使用によって生じたいかなる問題に関して、作者は一切の責任を負いかねます
