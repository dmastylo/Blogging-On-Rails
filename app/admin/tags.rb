ActiveAdmin.register ActsAsTaggableOn::Tag, :as => "Tag" do
    # column list
    index do
        selectable_column
        column :name
        default_actions
    end
end