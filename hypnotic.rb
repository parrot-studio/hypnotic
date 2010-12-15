# coding: UTF-8
$:.unshift File.dirname(__FILE__)

# -----------------------------------------------

require 'trust' # 「信じる心が必要」

YOU.close_eyes # 目を閉じる

# 深く腹式呼吸を続ける
YOU.deep_abdominal_breathing do

  # 鼻から息を吸う
  YOU.breathe_in.from_nose
  # 口から息を吐く
  YOU.breathe_out.from_mouth

  # 鼻から綺麗な空気を吸い込むイメージ
  YOU.breathe_in.from_nose.with_clean_air
  # 口からいらないものを吐き出す感じ
  YOU.breathe_out.from_mouth.with_unnecessary_things

  # 呼吸を続ける
  YOU.repeat_breathing

  # 頭から順に下に向かって意識する
  YOU.body_down do |b|
    # 意識したポイントの力を抜くと暖かく感じる
    YOU.tension_down(b).with_feel.may.be_warm
  end

  # 雲の上に浮いているような感覚をイメージ
  YOU.feel_floating.yourself.on_clouds

  # 満足するまでふわふわ感を楽しむ
  YOU.keep_relax do
    break if YOU.satisfied?
  end

  # 「今から5つ数えたら起きる」と自分の宣言
  YOU.announce.yourself.wakeup

  # 数を数えていく
  YOU.countup(1..4)

  # 足先から順に上に向かって意識
  YOU.body_up do |b|
    # 意識したポイントに力が戻ってくる
    YOU.tension_up(b).with_power
  end

end

# 5のカウントで目覚める
YOU.wakeup!.with_count(5)

# 目を開ける
YOU.open_eyes

# ぐーっと伸びをする
YOU.stretches.yourself

# きっとリフレッシュしている・・・はず
YOU.may.be_refreshed

