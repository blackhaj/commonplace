class NotesController < ApplicationController
    # skip_before_action :verify_authenticity_token 
    before_action :authenticate_user!

    def index
        @user_notes = Note.all.where(user_id: current_user.id)
        if params[:note_type] == 'todo_soon' || params[:note_type] == 'todo_later'
            @notes = @user_notes.where(note_type: params[:note_type]).order(done: :desc, created_at: :asc)
        elsif params[:note_type]
            @notes = @user_notes.where(note_type: params[:note_type]).order(created_at: :asc)
        else
            @notes = @user_notes.order(created_at: :asc)
        end
    end

    def new # probs don't need this 
        @note = Note.new
        @note_type = params[note_type]
    end

    def create
        @new_note = Note.create(note_params.merge({user_id: current_user.id})) 
    end

    def edit # probs don't need this 
        @note = current_user.notes.find(params[:id])
    end

    def update
        @note = current_user.notes.find(params[:id])
        @note.update(note_params)
        redirect_to action: :index
    end

    def destroy
        @note = current_user.notes.find(params[:id]) #look into adding an alert
        @note.destroy
        redirect_to action: :index
    end

    private

    # def check_user_signed_in
    #     unless user_signed_in?
    #         redirect_to new_user_registration_path
    #     end
    # end

    def note_params
        params.require(:note).permit(:body, :source, :done, :date)# add in columns as symbols
    end

end