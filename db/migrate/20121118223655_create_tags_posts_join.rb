class CreateTagsPostsJoin < ActiveRecord::Migration
    def up
        create_table 'posts_tags', :id => false do |t|
            t.column 'post_id', :integer
            t.column 'tag_id', :integer
        end
    end

    def down
        drop_table 'posts_tags'
    end
end
