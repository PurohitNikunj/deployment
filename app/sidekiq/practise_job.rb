class PractiseJob
  include Sidekiq::Job

  def perform(product)
    puts "======"
    puts "product deleted successfully"
    puts "======"
  end
end
