module Fibb
    class RecurrenceRelation
        def calculate(n, k)
            @map = {1=>1, 2=>1}
            @k = k
            return recursive_step(n)
        end
        def recursive_step(n)
            return 1 if n == 1 || n == 2

            f_minus_one = @map.key?(n-1) ? @map[n-1] : recursive_step(n-1)
            f_minus_two = @map.key?(n-2) ? @map[n-2] : recursive_step(n-2)

            @map[n] = f_minus_one + f_minus_two*@k
            return @map[n]
        end
    end
    
    def self.at_n(n, k)
        rec_relation = RecurrenceRelation.new()
        return rec_relation.calculate(n, k)
    end
end
