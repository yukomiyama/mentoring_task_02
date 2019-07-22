class Food
    # ここにクラスの定義を書き加えてください
    # attr_accessor
    @@input_food_name = []
    @@input_calorie = []
    
    #クラス変数にfoodデータを格納するためのインスタンス変数
    def input
      puts " 料理名を入力してください"
      @@input_food_name << gets.chomp
      puts "カロリーを入力してください"
      @@input_calorie << gets.to_i
    end
    
    #クラス変数で保持しているfoodデータの集まりを出力するインスタンス変数
    def self.show_all_calory
      #カロリー合計格納用変数
      total_calorie = 0
      
      food_date = Hash[@@input_food_name.zip @@input_calorie]
      food_date.each do |key, value|
        puts "#{key} :#{value}"
      end
      
      @@input_calorie.each {|calorie| total_calorie += calorie}
      puts "カロリー合計 :#{total_calorie}"
    end
end

while true do
   puts "[0]:カロリーを入力する"
   puts "[1]:カロリーの合計を見る"
   input = gets.to_i
   
   if input == 0
    food = Food.new
    food.input        # カロリーの入力
   elsif input == 1
     Food.show_all_calory # カロリーの合計を表示
     exit
   end
end