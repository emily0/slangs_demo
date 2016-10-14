class SynonymsController < ApplicationController
  def create
    @word = Word.find(params[:word_id])
    @synonym = @word.synonyms.create(synonym_params)
    redirect_to word_path(@word)
  end

  def destroy
    @word = Word.find(params[:word_id])
    @synonym = @word.synonyms.find(params[:id])
    @synonym.destroy
    redirect_to word_path(@word)
  end

  private
    def synonym_params
      params.require(:synonym).permit(:body)
    end
end
