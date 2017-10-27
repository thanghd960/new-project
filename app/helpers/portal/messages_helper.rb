module Portal::MessagesHelper
    def message_weight message
        message.status == false ? 'font-weight:bold' : 'font-weight:normal'
    end
    def build_read_status_link message
        if message.status == true
            link_to 'Đánh dấu chưa đọc', portal_message_path(message, status: false), method: :put
          
        else
            link_to 'Đánh dấu đã đọc', portal_message_path(message, status: true), method: :put
        end
    end

end
