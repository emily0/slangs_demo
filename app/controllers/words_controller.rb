class WordsController < ApplicationController

  def index
    @words = Word.all.order('created_at DESC')
  end

  def new
    @word = Word.new
  end

  def edit
    @word = Word.find(params[:id])

  end

  def create
    @word = Word.new(word_params)

    @word.save
    redirect_to @word
  end

  def update
    @word = Word.find(params[:id])
    @word.update(word_params)
    redirect_to word_path(@word)
  end

  def show
    @word = Word.find(params[:id])
  end

  def destroy
    @word = Word.find(params[:id])
    @word.destroy
    redirect_to root_path
  end

  private
  def word_params
    params.require(:word).permit(:title, :chinese, :pinyin, :meaning, :exampleUsage, type_ids: [])
  end
end
