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
        column :title
        column :content
        column :tag_list
        column :status
        column "Posted", :created_at
        column "Updated", :updated_at
        default_actions
    end

    # form
    form do |f|
        f.inputs "Post" do
            f.input :title
            f.input :content
            f.input :tag_list
            f.input :status
        end
        f.buttons
    end
end
