# ActiveAdmin::Dashboards.build do
#   section "Recent Blog Posts" do
#     table_for Post.order("created_at desc").limit(5) do
#       column :title do |blog_post|
#         link_to blog_post.title, [:admin, blog_post]
#       end
#       column :created_at
#     end
#     strong { link_to "View All Blog Posts", admin_posts_path }
#   end
# end