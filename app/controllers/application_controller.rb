class ApplicationController < ActionController::Base
	
	helper_method :sort_column, :sort_direction

	def notArchivedNotes
		@notes = Note.where(:is_archived => false).all.order(sort_column + " " + sort_direction).paginate(:per_page => 5, :page => params[:page])
	end

	def archivedNotes
		@notes = Note.where(:is_archived => true).all.order(sort_column + " " + sort_direction).paginate(:per_page => 5, :page => params[:page])
	end

	private

	def sort_column
      Note.column_names.include?(params[:sort]) ? params[:sort] : "title"
    end
    
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end
