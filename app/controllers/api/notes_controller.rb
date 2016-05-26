class Api::NotesController < ApplicationController
  def index
    render json: Note.all
  end

  def show
    render json: Note.find(params[:id])
  end

  def create
    render json: Note.create!(note_params)
  end

  def update
    render json: Note.find(params[:id]).tap {|note| note.update! note_params }
  end

  def destroy
    render json: Note.destroy(params[:id])
  end

  private

  def note_params
    params.extract_json_api.permit(
      :title,
      :body
    )
  end
end
