 class KnightPathFinder 
  
    def initialize(pos)
        @pos = pos
    end

    

    def valid_pos?(pos)
        x, y = pos
        return x <= 7 && y <= 7
        return x >= 0 && y >= 0
        true  
    end

    [2, -2] [1, -1] 
end