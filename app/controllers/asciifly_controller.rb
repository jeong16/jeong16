class AsciiflyController < ApplicationController
  def index
  end

  def result
    @font = params[:input_font]
    @name = params[:input_name]
    @tel = params[:input_tel]
    
    a = Artii::Base.new(font: @font)
    @output_name = a.asciify(@name)
    @output_tel = a.asciify(@tel)
    
  end
end
