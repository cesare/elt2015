# language: ja

フィーチャ:
  参加者として、投票したい。
  なぜなら、自分の評価を作り手に届けたいからだ。

  @wip
  シナリオ: 同じ出品物に2回投票しようとするとエラーになる
    前提 "sherlock" としてサインインしている
    かつ ユーザ "irene" がいる
    かつ "irene" が作った料理 "肉じゃが" がある

    もし 投票ページを表示する
    かつ "食べ物" タブを表示する
    かつ "肉じゃが" にチェックを入れる
    かつ 投票するボタンを押す

    かつ 投票ページを表示する
    かつ "食べ物" タブを表示する
    かつ "肉じゃが" にチェックを入れる
    かつ 投票するボタンを押す

    ならば "Exhibitはすでに存在します" というメッセージが表示されていること
