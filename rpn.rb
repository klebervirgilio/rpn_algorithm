class Rpn
  attr_accessor :expr

  def initialize(expr)
    @expr=expr
  end

  def process!
    rpn(@expr.split(/\s/))
  end

  private
    def rpn(tokens)
      token = tokens.pop
      if token=~/^[-+*\/]$/
        y,x = rpn(tokens),rpn(tokens)
        x.send(token,y)
      else
        Float(token)
      end
    end
end