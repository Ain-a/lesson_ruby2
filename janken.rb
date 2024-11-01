puts "じゃんけん..."

def janken
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    index = gets.to_i
    jankens = ["グー","チョキ","パー"]

    # あなた　戦わない場合
    if index == 3
        puts "また今度!"
        return
    elsif index > 3
        puts "0~3の数字を選んでください"
        janken 
    end

    puts "ホイ！"
    puts "-------------------------"

    # あなた　0~2の場合　それ以外 
    puts "あなた:#{jankens[index]}を出しました"

    # 相手　ランダムじゃんけん
    rand_num = rand(3)
    puts "相手:#{jankens[rand_num]}を出しました"
    
    puts "-------------------------"


    # パターン分け プレイヤー視点での勝ち負け判定
    case_pattern = ""

    if index == 0 && rand_num == 0 || index == 1 && rand_num == 1 || index == 2 && rand_num == 2
        case_pattern = "draw"
    elsif index == 0 && rand_num == 1 || index == 1 && rand_num == 2 || index == 2 && rand_num == 0
        case_pattern = "win"
    elsif index == 0 && rand_num == 2 || index == 1 && rand_num == 0 || index == 2 && rand_num == 1
        case_pattern = "lose"
    end

    houkou = ["上","右","下","左"]
    rand2_num = rand(4)
    case case_pattern

    #パターン分け
    when "draw"
        puts "あいこで..."
        janken #あいこ時繰り返し

    when "win"
        puts "あっち向いて〜(指のさす方向を選んでください)"
        puts "0(上)1(右)2(下)3(左)"
        win_num = gets.to_i
        puts "ホイ！"

        puts "-------------------------"
        puts "あなた:#{houkou[win_num]}を指しました"
        puts "相手:#{houkou[rand2_num]}を向きました"
        puts "-------------------------"

        if houkou[win_num] == houkou[rand2_num]
            puts "あなたの勝ちです!"
        else
            puts "じゃんけん..."
            janken #決着がつくまで繰り返し
        end

        
    when "lose"
        puts "あっち向いて〜(顔を向ける方向を選んでください)"
        puts "0(上)1(右)2(下)3(左)"
        lose_num = gets.to_i
        puts "ホイ！"

        puts "-------------------------"
        puts "あなた:#{houkou[lose_num]}を向きました"
        puts "相手:#{houkou[rand2_num]}を指しました"
        puts "-------------------------"

        if houkou[lose_num] == houkou[rand2_num]
            puts "あなたの負けです..."
        else
            puts "じゃんけん..."
            janken #決着がつくまで繰り返し
        end
    end
end #def

janken
