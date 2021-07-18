require_relative 'example.rb'

describe Example do

    describe '::Valid String' do 

        it '.Return true If String Is Valid' do

            str = "Practice Home Work"
            dict = ["Practice", "Home", "Work"]
            valid_str = Example.valid_string(str, dict)

            expect(valid_str).to  eq(true)

        end

        it '.Return false If String Is InValid' do

            str_two = "Practice makes perfect."
            dict_two = ["practice", "perfect"]
            valid_str_two = Example.valid_string(str_two, dict_two)

            expect(valid_str_two).to  eq(false)

        end

        it '.Return false If String Is InValid And Joint' do

            str_three, str_four = "Practiceperfect.", "perfectPractice"
            dict_three = ["practice", "perfect"]
            valid_str_three = Example.valid_string(str_three, dict_three)
            valid_str_four = Example.valid_string(str_four, dict_three)

            expect(valid_str_three).to  eq(true)
            expect(valid_str_four).to  eq(true)

        end

    end 

end 

    
