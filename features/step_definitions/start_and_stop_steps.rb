# language: zh-CN

假如(/^用户启动秒表$/) do
    tap_mark 'Start'
end

当(/^经过(\d+)秒$/) do |second|
    sleep second.to_i + 0.5
end

那么(/^看见显示(\d+)秒$/) do |second|
    check_element_exists("* marked:'#{second}s'")
end