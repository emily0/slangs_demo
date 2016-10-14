class NotesController < ApplicationController
  def create
    @word = Word.find(params[:word_id])
    @note = @word.notes.create(note_params)
    redirect_to word_path(@word)
  end

  def destroy
    @word = Word.find(params[:word_id])
    @note = @word.notes.find(params[:id])
    @note.destroy
    redirect_to word_path(@word)
  end

  private
    def note_params
      params.require(:note).permit(:body)
    end
end
