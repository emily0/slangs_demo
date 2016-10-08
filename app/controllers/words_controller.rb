class WordsController < ApplicationController

  def index
    @words = Word.all
  end

  def new
    @word = Word.new
  end

  def create
    @word = Word.new(word_params)

    @word.save
    redirect_to @word
  end

  def show
    @word = Word.find(params[:id])
  end

  private
  def word_params
    params.require(:word).permit(:title, :chinese, :pinyin, :meaning, :exampleUsage)
  end
end
