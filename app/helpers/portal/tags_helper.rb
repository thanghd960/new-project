module Portal::TagsHelper
    def create_deletetable_button tag
        if tag.in_use? 
            link_to '#' do
                
                content_tag(:button, 'Xóa', class: 'disabled')
        end
        else
            link_to portal_tag_path(tag), method: :delete do
                content_tag(:button, 'Xóa')
                # method: :delete, data: {confirm: 'Bạn có chắc muốn xóa bài viết không?'} %>
            end
        end
    end
end
