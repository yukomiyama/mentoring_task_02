puts "じゃんけん・・・・"
puts "[0]グー[1]チョキ[2]パー"

def jyanken(n)
  player_hand = ["グー", "チョキ", "パー"]
  program_hand = ["グー", "チョキ", "パー"]
  
  #乱数生成
  random_num = rand(3)
  
  if  n == 0 && random_num == 1 || n == 1 && random_num == 2 || n == 2 && random_num == 0
    puts "You Win!"
  elsif n == 0 && random_num == 2 || n == 1 && random_num == 0 || n == 2 && random_num == 1
    puts "You Lose!"
  else
    puts "あいこです"
  end
  
  puts "You: #{player_hand[n]} PROGRAM: #{program_hand[random_num]}"
    
end

input = gets.to_i
jyanken(input)
