ActiveAdmin.register Author do
	permit_params :first_name, :last_name
	  sidebar 'Books by this Author', :only => :show do
	    table_for Book.joins(:author).where(:author_id => author.id) do |t|
	      t.column("Title") { |book| book.name }
	    end
	  end
end