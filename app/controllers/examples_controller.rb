class ExamplesController < ApplicationController
  def create
    @word = Word.find(params[:word_id])
    @example = @word.examples.create(example_params)
    redirect_to word_path(@word)
  end

  def destroy
    @word = Word.find(params[:word_id])
    @example = @word.examples.find(params[:id])
    @example.destroy
    redirect_to word_path(@word)
  end

  private
    def example_params
      params.require(:example).permit(:body)
    end
end
