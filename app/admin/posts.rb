ActiveAdmin.register Post do
    scope :unpublished

    # filters
    filter :title
    filter :content
    filter :created_at
    filter :updated_at
    filter :taggings_tag_name, :as => :check_boxes, :collection => proc { Post.tag_counts.map{ |tag| tag.name } }

    # column list
    index do
        selectable_column
        column :title
        column :content
        column :tag_list, :hint => 'Comma separated'
        column :status, :hint => 'Draft or Published'
        column "Posted", :created_at
        column "Updated", :updated_at
        default_actions
    end

    # form
    form do |f|
        f.inputs "Details" do
            f.input :title, :input_html => { :size => "80" }
            f.input :tag_list, :input_html => { :size => "80" }
            f.input :status, :input_html => { :size => "20" }
        end
        f.inputs "Post" do
            f.input :content, as: :html_editor
        end
        f.buttons
    end
end
