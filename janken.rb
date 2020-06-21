def janken
  puts "最初はグー、じゃんけん..."
  puts "[0]:グー"
  puts "[1]:チョキ"
  puts "[2]:パー"
  myself_hand = gets.chomp.to_i
  opponent_hand = rand(3)
  puts opponent_hand

  jankens = ["グー", "チョキ", "パー"]
  if myself_hand == 0 || myself_hand == 1 || myself_hand == 2
    puts "あなたの手:#{jankens[myself_hand]}、相手の手:#{jankens[opponent_hand]}"
    victory(myself_hand, opponent_hand)
  else
    puts "入力された値が無効です"
    janken
  end
end

def victory(myself_hand, opponent_hand)
  if myself_hand == opponent_hand
    puts "あいこです"
    janken
  elsif(myself_hand == 0 && opponent_hand == 1)||(myself_hand == 1 && opponent_hand == 2)||(myself_hand == 2 && opponent_hand == 0)
    puts "あなたの勝ちです！！"
  else
    puts "あなたの負けです"
  end
end

janken