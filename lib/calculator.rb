class Calculator
    def add(*args)
        args.sum
    end

    def subtract(*args)
        args.reduce { |sub, number| sub - number }
    end
end