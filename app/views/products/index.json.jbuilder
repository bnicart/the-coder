json.array! @products.order(item_code: :asc) do |product|
  json.merge! product.attributes
  json.who_can_benefit product.who_can_benefit.split('.').map(&:squish)
  json.additional_info product.additional_info.split('.').map(&:squish)
end
