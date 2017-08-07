class Note < ApplicationRecord
    before_create :todo_false
    enum note_type: [:todo_later, :todo_soon, :idea, :quote, :diary, :goal, :reference, :principle, :research, :event, :note]


    private

    def todo_false #doesn't work!!
        if self.note_type == 'todo_later' || self.note_type == 'todo_soon'
            self.done = false
        end
    end
end