class NotesController < ApplicationController
    # skip_before_action :verify_authenticity_token 
    def index
        if params[:note_type] == 'todo_soon' || params[:note_type] == 'todo_later'
            @notes = Note.all.where(note_type: params[:note_type]).order(done: :desc, created_at: :asc)
        elsif params[:note_type]
            @notes = Note.all.where(note_type: params[:note_type]).order(created_at: :asc)
        else
            @notes = Note.all.order(created_at: :asc)
        end
    end

    def new # probs don't need this 
    end

    def create
        @new_note = Note.create(note_params)
    end

    def edit # probs don't need this 
        @note = Note.find(params[:id])
    end

    def update
        @note = Note.find(params[:id])
        @note.update(note_params)
        redirect_to action: :index
    end

    def destroy
        @note = Note.find(params[:id]) #look into adding an alert
        @note.destroy
        redirect_to action: :index
    end

    def note_params
        params.require(:note).permit(:body, :source, :done, :date)# add in columns as symbols
    end


end