module ApplicationHelper
    def status_converter(status, truthy: 'Kích hoạt', falsey: 'Chưa kích hoạt')
        if status 
            # status == true => truthy 
            truthy
        else
            falsey
        end
    end
    def time_ago time
        "#{time_ago_in_words(time)} ago"
    end
end
