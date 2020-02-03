    puts "じゃんけん！！"
    
def janken
    
    puts "[0]stone\n[1]scissors\n[2]paper"
    player_hand = gets.to_i
    program_hand = rand(3)
    jankens = ["stone","scissors","paper"]
    puts "あなたの手:#{jankens[player_hand]},プログラム:#{jankens[program_hand]}"


    if player_hand == program_hand
        puts "あいこ"
        return true
    elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
        puts "あなたの勝利"
        return false
    else
        puts "game over"
        return false
    end
end



next_game = true

while next_game
    next_game = janken
end