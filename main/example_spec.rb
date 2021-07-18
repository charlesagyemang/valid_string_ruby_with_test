require_relative 'example.rb'

describe Example do

    describe '::Valid String' do 

        it '.Return true If String Is Valid' do

            str = "Practice Home Work"
            dict = ["Practice", "Home", "Work"]
            valid_str = Example.valid_string(dict, str)

            expect(valid_str).to  eq(true)

        end

        it '.Return false If String Is InValid' do

            str_two = "Practice makes perfect."
            dict_two = ["practice", "perfect"]
            valid_str_two = Example.valid_string(dict_two, str_two)

            expect(valid_str_two).to  eq(false)

        end

    end 

end 

    