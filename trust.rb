# coding: UTF-8
class Hypnotic

  BODYS = {
    :head_top => "頭のてっぺん",
    :head => "頭",
    :neck => "首",
    :shoulders => "両肩",
    :breast => "胸",
    :back => "背中",
    :arms => "両腕",
    :abdomen => "おなか",
    :hands => "両手",
    :waist => "腰",
    :thighs => "ふともも",
    :legs => "足",
    :toes => "つまさき"
  }

  def connect
    self
  end
  alias :from_nose :connect
  alias :from_mouth :connect
  alias :with_feel :connect
  alias :yourself :connect
  alias :on_clouds :connect
  alias :wakeup :connect
  alias :with_power :connect
  alias :wakeup! :connect
  alias :may :connect
  alias :be_warm :connect

  def close_eyes
    message "軽く目をとじま〜す"
    self
  end

  def deep_abdominal_breathing
    message "ふか〜くゆっくりと〜おなかで深呼吸しま〜す"
    yield
    self
  end

  def breathe_in
    message "鼻から大きく息を吸って〜"
    self
  end

  def breathe_out
    message "口からゆっくりと吐いて〜"
    self
  end

  def with_clean_air
    message "綺麗な空気を吸い込むのをイメージします"
    self
  end

  def with_unnecessary_things
    message "息と一緒にいらないものを吐き出します"
    self
  end

  def repeat_breathing
    message "しばらく深呼吸を繰り返します"
    sleep 3
    self
  end

  def body_down
    message "頭も方から順番に体から力が抜けて、気持ちよい暖かさが感じられます"
    bodys.each do |b|
      yield b
    end
  end

  def body_up
    message "足の方から徐々に力がわき上がってきます"
    bodys.reverse.each do |b|
      yield b
    end
  end

  def tension_down(b)
    message name(b)
    self
  end

  def feel_floating
    message "体全体がリラックスして、ふわふわした感じがします"
    message "まるで雲の上に浮いているように感じます"
    self
  end

  def keep_relax
    message "心ゆくまでふわふわ感を楽しんでください"
    loop do
      yield
    end
  end

  def satisfied?
    message "ふわふわ"
    @huwa ||= 0
    @huwa += 1
    @huwa >= (3..5).to_a.sample ? true : false
  end

  def announce
    message "今から5つ数えると、だんだん力が戻ってきて、すっきりと目が覚めます"
    self
  end

  def countup(r)
    @counter = Fiber.new do
      r.each do |c|
        message "#{c}!!"
        Fiber.yield
      end
    end

    self
  end

  def tension_up(b)
    @upcount ||= 0
    case @upcount
    when 0, 4, 8, 11
      @counter.resume
    end
    message name(b)
    @upcount += 1

    self
  end

  def with_count(c)
    message "#{c}!!!!!!"
    self
  end

  def open_eyes
    message "はい、目を開けましょう"
    self
  end

  def stretches
    message "ゆっくりと体を伸ばしてから立ち上がってください"
    self
  end

  def be_refreshed
    message "すっきりしましたか？"
    self
  end

  private

  def bodys
    BODYS.keys
  end

  def name(b)
    BODYS[b]
  end

  def message(mes)
    puts mes
    puts
    sleep 2
  end

end

YOU = Hypnotic.new

