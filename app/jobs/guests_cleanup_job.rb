class GuestsCleanupJob < ApplicationJob
  queue_as :default

  def perform(product, c)
    return if product.updated_at > product.created_at && c == 0
    puts "=========="
    puts product.title
    puts "=========="
  end
end
