class PolyTreeNode

    attr_reader :parent, :children, :value

    def initialize(value)
        @value = value 
        @parent = nil
        @children = []
    end

    def parent=(new_parent)
        return @parent = nil if new_parent == nil
        if @parent == nil 
            @parent = new_parent
            new_parent.children << self
        else
            @parent.children.delete(self)
            @parent = new_parent
            new_parent.children << self
        end    
    end

    def add_child(child)
        child.parent = self
    end

    def remove_child(child)
        if !self.children.include?(child)
            raise "node is not child"
        else
            child.parent = nil
        end
    end

end